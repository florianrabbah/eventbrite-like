class Admin::UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def update

    redirect_to root_path
  end


  
end