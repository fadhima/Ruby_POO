require "pry"

class User

	def greet

		puts "Bonjour, monde !"
		
	end

	def say_hello_to_someone(first_name)

		puts "Bonjour, #{first_name}!"

	end

	def show_itself

		print  "Voici l'instance : "

		puts self

	end

	def update_email(email_to_update)

	@email = email_to_update

	end

	def read_email
		
		return @email

	end

	attr_writer :mastercard
		
		def read_mastercard
	
			return @mastercard
		end
	
	attr_reader :birthdate

		def update_birthdate(birthdate_to_update)

			@birthdate = birthdate_to_update
		end

       attr_accessor :email
	
	
end

binding.pry

puts "end of file" 

julie = User.new

jean = User.new

zahra = User.new

julie.greet

jean.greet

julie.read_email

julie.say_hello_to_someone("zahra")


julie.show_itself

julie.update_email("julie@julie.com")

puts julie.read_email

julie.mastercard = "4242 4242 4242 4242"

puts julie.read_mastercard

julie.update_birthdate("2000/12/5")

puts julie.birthdate

julie.email = "julie.julie@.com"


puts julie.email


