def introduction():
    print "Welcome to the game Asgarth!\nYou are immigrating from a foreign land in hopes of making:\n\n1.Fame\n2.Fortune\n3.Power"
    print
    print "First, however, I would like to ask you a few questions..."
    
def greeting():
    
    if (gender == "male") or (gender == "m"):
        print "Welcome to Asgarth, Sir " + name
    elif (gender == "female") or (gender == "f"):
        print "Welcome to Asgarth, Madam " + name
    else:
        print "hmm.. that's a rather peculiar gender"
