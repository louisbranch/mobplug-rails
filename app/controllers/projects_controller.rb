class ProjectsController < ApplicationController
  respond_to :html, :json, :xml
  
  def index
    @projects = Project.all
  end
  
  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end
  
  def create
    @project = Project.new(params[:project])
    if @project.save
      flash[:notice] = 'Project Created!'
      respond_with(@project, :location => projects_path)
    else
      flash[:error] = 'Invalid Project Information!'
      redirect_to new_project_path
    end
  end
  
  def edit
    @project = Project.find(params[:id])
  end
  
  def update
    @project = Project.find(params[:id])
    @project.update_attributes(params[:project])
    if @project.save
      flash[:notice] = 'Project Updated!'
      respond_with(@project, :location => project_path(@project))
    else
      flash[:error] = 'Invalid Project Information!'
      redirect_to edit_project_path(@project)
    end
  end
  
  def destroy
    @project = Project.find(params[:id])
    if @project.destroy
      flash[:notice] = 'Project Deleted!'
      redirect_to projects_path
    else
      flash[:error] = 'Error deleting project!'
      redirect_to edit_project_path(@project)
    end
  end
  
end
