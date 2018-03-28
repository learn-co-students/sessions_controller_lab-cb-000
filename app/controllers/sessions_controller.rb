class SessionsController < ApplicationController

def new
end

def create
  return redirect_to(controller: 'sessions',
  action: 'new') if !params[:name] || params[:name].empty? #redirects to login if name is nil, or is empty
  session[:name] = params[:name] #sets session name to name
  redirect_to controller: 'application', action 'hello' # redirects to '/' if logged in
end

def destroy
  session.delete :name #clears session name
     redirect_to controller: 'application', action: 'hello' #redirects 
   end

end
