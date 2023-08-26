require "pry"

class User

	attr_accessor :email

		@@user_count = 0  # variable de classe

	def initialize(email_to_save)

		@email = email_to_save

		@@user_count = @@user_count + 1

	end


	def self.count

	return @@user_count
	
	end


#comment appeler cette variable

# methode de la classe

	def self.count

		return @@user_count

	end

end

binding.pry

puts "end of file"

puts User.count

julie = User.new("julie@julie.com")

puts User.count

jean = User.new("jean@jean.com")

puts User.count  


