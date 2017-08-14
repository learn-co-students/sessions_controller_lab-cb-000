class SessionsController < ApplicationController
  def index
  end

  def new
  end

  def create

  if params[:name].present? && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to '/sessions/new'
    end
  end

  def destroy
    session.destroy
    redirect_to '/login'
  end


    def current_user
      session[:user_id]
    end

end
