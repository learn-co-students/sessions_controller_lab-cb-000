class SessionsController < ApplicationController

  def new
  end

  def create
    if params.include?(:name) && !params[:name].empty?
    session[:name] = params[:name]
    redirect_to '/'
    else
    redirect_to '/sessions/new'
    end

  end

  def destroy
    session[:name] = nil
    redirect_to '/sessions/new'
  end

end
