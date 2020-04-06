class SessionsController < ApplicationController
    def new
    end

    def create
        if params[:name].present? && params[:name] != ""
            session[:name] = params[:name]
            redirect_to secret_path
        else 
            require_login
        end 
    end

  def destroy
    session.delete :name
  end 

end 