class HomeController < ApplicationController

  def index
    @title = "Product Manager and Rails Developer"
    @projects = Project.limit(3)
  end

end
