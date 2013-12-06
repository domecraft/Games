#This game is an RPG that is still in development. 
#Please contribute to the code if you want to, as it still needs work
health = 100
inventory = []
playerClassChosen = false
money = 0
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
	puts "That's not an actual class!"
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
puts "Do you want to go to a Tavern next?"
puts "Or maybe you want to go to the forest?"
locationChoice=gets.chomp
case locationChoice
	 	
	
	
