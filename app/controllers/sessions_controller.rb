class SessionsController < ApplicationController
  def new

  end

  def create
    if params[:name] == nil || params[:name] == ''
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    if logged_in?
      session.delete :name
    end
    redirect_to '/'
  end
end
