#This game is an RPG that is still in development. 
#Please contribute to the code if you want to, as it still needs work
health = 100
inventory = []
playerClassChosen = false
money = 0
def errorMessage()
	puts "You either didn't put one of the options or spelled it wrong"
end
puts "Welcome to this RPG. It is still in development but hopefully you still enjoy it."
    while playerClassChosen == false do 
    puts "First, pick a class. Do you want to be an archer, a warrior, or a wizard?"
    playerClass = gets.chomp
    playerClass = playerClass.downcase
    case playerClass
	when "archer"
		strength = 4
		speed = 8
		reputation = 8
		playerClassChosen = true
        	puts "Your Strength is: #{strength}"
        	puts "Your Speed is: #{speed}"
        	puts "Your reputation is: #{reputation}"
	when "warrior"
		strength = 8
		speed = 3
		reputation = 6
		playerClassChosen = true
		puts "Your Strength is: #{strength}"
        	puts "Your Speed is: #{speed}"
        	puts "Your reputation is: #{reputation}"
	when "wizard"
		strength = 7
		speed = 5
		reputation = 4
		playerClassChosen = true
        	puts "Your Strength is: #{strength}"
        	puts "Your Speed is: #{speed}"
        	puts "Your reputation is: #{reputation}"
	else
		errorMessage()
	end    
end 
playerRaceChosen = false
while playerRaceChosen == false do
	puts "Next, let's pick a race for your character"
	puts "Do you want to be a human, an elf, or a dwarf?"
	playerRace = gets.chomp
	playerRace = playerRace.downcase
	case playerRace
		when "human"
			strength += 3
			speed += 1
			reputation += 2
			playerRaceChosen == true
			puts "Your new Strength is: #{strength}"
        		puts "Your new Speed is: #{speed}"
        		puts "Your new reputation is: #{reputation}"
        		playerRaceChosen = true
		when "elf"
			strength -=1
			speed += 3
			reputation -=2
			playerRaceChosen == true
			puts "Your new Strength is: #{strength}"
        		puts "Your new Speed is: #{speed}"
        		puts "Your new reputation is: #{reputation}"
        		playerRaceChosen = true
		when "dwarf"
			strength =+5
			speed -= 4
			# Note -- reputation stays the same for dwarf. People in this RPG view them neutrally
			playerRaceChosen == true
			puts "Your new Strength is: #{strength}"
        		puts "Your new Speed is: #{speed}"
        		puts "Your new reputation is: #{reputation}"
        		playerRaceChosen = true
		else
			errorMessage()
	end
			
end
puts "You start out in the middle of a town."
puts " You overhear a person calling for help. Do you wish to help them? Y/N"
randEvent1 = gets.chomp
randEvent = randEvent.downcase
case randEvent1
	when "y" || "yes"
		if speed > 6
			puts "You were able to help the person in time"
			puts "Your reputation has gone up in the town"
			reputation += 5
		else
			puts "You were too slow to help the person in time."
			puts "Your reputation has gone down somewhat"
			reputation -= 2
	when "n" || "no"
		puts "Ok then."
locationChoiceChosen == false
while locationChoiceChosen == false do
puts "Do you want to go to a Tavern next?"
puts "Or maybe you want to go to the forest?"
locationChoice = gets.chomp
locationChoice = locationChoice.downcase
case locationChoice
	when "tavern"
		puts "You are now in the tavern. You can either:"
		puts "1: Talk to the bartender"
		puts "2: Play a game of poker"
		puts "3: Walk out out of the tavern"
		tavernChoice = gets.chomp
		tavernchoice = tavernChoice.downcase
	when "forest"
		puts "You find yourself in a forest. You see a deer in front of you."
		puts "Do you wish to attack the Deer?"
		
	else
		puts "That is not an option!"
end
	
	
