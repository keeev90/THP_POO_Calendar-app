require "pry"

class User
 attr_accessor :email, :age 
 @@all_users = []

 def initialize(user_email, user_age)
  @email = user_email
  @age = user_age
  @@all_users << self
 end

 def self.get_all_users
  return @@all_users
 end

end