class SessionsController < ApplicationController
  before_action :current_user

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to new_session_path
    else  
      session[:name] = params[:name]
      redirect_to session_path(session[:name])
    end
  end

  def show
    
  end

  def destroy
    if session[:name]
      session.delete :name
      redirect_to root_url
    end
  end
end
