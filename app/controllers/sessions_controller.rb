class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:new, :create]

def new

end


def create
  if params[:name].blank?
           redirect_to login_path
       else
           session[:name] = params[:name]
           redirect_to root_path
       end
end


def destroy

  session.delete :name
  require_login
end



end
