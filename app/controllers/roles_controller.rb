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
      redirect_to roles_path, :notice => 'A new role was created!'
    else
      render :new
    end
  end

  def edit
    @role = Role.find(params[:id])
  end

  def update
    @role = Role.find(params[:id])
    if @role.update_attributes(params[:role])
      redirect_to roles_path, :notice => 'Your role was updated!'
    else
      render :edit
    end
  end

  def destroy
    @role = Role.find(params[:id])
    if @role.destroy
      redirect_to roles_path, :notice => 'Your role was deleted!'
    end
  end

end
