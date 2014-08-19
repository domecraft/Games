# Created by: Christopher Durr
# Start date: 3/21/2014 
# End date: TBD
# Enjoy the game!
random = Random.new
def error
  puts   
  puts "I'm sorry, that is not a valid option"
  puts 
end

def space
  puts 
end

def pass #Used for testing 
  puts "Yay, the code is working!"
end

def failure
  puts "Unfortunately, you were not as good of a leader as you thought you were."
  space
  if charisma <= 0
    puts "Your charisma fell too low and rebellions occurred. YOu lost control of #{country}"
  elsif army || navy <= 0
    puts "You do not have a sufficient amount of people within your military due to their deaths."
    space
    puts ""
  elsif territories <= 0
    puts "You lost too many territories, and your country no longer exists."
  else
    puts "Your leadership skills are deplorable."
  end
  space
  puts "Better luck next time!"
end

puts "Welcome to World War II!"
puts "To begin, you must first pick a leader to play as..."
space
leaderChosen = false
while leaderChosen == false do
  puts "Here are your options:"
  space
  puts "1. Adolf Hitler - Germany"
  puts "2. Franklin Roosevelt - USA"
  puts "3. Benito Mussolini - Italy"
  puts "4. Tojo Hideki - Japan"
  puts "5. Joseph Stalin - USSR (Soviet Union)"
  space
  print "Pick the number of the leader: "
  chooseLeader = gets.chomp.downcase
    case chooseLeader 
        when "1", "2", "3", "4", "5", "6"
        leaderChosen = true
        else error
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
        role = "dictator"
        alliance = "axis"
    when "2"
        leaderName = "Franklin Roosevelt"
        country = "The United States of America"
        charisma += 3
        army += 4
        navy += 3
        territories += 4
        info = "- As Franklin Roosevelt, you helped the United States through uncertain times.\n- Your fireside chats made you a popular figure with American citizens.\n- You also had polio, a fact you tried to hide from others."
        role = "president"
        alliance = "allies"
    when "3"
        leaderName = "Benito Mussolini"     
        country = "Italy"
        charisma += 5
        army += 2
        navy -= 1
        territories -= 1
        info = "- As Benito Mussolini, you led Italy to fascism.\n- Originally you were a member of the Italian Socialist Party."
        role = "leader"
        alliance = "axis"
    when "4" 
      leaderName = "Tojo Hideki"
      country = "Japan"
      charisma -= 2
      army += 1
      navy += 4
      territories -= 2
      info = "- As Prime Minister of Japan, you were directly responsible for the attack on Pearl Harbor.\n- Near the end of the war, you were setenced to death for Japanese war crimes.\n- You also forced militarism and nationalism indoctrination in schools.\n- Your popularity was very high during the early years of the war."
      role = "prime minister"
      alliance = "axis"
    when "5"
      leaderName = "Joseph Stalin"
      country = "USSR"
      charisma += 1
      army += 2
      navy += 1
      territories += 1
      info = "- As Joseph Stalin, you were the leader of the Soviet Union.\n- You installed communism into the Soviet Union and created a command economy.\n- You entered into a non-agression pact with Germany, which they violated.\n- You led the Soviet Union through its post-war reconstruction phase."
      role = "leader"
      alliance = "allies"
end
space
puts "Your name is #{leaderName} and you are the leader of #{country}"
space
puts info
space
puts "Here are the current attributes that you have right now:\nCharisma: #{charisma}\nArmy: #{army}\nNavy: #{navy}\nTerritories: #{territories}"
space
puts "Press enter to continue: "
dummyVariable = gets.chomp
puts "As the #{role} of #{country}, your job is to ensure the wellbeing of your country."
space
puts "This can be done in a variety of ways:\n1. By attacking other countries\n2. By creating peace treaties with other countries\n3. Increasing your charisma so your citizens adore you."
space
puts "You initially believe that for #{country}, your best option would be to attack a smaller country and gain more citizens."
space 
case alliance
    when "axis"
        puts "As part of the axis powers, you decide that you will invade a small territory owned by The United States"
        space
        puts "There are two territories: The Midway Islands and Puerto Rico."
        space
        attackChosen = false
        while attackChosen == false do
            puts "Which territory do you want to attack?"
            attackTerritory = gets.chomp.downcase
            if attackTerritory.include? "midway" || "island"  
                attackChosen = true
                attackTerritory = "midway islands"
            elsif attackTerritory.include? "puerto" || "rico"
                attackChosen = true
                attackTerritory = "Puerto Rico"
            else
                error
            end
    end
  when "allies"
    puts "As part of the allied powers, you decide that your best bet is to attack a German-occupied nation."
    space
    puts "There are currently two options: Estonia and the Kingdom of Greece"
    attackChosen = false
    while attackChosen == false do
      puts "Which territory do you want to attack?"
      attackTerritory = gets.chomp.downcase
      if attackTerritory.include? "estonia"
        attackChosen = true
        attackTerritory = "Estonia"
      elsif attackTerritory.include? "greece" || "kingdom"
        attackChosen = true
        attackTerritory = "The Kingdom of Greece"
      else
        error
  else error
end
space
case attackTerritory
  when "midway islands"
    puts "Alright, you are attacking #{attackTerritory.capitalize}\nPress enter to continue: "
    dummyVariable = gets.chomp
    puts "Getting results from the General..."
    space
    sleep 5 ######################################## REMOVE THIS WHEN TESTING ON CODEACADEMY LABS!!!!!!!!!!!!!!!!!!!!
    puts "Here is the result of the battle:\n"
    if army >= random.rand(3..7) && navy >= random.rand(4..7)
      territories += random.rand(2..5)
      charisma += random.rand(1..3)
      puts "Congratulations, you have taken over the #{attackTerritory}!.\nYou now have #{territories} territories!\nYour charisma has increased as well!"
      puts "You now have #{charisma} charisma!" 
    else
      charisma -= random.rand(1..3)
      army -= random.rand(2..4)
      navy -= random.rand(2..4)
      puts "Unfortunately, you did not successfully take over #{attackTerritory}:(.\nAs a result, you have lost some charisma as well."  
    end
  when "Puerto Rico"
    puts "Alright, you are attacking #{attackTerritory}\nPress enter to continue: "
    dummyVariable = gets.chomp
    puts "Getting results from the General..."
    space
    sleep 5 ######################################## REMOVE THIS WHEN TESTING ON CODEACADEMY LABS!!!!!!!!!!!!!!!!!!!!
    if army >= random.rand(4..6) && navy >= random.rand(2..8)
      territories += random.rand(1..3)
      charisma += random.rand(2..5)
      puts "Congratulations, you have taken over the #{attackTerritory}!.\nYou now have #{territories} territories!\nYour charisma has increased as well!"
      puts "You now have #{charisma} charisma!"   
    else
      charisma -= random.rand(1..3)
      army -= random.rand(2..4)
      navy -= random.rand(2..4)
      puts "Unfortunately, you did not successfully take over #{attackTerritory}:(.\nAs a result, you have lost some charisma as well."  
    end
  when "Estonia"
    puts "Alright, you are attacking #{attackTerritory}\nPress enter to continue: "
    dummyVariable = gets.chomp
    puts "Getting results from the General..."
    space
    sleep 5 ######################################## REMOVE THIS WHEN TESTING ON CODEACADEMY LABS!!!!!!!!!!!!!!!!!!!!
    if army >= random.rand(4..6) && charisma >= random.rand(2..7)
      territories += random.rand(1..3)
      charisma += random.rand(2..5)
      puts "Congratulations, you have taken over the #{attackTerritory}!.\nYou now have #{territories} territories!\nYour charisma has increased as well!"
      puts "You now have #{charisma} charisma!"   
    else
      charisma -= random.rand(1..3)
      army -= random.rand(2..4)
      navy -= random.rand(2..4)
      puts "Unfortunately, you did not successfully take over #{attackTerritory}:(.\nAs a result, you have lost some charisma as well."  
    end
  when "The Kingdom of Greece"
    puts "Alright, you are attacking #{attackTerritory}\nPress enter to continue: "
    dummyVariable = gets.chomp
    puts "Getting results from the General..."
    space
    sleep 5 ######################################## REMOVE THIS WHEN TESTING ON CODEACADEMY LABS!!!!!!!!!!!!!!!!!!!!
    if army >= random.rand(2..7) && navy >= random.rand(0..10)
      territories += random.rand(1..3)
      charisma += random.rand(2..5)
      puts "Congratulations, you have taken over the #{attackTerritory}!.\nYou now have #{territories} territories!\nYour charisma has increased as well!"
      puts "You now have #{charisma} charisma!"   
    else
      charisma -= random.rand(1..3)
      army -= random.rand(2..4)
      navy -= random.rand(2..4)
      puts "Unfortunately, you did not successfully take over #{attackTerritory}:(.\nAs a result, you have lost some charisma as well."  
    end
  else 
    error
end




