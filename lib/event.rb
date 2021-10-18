require "pry"
require 'time'

class Event
  attr_accessor :start_date, :duration, :title, :attendees

  def initialize(start_date, duration, title, attendees)
    @start_date = Time.parse(start_date)
    @duration = duration.to_i #à paramétrer en heures
    @title = title.to_s
    @attendees = attendees
  end

  def postpone_24h
    @start_date = start_date + 24*3600 #conversion en secondes pour être compatible avec la méthode "Time.parse"
  end

  def end_date
    @end_date = @start_date + (@duration * 3600) #conversion en secondes pour être compatible avec la méthode "Time.parse"
    print "End date : "
    return @end_date
  end
  
  def is_past?
    print "Already took place? "
    return Time.now > @start_date #résultat de type true or false
  end 

  def is_future?
    print "Will take place? "
    return !self.is_past? #résultat de type true or false
  end

  def is_soon?
    print "Coming soon ? "
    return Time.now + 30*60 >= @start_date #résultat de type true or false
  end 

  def to_s
    puts "
    >Titre : #{@title}
    >Date de début : #{@start_date}
    >Durée : #{@duration}h
    >Invités : #{@attendees.join(", ")}
    "
  end
end