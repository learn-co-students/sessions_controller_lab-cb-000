class SessionsController < ApplicationController


  def new
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to '/sessions/new'
    elsif
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    if session[:name] = params[:name]
      session.delete :name
    else
      session[:name] = nil
    end
  end


end
