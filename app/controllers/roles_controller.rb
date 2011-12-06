class RolesController < ApplicationController
  before_filter :authorize
  
  def index
    @roles = Role.all
  end
  
  def new
    @role = Role.new
  end
  
  def create
    @role = Role.new(params[:role])
    if @role.save
      flash[:notice] = 'Role Created!'
      redirect_to roles_path
    else
      show_errors(@role)
      redirect_to new_role_path
    end
  end
  
  def edit
    @role = Role.find(params[:id])
  end
  
  def update
    @role = Role.find(params[:id])
    if @role.update_attributes(params[:role])
      flash[:notice] = 'Role Updated!'
      redirect_to roles_path
    else
      show_errors(@role)
      redirect_to edit_role_path
    end
  end
  
  def destroy
    @role = Role.find(params[:id])
    if @role.destroy
      flash[:notice] = 'Role Deleted!'
    else
      show_errors(@role)
    end
    redirect_to roles_path
  end
  
end
