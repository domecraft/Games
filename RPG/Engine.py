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
