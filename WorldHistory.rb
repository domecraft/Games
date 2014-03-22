# Created by: Christopher Durr
# Start date: 3/21/2014 
# End date: TBD
# Enjoy the game!

def error
  puts "I'm sorry, that is not a valid option"
end

def space
  puts ""
end

puts "Welcome to World War II!"
puts "To begin, you must first pick a leader to play as."
leaderChosen = false
while leaderChosen = false do
  puts "Here are your options:"
  puts "1. Adolf Hitler - Germany"
  puts "2. Franklin Roosevelt - USA"
  puts "3. Benito Mussolini - Italy"
  puts "4. Tojo Hideki - Japan"
  puts "5. Joseph Stalin - USSR (Soviet Union)"
  puts "6. Hirohito - Japan"
  chooseLeader = gets.chomp.downcase
charisma = 5
intelligence = 5
navy = 5
army = 5

  
  case chooseLeader 
    when "1", "adolf hitler", "germany"
      leaderChosen = true
      leaderId = 1
      puts "Congratulations, you are now playing as Hitler!"
      puts "You get a +3 Charisma bonus because of your speaking skills!"
    when "2", "frank roosevelt", "usa"
      leaderChosen = true
      leaderId = 2
      puts "Congratulations, you are now playing as Franklin Roosevelt!"
  end
end



