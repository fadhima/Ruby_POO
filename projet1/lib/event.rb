require 'time'

class Event


    attr_accessor :start_date, :duration, :title, :attendes

    def initialize(start_date,duration,title,attendes)

        @start_date = Time.parse(start_date)
        @duration   = duration
        @title      = title
        @attendes   = attendes
    end

    def pospone_24

        @start_date = @start_date + 24*60*60

    end

    def end_date

        return @start_date + @duration*60

    end

    def is_pass?

        @start_date < Time.now
    end

    def is_future?

        @start_date > Time.now

    end


    def is_soon?

        taille_different = @start_date - Time.now

        taille_different <= 30*60

    end

    def to_s 

        puts ">Titre: #{@title}"

        puts "   "

        puts ">Date de duree : #{@start_date}"

        puts "  "

        puts ">Duree : #{@duration}"

        puts "  "

        puts ">Invites : #{@attendes}"

        
        puts " "
    end
end

#creation 

even1 = Event.new("2010-10-31 12:00", 30, "RDV super important",["truc@machin.com", "bidule@chose.fr"])

 puts " "

 even1.to_s

 #verifier si l'information est dans les 30 min

  if even1.is_soon?

        puts "l'evenement est dans bientôt"
  end

  puts " "

puts "l'evenement est rapporte jusqu'a demain"

puts " "

even1.pospone_24

puts "l'evenement  est tire à ça fin"

puts " "

puts even1.end_date

puts " "


if even1.is_pass?

    puts "l'evement c'est déroulé il y'a longtemps "
end

puts " "

if  even1.is_future?
    
    puts "l'evenement vas se déroulé bientot"
    
end



