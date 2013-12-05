#This game is an RPG that is still in development. 
#Please contribute to the code if you want to, as it still needs work
health = 100
inventory = []
playerClassChosen = false
puts "Welcome to this RPG. It is still in development but hopefully you still enjoy it."
    while playerClassChosen == false do 
    puts "First, pick a class. Do you want to be an archer, a warrior, or a wizard?"
    playerClass = gets.chomp
	playerClass = playerClass.downcase
    case playerClass
	when "archer"
		strength = 4
		speed = 7
		reputation = 8
		playerClassChosen = true
        puts "Your Strength is: #{strength}"
        puts "Your Speed is: #{speed}"
        puts "Your reputation is: #{reputation}"
	when "warrior"
		strength = 8
		speed = 4
		reputation = 6
		playerClassChosen = true
        puts "Your Strength is: #{strength}"
        puts "Your Speed is: #{speed}"
        puts "Your reputation is: #{reputation}"
	when "wizard"
		strength = 7
		speed = 6
		reputation = 4
		playerClassChosen = true
        puts "Your Strength is: #{strength}"
        puts "Your Speed is: #{speed}"
        puts "Your reputation is: #{reputation}"
	else 
		puts "That's not an actual class!"
		end
    end 
	
