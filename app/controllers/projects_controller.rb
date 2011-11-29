class ProjectsController < ApplicationController
  before_filter :authorize, :except => [:index, :show]
  respond_to :html, :json, :xml
  
  def index
    @title = 'All Luiz Branco\'s Projects'
    @categories = Category.all
    @projects = Project.all
  end
  
  def show
    @project = Project.find(params[:id])
    @categories = @project.categories
    @roles = @project.roles
    @assets = @project.assets
    @title = @project.title
    @description = @project.resume
  end

  def new
    @categories = Category.all
    @roles = Role.all
    @project = Project.new
    4.times {@project.assets.build}
  end
  
  def create
    @project = Project.new(params[:project])
    if @project.save
      flash[:notice] = 'Project Created!'
      respond_with(@project, :location => project_path(@project))
    else
      show_errors(@project)
      redirect_to new_project_path
    end
  end
  
  def edit
    @roles = Role.all
    @categories = Category.all
    @project = Project.find(params[:id])
    4.times {@project.assets.build}
  end
  
  def update
    @project = Project.find(params[:id])
    @project.update_attributes(params[:project])
    if @project.save
      flash[:notice] = 'Project Updated!'
      respond_with(@project, :location => project_path(@project))
    else
      show_errors(@project)
      redirect_to edit_project_path(@project)
    end
  end
  
  def destroy
    @project = Project.find(params[:id])
    if @project.destroy
      flash[:notice] = 'Project Deleted!'
      redirect_to projects_path
    else
      show_errors(@project)
      redirect_to project_path(@project)
    end
  end
end
