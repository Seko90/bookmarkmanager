module ApplicationHelper
	def german_time(time)
		time.strftime("%d.%m.%Y %H:%M")
	end

	def admin?
		session[:admin] == true
	end

end
