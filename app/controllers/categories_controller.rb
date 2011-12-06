class CategoriesController < ApplicationController
  before_filter :authorize, :except => [:index, :show]
  
  def index
    @categories = Category.all
  end
  
  def show
    @category = Category.find(params[:id])
    @projects = @category.projects
  end
  
  def new
    @category = Category.new
  end
  
  def create
    @category = Category.new(params[:category])
    if @category.save
      flash[:notice] = 'Category Created!'
      redirect_to category_path(@category)
    else
      show_errors(@category)
      redirect_to new_category_path
    end 
  end
  
  def edit
    @category = Category.find(params[:id])
  end
  
  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(params[:category])
      flash[:notice] = 'Category Updated!'
      redirect_to category_path(@category)
    else
      show_errors(@category)
      redirect_to edit_category_path
    end
  end
  
  def destroy
    @category = Category.find(params[:id])
    if @category.destroy
      flash[:notice] = 'Category Deleted!'
      redirect_to categories_path
    else
      show_errors(@category)
      redirect_to category_path(@category)
    end
  end
  
end
