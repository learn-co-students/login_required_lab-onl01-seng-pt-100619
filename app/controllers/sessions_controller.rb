class SessionsController < ApplicationController
  def show
  end

  def index
  end

  def create
    if params[:name] || params[:name].empty?
      redirect_to sessions_new_path
      session[:name] = params[:name]
  end
  end

  def destroy
    session.delete :name
  end

end
