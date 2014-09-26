class UsersController < ApplicationController

	def new
		@user = User.new
		puts @user
	end

	def create
		@user = User.new(user_params)
		if @user.save
			 redirect_to user_path
		else
			render "new"
		end
	end

	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation)

	end

end
