class SecretsController < ApplicationController
  before_action :require_logged_in
  def show
  end

  private 

  def require_logged_in
    if current_user
      render 'show'
    else
     redirect_to controller: 'sessions', action: 'new' unless current_user
    end
  end
end
