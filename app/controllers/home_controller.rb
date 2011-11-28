class HomeController < ApplicationController

  def index
    @title = "Transforming passion into applications"
    @projects = Project.limit(3)
  end

end
