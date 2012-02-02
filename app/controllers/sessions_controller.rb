class SessionsController < ApplicationController

	def create
	  ENV['PASSWORD'] ||= 'foobar'
	  if params[:password] == ENV['PASSWORD']
	    session[:password] = params[:password]
		  redirect_to root_path, :notice => 'Welcome Back!'
	  else
		  redirect_to login_path, :alert => 'Invalid Password!'
	  end
	end

	def destroy
		reset_session
		redirect_to root_path, :notice => 'See you later!'
	end

end
