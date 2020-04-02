class SessionsController < ApplicationController
  def new
  
  end

  def create
      if current_user.nil?
        redirect_to '/login'
      end
      
      if params[:name]
        session[:name] = params[:name]
      end
  end

  def destroy
    if !session[:name]
      session[:name]
    else
      session.delete :name
    end
  end


end
