import engine
from classes import *

#Character Creation
invalidSelection = False
while True:
    engine.introduction()
    if (characterAccept == "y") or (characterAccept== "yes"):
        break
        break
    print 
    name = raw_input("What is your name, adventurer?: ").capitalize()
    print 
    gender = raw_input("What is your gender?").lower()
    print 
    engine.greeting()
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
    
    
    
