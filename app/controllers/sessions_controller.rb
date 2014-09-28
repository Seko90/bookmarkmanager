class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by_email(params[:email])
		puts "USER:   id: #{user.id} - email: #{user.email} - pw: #{user.password}"
    	puts "PARAMS: #{params}"
		if 
			user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to bookmarks_path, 
			notice: "Sie haben sich erfolgreich angemeldet!"
		else
			flash.now.alert = "Fehlerhafte Login-Daten!"
			render "new"
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to bookmarks_path,
		notice: "Sie haben sich erfolgreich abgemeldet"
	end



end
