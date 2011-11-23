class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :admin?
  
  def show_errors(target)
    if target.errors.any?
      flash[:error] ||= []
      target.errors.full_messages.each do |msg|
        flash[:error] << msg
      end
    else
      flash[:error] = 'An error has occured!'
    end
  end
  
  def authorize
    unless admin?
      flash[:error] = "Not here, Cowboy!"
      redirect_to root_path
      false
    end
  end
  
  def admin?
    session[:password]
  end
end
