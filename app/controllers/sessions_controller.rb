class  SessionsController < ApplicationController

  def new
  end

  def create

  	if params[:name].nil? || params[:name].empty?
  	  redirect_to '/sessions/new' 
  	else
  	  session[:name] = params[:name]
  	  redirect_to :root
    end
  end

  def destroy
  	session[:name] = nil
  	redirect_to 'sessions/new'
  end
end