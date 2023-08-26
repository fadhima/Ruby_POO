require "pry"

class User

	attr_accessor :email


		def initialize(email_to_save)

			@email = email_to_save

		puts "On envoie un email Bienvevue !!"
	
		end
		
end

binding.pry

puts "END OF FILE"

julie = User.new("julie@julie.com")

puts julie.email

#jean = User.new


