class AdminController < ApplicationController
  before_action :authenticate_admin

def new
  @user = User.new
end
  def index
  @users = User.all 


  end

  





def edit_user
  @user = User.find(params[:id])
  # Logique pour la modification d'utilisateur
end

def update_user
  @user = User.find(params[:id])
  if @user.update(user_params)
    # Rediriger vers la liste des utilisateurs avec un message de succès
  else
    # Rediriger vers le formulaire de modification avec des erreurs
  end
end

 def destroy_user
  @user = User.find(params[:id])
  @user.destroy
  # Rediriger vers la liste des utilisateurs avec un message de succès

 end

 private

 def authenticate_admin
   # Vérifier si l'utilisateur est un administrateur
   # Rediriger vers la page de connexion si ce n'est pas le cas
 end


 def user_params

  # Paramètres autorisés pour la modification de l'utilisateur
 end




end
