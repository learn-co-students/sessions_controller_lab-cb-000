class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def hello
    if !(user_logged_in?)
      redirect_to sessions_new_path
    end
  end

  private

  def check_user_logged_in
    if !(user_logged_in?)
      redirect_to sessions_new_path
    end
  end

  def user_logged_in?
    if session[:name] == nil || session[:name] == ""
      return false
    else
      return true
    end
  end
end
