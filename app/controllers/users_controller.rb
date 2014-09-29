class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
      ContactMailer.registration_confirmation(@user).deliver
			redirect_to login_path,
			notice: "Ihr Benutzerkonto wurde angelegt"
		else
			render "new"
		end
	end

	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation)
	end

end
