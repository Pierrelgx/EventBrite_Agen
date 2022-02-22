class UsersController < ApplicationController
    #before_action :authenticate_user!, only: [:show]
  
    def show
      @user = User.find(params['id'])
    end
  
    def new
    end
  
    def edit
      @user = User.find(params[:id])
    end
  
    def update
      @user = User.find(params[:id])
      user_params = params.require(:user).permit(:first_name, :last_name)
      @user.update(user_params)
      redirect_to user_path
    end
  
  
  end