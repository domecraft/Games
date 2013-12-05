#This game is an RPG that is still in development. 
#Please contribute to the code if you want to, as it still needs work
health = 100
inventory = []
puts "Welcome to this RPG. It is still in development but hopefully you still enjoy it."
until playerClassChosen = true do
	puts "First, pick a class. Do you want to be an archer, a warrior, or a wizard?"
	playerClass = gets.chomp
	playerClass = playerClass.downcase
	if playerClass == "archer"
		strength = 4
		speed = 7
		reputation = 8
		playerClassChosen = true
	elsif playerClass == "warrior"
		strength = 8
		speed = 4
		reputation = 6
		playerClassChosen = true
	elsif playerClass == "wizard"
		strength = 7
		speed = 6
		reputation = 4
		playerClassChosen = true
	else 
		puts "That's not an actual class!"
		end
end
	
