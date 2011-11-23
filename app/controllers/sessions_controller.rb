class SessionsController < ApplicationController

	def create
	  if params[:password] == 'foobar'
	    session[:password] = params[:password]
	    flash[:notice] = "Welcome Back!"
		  redirect_to root_path 
	  else
	    flash[:error] = "Invalid Password!"
		  redirect_to login_path 
	  end
	end

	def destroy
		reset_session
		flash[:notice] = "See you later!"
		redirect_to root_path
	end

end
