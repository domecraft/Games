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
        self.income = income
        self.reputation = reputation
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
