# Created by: Christopher Durr
# Start date: 3/21/2014 
# End date: TBD
# Enjoy the game!

def error
  puts ""    
  puts "I'm sorry, that is not a valid option"
  puts ""
end

def space
  puts " "
end

puts "Welcome to World War II!"
puts "To begin, you must first pick a leader to play as."
leaderChosen = false
while leaderChosen == false do
  puts "Here are your options:"
  space()
  puts "1. Adolf Hitler - Germany"
  puts "2. Franklin Roosevelt - USA"
  puts "3. Benito Mussolini - Italy"
  puts "4. Tojo Hideki - Japan"
  puts "5. Joseph Stalin - USSR (Soviet Union)"
  puts "6. Hirohito - Japan"
  space()
  print "Pick the number of the leader: "
  chooseLeader = gets.chomp.downcase
    case chooseLeader 
        when "1", "2", "3", "4", "5", "6"
        leaderChosen = true
        else error()
    end
end
charisma = 5
army = 5
navy = 5
territories = 5
case chooseLeader
    when "1"
        leaderName = "Adolf Hitler"    
        country = "Germany"
        charisma += 5
        army += 1
        navy -= 3
        info = "- As Adolf Hitler, you were the leader of the Nazi party in Germany.\n- You also caused the Holocaust, one of the largest genocides in history.\n- Your beliefs were written in a book called 'Mein Kampf'"
    when "2"
        leaderName = "Franklin Roosevelt"
        country = "United States of America"
        charisma += 3
        army += 4
        navy += 3
        territories += 4
        info = "- As Franklin Roosevelt, you helped the United States through uncertain times.\n- Your fireside chats made you a popular figure with American citizens.\n- You also had polio, a fact you tried to hide from others."
    when "3"
        leaderName = "Benito Mussolini"     
        country = "Italy"
        charisma += 5
        army += 2
        navy -= 1
        territories -= 1
        info = "- As Benito Mussolini, you led Italy to fascism.\n- Originally you were a member of the Italian Socialist Party."
    when "4" 
      leaderName = "Tojo Hideki"
      country = "Japan"
      charisma -= 2
      army += 1
      navy += 4
      territories -= 2
    when "5"
      leaderName = "Joseph Stalin"
      country = "USSR"
      charisma += 1
      army += 2
      navy += 1
      territories += 1
    when "6"
      leaderName = "Hirohito"
      country = "Japan"
      charisma += 1
      army += 4
      navy +=1
      territories -= 3
end
space()
puts "Your name is #{leaderName} and you are the leader of #{country}"
space()
puts info



