require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


red_people = Cult.new("Red People", "California", 1928, "Red is better.")
blue_men = Cult.new("Blue Men", "Idaho", 1999, "I'm blue")
super_creeps = Cult.new("Supper Creepy Cult", "Secret Location", 1921, "We take bloodoaths literally. Yum.")

lauren = Follower.new("Lauren", 32, "glass half full!  Of bloooooood")
yuki = Follower.new("Yuki", 30, "I wants it")
chris = Follower.new("Chris", 32, "If I join, can I climb your walls?")
audrey = Follower.new("Audrey", 26, "Oboe.  Boboe.  Obeb.  Boeb.")

bo1 = BloodOath.new(red_people, lauren, "2020-2-1")
bo2 = BloodOath.new(super_creeps, yuki, "2018-1-15")
bo3 = BloodOath.new(blue_men, chris, "2011-9-4")
bo4 = BloodOath.new(red_people, audrey, "2015-4-8")
bo5 = BloodOath.new(super_creeps, lauren, "1988-1-2")

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
