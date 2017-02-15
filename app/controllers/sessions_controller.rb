class SessionsController < ApplicationController

  def new

  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to controller: 'sessions', action: 'new' and return
    end

    session[:name] = params[:name]
    redirect_to '/'
  end

  def destroy
    session.delete(:name) if session[:name]
    redirect_to '/'
  end

end
