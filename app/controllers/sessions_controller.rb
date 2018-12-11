class SessionsController < ApplicationController
  def new
  end

  def create
  	if params[:name].present?
  		session[:name] = params[:name]
  		redirect_to "/"
  	else
		redirect_to sessions_new_path 
  	end
  end

  def destroy
  	session.clear unless session[:name].nil?
	redirect_to login_path
  end
end
