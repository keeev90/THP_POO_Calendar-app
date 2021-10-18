# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'
require_relative 'lib/event_creator'


# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.

### MAIN PROJECT OF THE DAY ###
julie = User.new("julie@gmail.com", 30)
jean = User.new("jean@gmail.com", 50)
jacques = User.new("jacques@gmail.com", 70)

event_1 = Event.new("2021-10-17 09:00", 8, "THP_W4D1", [julie, jean, jacques])
#puts event_1.to_s
#puts event_1.postpone_24h
#puts event_1.end_date
#puts event_1.is_past?
#puts event_1.is_future?
#puts event_1.is_soon?

### BONUS : EVENT CREATOR ###
my_event = EventCreator.new

