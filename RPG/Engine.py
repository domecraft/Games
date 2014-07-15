class character:
    def __init__(self, name, health, race, status, strength, defense ):
        self.name = name
        self.health = health
        self.status = status
        self.strength = strength
        self.defense = defense
        self.race = race
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

class store:
    def __init__(self, name  = "General Store" , owner = "Store Owner", alliance = "Rebellion"):
        self.name = name
        self.store_owner = owner
        self.alliance = alliance
        self.stock = {
            'longsword': {'cost': 10, 'speed': 3, 'strength': 7, 'defense': 2},
            'shortsword': {'cost': 8, 'speed': 5, 'strength': 4, 'defense': 2},
            'bronze_armor': {'cost': 10, 'speed': -2, 'strength': 1, 'defense': 6},
            'silver_armor': {'cost': 20, 'speed': -5, 'strength': 2, 'defense': 12}
            }
       
            
        
