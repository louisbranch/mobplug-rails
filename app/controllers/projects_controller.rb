class ProjectsController < ApplicationController
  before_filter :authorize, :except => [:index, :show]
  before_filter :load_resources, :only => [:new, :create, :edit, :update]

  def index
    @categories = Category.all
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @categories = @project.categories
    @roles = @project.roles
    @assets = @project.assets
  end

  def new
    @project = Project.new
    4.times {@project.assets.build}
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
      redirect_to project_path(@project), :notice => 'A new project was created!'
    else
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
    4.times {@project.assets.build}
  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(params[:project])
      redirect_to project_path(@project), :notice => 'Your project was updated!'
    else
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:id])
    if @project.destroy
      redirect_to projects_path, :notice => 'Your project was deleted!'
    end
  end

  private

  def load_resources
    @roles = Role.all
    @categories = Category.all
  end

end
