class UsersController < ApplicationController
  def index
  
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit

   @user = user.find(params[:id])
  end
  def update
  @user = user.find(params[:id])
  if @user.update(user_params)
  redirect_to users_path
  else
  render 'edit'
  end
  end
  
  
  
 private
 def post_user
  

 end
 def user_params
   params.require(:user).permit(:email, :encrypted_password, :description, :first_name, :last_name)
  # Liste des attributs de l'utilisateur que vous autorisez à être mis à jour
 end
 
end
