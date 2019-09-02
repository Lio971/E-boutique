class UsersController < ApplicationController
	befor_action :set_user, only:[:show, :edit, :update, :destroy]
	def show
  end

	def index
		@user = User.all
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

	def destroy
		@user.destroy
		redirect_to root_path
	end
	
	private
	def set_user
		@user = User.find(params[:id])
	end

	def user_params
	params.require(:user).permit(:email, :password)
	end
end
