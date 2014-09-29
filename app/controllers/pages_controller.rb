class PagesController < ApplicationController
	def home
		def create
			@contact = Contact.new
			if @contact.save
				redirect_to root_url, notice: 'Anfrage was successfully created.' 

			else
				render "new" 

			end
		end
	end
end

