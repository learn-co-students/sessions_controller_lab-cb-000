class SessionsController < ApplicationController

  def new
  end

  def create
    if params.include?(:name) && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def destroy
    if session.include?(:name) && session[:name] != nil
      session.clear
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

end
