class SessionsController < ApplicationController

  def new
  end

  def create
    #puts "NAME: #{params[:name]}"
    if !params[:name] || params[:name].empty?
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to :root
    end
  end

  def destroy
    session[:name] = nil
    session.delete :name
    redirect_to 'sessions/new'
  end

end
