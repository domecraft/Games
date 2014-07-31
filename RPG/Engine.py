class character:
    def __init__(self, name, gender ,health, race, role, status, strength, defense, magic, bounty):
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
        
    def modify_income(self, income):
        self.income += income
    
    def modify_pop(self, population):
        self.population += population
    
def introduction():
    print "Welcome to the game Asgarth!\nYou are immigrating from a foreign land in hopes of making:\n\n1.Fame\n2.Fortune\n3.Power"
    print "First, however, I would like to ask you a few questions"
def greeting():
    
    if (gender == "male") or (gender == "m"):
        print "Welcome to Asgarth, Mr. " + name
    elif (gender == "female") or (gender == "f"):
        print "Welcome to Asgarth, Ms. " + name
    
#Character creation
characterCreationFinished = False
while characterCreationFinished == False:
    print ""
    name = raw_input("What is your name, adventurer?: ")
    print ""
    gender = raw_input("What is your gender?").lower()
    print ""
    greeting()
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
    
    role = str(raw_input ("What did you study before you arrived?\n1.Magic\n2.Warfare\n3.History\n" ))
    if (role == "1") or (role == "magic"):
        magic += 3
    if (role == "2") or (role == "warfare"):
        strength += 3
    if (role == "3") or (role == "history"):
        defense +=3
        

    
            
        
