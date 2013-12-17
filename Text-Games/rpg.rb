#This game is an RPG that is still in development. 
#Please contribute to the code if you want to, as it still needs work
health = 100
inventory = []
playerClassChosen = false
money = 0
def space
	puts ""
end
def errorMessage
	puts "You either didn't put one of the options or you spelled it wrong"
end
def moneyOffered(moneyAmount)
	#This function is used in random events when the player is offered money for helping
	moneyChoice = gets.chomp
	moneyChoice = moneyChoice.downcase
		case moneyChoice
			when "yes", "y"
				money += moneyAmount
				puts "You now have #{money} coins"
			when "no", "n"
				reputation +=2
				puts "You're reputation went up for not accepting the coins."
				puts "Your new reputation is now #{reputation}"
		end
end

def buyDrink()
	# This function is used in taverns/bars in this rpg.
	if playerRace == elf
		puts "'Sorry, we don't serve your kind here.'"
	else
		puts "Would you like to buy a drink?"
		buyDrink = gets.chomp
		buyDrink = buyDrink.downcase
		case buyDrink
			when "yes", "y"
				if money <2
					puts "Sorry, you don't have enough money"
				else
					money -=2
					space()
					puts "'Here you go buddy'"
					puts "The bartender hands you a drink"
					puts "You now only have #{money} coins"
				end
			when "no", "n"
				space
				puts "The bartender says:"
				puts "'Wait, I'll give you a discount on the drink'"
				puts "Do you want to buy the drink now?"
				buyDrink = gets.chomp
				buyDrink = buyDrink.downcase
				case buyDrink
					when "yes", "y"
						puts "'Here you go'"
						puts "The bartender hands you a drink"
					when "no", "n"
						puts "I don't like #(playerClass)s anyway."
				end
		end
	end
end

def poker()
space()
playPoker = true
while playPoker == true do
	#This funciton will be used whenever poker is played in a tavern
	pot = rand(100) + 1 # Will set the initial pot to a random amount between one and 25 coins.
	if pot == 1
		puts "The current pot in the poker game is #{pot} coin"
	else
		puts "The current pot in the poker game is #{pot} coins"
	end
	
	puts "Do you want to continue to play a game of poker?"
	putBet = gets.chomp
	putBet = putBet.downcase
	if putBet == yes
		if ((money -= pot) < 0)
			puts "Sorry, but you do not have enough money to play"
		else
			money -= pot
			puts "You now have #{money} coins"
			puts "Let's see if you win..."
			puts "(Press enter to continue)"
			continuePoker = gets.chomp
			winningChance = rand(1..100) # sets the chances of winning between one and hundred
			case winningChance
				when 1..20
					coin += pot*2
					puts "You won!"
					puts "You now have #{coin} coins!"
				when 21..100
					puts "Sorry, but you lost"
			end
			puts "Would you like to try again?"
			playPoker = gets.chomp
			playPoker = playPoker.downcase
			case playPoker
				when "yes"
					playPoker = true
				when "no"
					playPoker = false
			end
		end
	else
		playPoker = false
		puts "'Alright', says the dealer, 'Hope to see you again soon'"
	end
		
end
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
		space
        	puts "Your Strength is: #{strength}"
        	puts "Your Speed is: #{speed}"
        	puts "Your reputation is: #{reputation}"
	when "warrior"
		strength = 8
		speed = 3
		reputation = 6
		playerClassChosen = true
		space
		puts "Your Strength is: #{strength}"
        	puts "Your Speed is: #{speed}"
        	puts "Your reputation is: #{reputation}"
	when "wizard"
		strength = 7
		speed = 5
		reputation = 4
		playerClassChosen = true
		space
        	puts "Your Strength is: #{strength}"
        	puts "Your Speed is: #{speed}"
        	puts "Your reputation is: #{reputation}"
	else
		errorMessage
	end    
end 
playerRaceChosen = false
while playerRaceChosen == false do
	space
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
			space
			puts "Your new Strength is: #{strength}"
        		puts "Your new Speed is: #{speed}"
        		puts "Your new reputation is: #{reputation}"
        		playerRaceChosen = true
		when "elf"
			strength -=1
			speed += 3
			reputation -=2
			playerRaceChosen == true
			space
			puts "Your new Strength is: #{strength}"
        		puts "Your new Speed is: #{speed}"
        		puts "Your new reputation is: #{reputation}"
        		playerRaceChosen = true
		when "dwarf"
			strength =+5
			speed -= 4
			# Note -- reputation stays the same for dwarf. People in this RPG view them neutrally
			playerRaceChosen == true
			space
			puts "Your new Strength is: #{strength}"
        		puts "Your new Speed is: #{speed}"
        		puts "Your new reputation is: #{reputation}"
        		playerRaceChosen = true
		else
			errorMessage
	end
			
end
space
puts "You start out in the middle of a town."
puts " You overhear a person calling for help. Do you wish to help them? Y/N"
randEvent1 = gets.chomp
randEvent1 = randEvent1.downcase
case randEvent1
	when "y", "yes"
		if speed > 6
			space
			puts "You were able to help the person in time"
			puts "The person offers you money as thanks"
			puts "Do you wish to accept the money?"
			moneyOffered(10)
			puts "Your reputation has gone up in the town for helping the stranger."
			reputation += 5
		else
			space()
			puts "You were too slow to help the person in time."
			puts "Your reputation has gone down somewhat"
			reputation -= 2
			puts "Your new reputation is now at #{reputation}"
		end
	when "n", "no"
		puts "Ok then."
end
locationChoiceChosen = false
while locationChoiceChosen == false do
space
puts "Do you want to go to a Tavern next?"
puts "Or maybe you want to go to the forest?"
locationChoice = gets.chomp
locationChoice = locationChoice.downcase
case locationChoice
	when "tavern"
		inTavern = true
		locationChoiceChosen = true
		space
	while inTavern == true do
		puts "You are now in the tavern. You can either:"
		puts "1: Talk to the bartender"
		puts "2: Play a game of poker"
		puts "3: Walk out out of the tavern"
		tavernChoice = gets.chomp
		tavernchoice = tavernChoice.downcase
		case tavernChoice
			when "1"
				buyDrink()
			when "2"
				poker()
			when "3"
				space()
				puts "You walk out of the tavern into the shivering cold of winter"
				inTavern == false
		end
	end
	when "forest"
		locationChoiceChosen = true
		space
		puts "You find yourself in a forest. You see a deer in front of you."
		puts "Do you wish to attack the Deer?"
		attackDeer = gets.chomp
		attackDeer = attackDeer.downcase
		case attackDeer
			when "yes", "y"
				if speed > 6 && strength > 4
					space()
					puts "You successfully killed the deer!"
					puts "You put deer meat into your inventory"
					inventory << "Deer Meat"
					puts "You walk out of the forest looking for you next adventure."
					puts "Who knows what you will do next?"
				else
					puts "Unfortunately, you were too slow and weak to kill it"
					puts "But your speed has gone up for trying"
					speed += 2
				end
			when "no", "n"
				puts "Your reputation has gone up for not attacking it"
				puts "You walk out of the forest knowing you saved an animal today"
				reputation += 2
		else
				errorMessage
		end
	else
		puts "That is not an option!"
	end
end
