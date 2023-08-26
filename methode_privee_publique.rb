require "pry"

class User
 
	attr_accessor :email

	def initalize(email_to_save)

		if check_email(email_to_save)

	@email = email_to_save 
		
		else

	puts "Erreur ! EMAIL FOIREUX. Recommence"

		end
	
	end


	def check_email(email_to_save)

		if @email == email_to_save

			return true
		else 

		return false
		
		end
	end

end

julie = User.new

julie.initalize ("julie@julie.com") 

julie.email = "julie@julie.com"

puts julie.email

