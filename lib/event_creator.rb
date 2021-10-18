require "pry"

class EventCreator
  attr_accessor :start_date, :duration, :title, :attendees
  
  def initialize

    puts "Salut, tu veux créer un événement ? Cool ! "
    puts
    puts "Commençons. Quel est le nom de l'événement ?"
    print "> "
    @title = gets.chomp.to_s
    puts
    
    puts "Super. Quand aura-t-il lieu ? Format accepté : AAAA-MM-JJ HH:MM "
    print "> "
    @start_date = gets.chomp.to_s
    puts
    
    puts "Au top. Combien de temps va-t-il durer (en heures) ? "
    print "> "
    @duration = gets.chomp.to_i
    puts
    
    puts "Génial. Qui va participer ? Balance leurs e-mails ? "
    print "> "
    @attendees = gets.chomp
    puts

    Event.new(@start_date, @duration, @title, @attendees)
    puts "Super, c'est noté, ton évènement a été créé ! "
    puts " 
      Voici le recap de ton event :
      >Titre : #{@title}
      >Date de début : #{@start_date}
      >Durée (h) : #{@duration}
      >Invités : #{@attendees}
      "
  end
end 