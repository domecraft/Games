class character:
    def __init__(self, name, gender ,health, race, role, status, strength, defense, magic, bounty, income, reputation):
        self.name = name
        self.health = health
        self.status = status
        self.strength = strength
        self.defense = defense
        self.race = race
        self.role = role
        self.bounty = bounty
        self.magic = magic
        self.gender = gender
        self.income
        self.reputation
        inventory = []
        
    def modify_health(self, amount):
        self.health += amount

    def set_health(self, amount):
        self.health = amount
    
    def set_status(self, status):
        self.status = status
        
    def modify_str(self, amount):
        self.strength += amount
    
    def modify_def(self, amount):
        self.defense += amount
        
    def add_item(self, item):
        self.inventory.append(item)
        
    def remove_item(self, item):
        if item in self.inventory:
            self.inventory.remove(item)
        else:
            print item + " is not in your inventory!"
        
    def set_race(self, race):
        self.race = race

    def modify_bounty(self, amount):
        self.bounty += amount
        
    def checkDead(self, health):
        if self.health <= 0:
            self.status = "dead"
            return "dead"
        else:
            self.status = "alive"
            return "alive"
    def modify_income(self, amount):
        income += amount
        
    def modify_reputation(self, amount):
        reputation += amount
        
#The following class is used for random npcs that I don't really develop in the storyline.        
class basicCharacter:
        def __init__(self, name, gender, income, status):
          self.name = name
          self.gender = gender
          self.income = income
          self.status = status
          
        def set_status(self, status):
            self.status = status
            
class store:
    def __init__(self, name  = "General Store" , owner = "Store Owner", alliance = "Rebellion"):
        self.name = name
        self.store_owner = owner
        self.alliance = alliance
        self.stock = {
            'longsword': {'cost': 10, 'speed': 3, 'strength': 7, 'defense': 2},
            'shortsword': {'cost': 8, 'speed': 5, 'strength': 4, 'defense': 2},
            'bronze_armor': {'cost': 10, 'speed': -2, 'strength': 1, 'defense': 6},
            'silver_armor': {'cost': 20, 'speed': -5, 'strength': 2, 'defense': 12},
            'platinum_armor': {'cost': 35, 'speed': -8, 'strength': 4, 'defense': 20}
            }
       
class town:
    def __init__(self, name, ruler, alliance, income, population):
        self.name = name
        self.ruler = ruler
        self.alliance = alliance
        self.income = income
        self.population = population
    def set_ruler(self, ruler):
        self.ruler = ruler
    
    def set_name(self, name):
        self.name = name
        
    def set_alliance(self, alliance):
        self.alliance = alliance
        
    def modify_income(self, amount):
        self.income += amount
    
    def modify_pop(self, population):
        self.population += population
        
class bar:
    def __init__(self, name, owner, income):
        self.name = name
        self.owner = owner
        self.income = income
    def set_owner(self, owner):
        self.owner = owner
    def modify_income(amount):
        self.income += amount
#Character Creation
invalidSelection = False
while True:
    introduction()
    if (characterAccept == "y") or (characterAccept== "yes"):
        break
        break
    print 
    name = raw_input("What is your name, adventurer?: ").capitalize()
    print 
    gender = raw_input("What is your gender?").lower()
    print 
    greeting()
    print
    race = str(raw_input ("What shall your race be?:\n1.Human\n2.Elf\n3.Dwarf\n")).lower()
    race = race.lower()
    if (race == "1") or (race == "human"):
        strength = 6
        defense = 6
        magic = 3
    elif (race == "2") or (race == "elf"):
        strength = 3
        defense = 7
        magic = 5
    elif (race == "3") or (race == "dwarf"):
        strength = 7
        defense = 3
        magic = 5
    elif (race == "saiyan"):
        strength = 9001
        defense = 9001
    else:
        print "That is not a valid race in this game!"
        invalidSelection = True
    print
    role = str(raw_input ("What did you study before you arrived?\n1.Magic\n2.Warfare\n3.History\n" )).lower()
    if (role == "1") or (role == "magic"):
        magic += 3
    elif (role == "2") or (role == "warfare"):
        strength += 3
    elif (role == "3") or (role == "history"):
        defense +=3
    else:
        print "That is not a valid thing to study!"
        invalidSelection = True
    print "Here is your character thus far:\n\n"
    print "Name:\t" + name
    print "Gender\t" + gender
    print "Strength:\t" + str(strength)
    print "Defense:\t" + str(defense)
    print "Magic:\t" + str(magic)
    print
    characterAccept = raw_input("Are you satisfied with this?").lower()
    if (characterAccept == "y") or (characterAccept== "yes"):
        print "Let the game begin!"
        break
    else:
        invalidSelection = True
        
    if invalidSelection == True:
        print "I'm sorry, but one of the inputs was invalid"
        
user = character(name, gender ,100, race, role, "healthy", strength, defense, magic, 0, 10)
mainBar = bar("Arenfeld's Keep", "Arenfeld", 1000)
print "You find yourself in a bar...\n"
time.sleep(2) #Edit out when testing on python lab
print "You see two men arguing...\n"
time.sleep(2) #Edit out when testing on python lab
print "Suddenly the bartender comes up to you...\n\n"
print " 'I'm going to ask you to leave, please' "
barChoice  = raw_input("What do you do?\n1. 'Why?'\n2. 'Go screw yourself'\n 3. 'Sorry, I will leave' ").lower()
if (barChoice== "1") or ("why" in barChoice):
    print "The bartender replies:\n"
    print "'You haven't bought anything yet. Buy something or leave. An ale costs 2 coins\n"
    print "You have " + user.income + "coins." 
    dummyChoice = raw_input("Do you want to buy an ale?")
    if (dummyChoice == "y") or (dummyChoice == "yes"):
        user.modify_income(-2)
        user.add_item("Ale")
        print "You now have " + user.income + "coins. An ale has been added to your inventory."
        print "'Thanks.'\nThe bartender sits next to you, staring at you intently. "
    if (dummyChoice == "n") or (dummyChoice == "no"):
        print "That's fine. That's not the real reason I came up to you."
if (barChoice == "2") or ("screw" in barChoice):
    user.modify_reputation(-1)
    print "'Calm down - I was joking. I'm here to talk to you about something'"
if (barChoice == "3") or (("sorry") or ("leave") in barChoice):
    user.modify_reputatation(2)
    print "The bartender puts his hand on your shoulder before you can leave.\n'Wait... I was joking. I need to tell you something important."
    print "The bartender pulls up a chair and sits down, staring at you."
    
    
    
