class HomeController < ApplicationController

  def index
    @projects = Project.limit(4)
  end

end
