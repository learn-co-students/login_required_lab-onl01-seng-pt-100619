class SecretsController < ApplicationController
  def new
  end

  def show
    if !current_user
      redirect_to login_path
    end
  end

end
