class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    if !params[:name].present? || params[:name].nil?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session[:name] = nil if session[:name].present?
    redirect_to '/login'
  end

end
