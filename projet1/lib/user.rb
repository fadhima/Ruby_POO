class User

        attr_accessor :email, :age

                @@user = []

        def initialize(email, age)

                @email = email
                @age   = age
                @@user << self
        end

        def self.find_by_methode(email)

               @@user.find {|user| user.email == email} 
            
        end

        def to_s

                puts "Email : #{@email}"

                puts "Age : #{@age}"
        end
end

#creation d'utilisation

jean  = User.new("julie@julie.com", 35)
ali   = User.new("jean@jean.com", 23)
fatou = User.new("claude@claude.com", 75)

6.times do

        print "-"
        
end
jean.to_s

6.times do

print "-"

end

ali.to_s

6.times do

print "-"

end

fatou.to_s

6.times do

print "-"

end



#find the mail

user1 = User.find_by_methode("claude@claude.com")

puts "Voici l'age de l'utilisateur trouve #{user1.age}"