import random
subject = ["Thou", "mother", "father", "face", "eyes", "hair", "lips", "half-removed brother", "sword", "hands", "bosom", "feet"]
superlative = ["sillier", "poorer", "fatter", "uglier", "less skilled", "more frightening", "more jubilant", "more heartless", "more cowardly", "stranger", "more amusing", "less interesting"]
adjective = ["witty", "crazy", "impeccable", "violent", "idiotic", "angsty", "arrogant", "baby-faced", "fascinating", "slightly arousing", "charming", "surprisingly helpful", "incestuous", "curious", "weaboo", "scandalous", "extravagant", "terrifying", "witty", "comical", "adorable", "perverse", "sweet", "preposterous"]
noun = ["swine", "Romeo and Juliet", "peacocks", "feuding families", "cherubs", "star-crossed lovers", "Hamlet", "kings of England", "Hamlet's mother", "pack of ruffians", "gang of peddlers", "kings and queens", "Dung beetle","merrymen", "town crier", "harem of women"]
stuff = ["in", "under", "near", "close to", "within", "around",  "underneath", "outside", "inside", "betwixt", "from", "coming from", "entering", "escaping", "avoiding", "leaving", "pondering", "contemplating", "examining"]
places = ["the moonlight", "the stars", "the sea", "a castle", "a reflection", "a jail cell", "some scaffolding", "the town square", "a church", "the catacombs", "clouds", "a cellar", "a cemetery", "a mirror", "a bridge"]
subjectX = subject[random.randint(0, len(subject) - 1)]
superlativeX = superlative[random.randint(0, len(superlative) - 1)]
adjectiveX = adjective[random.randint(0, len(adjective) - 1)]
nounX = noun[random.randint(0, len(noun) - 1)]
stuffX = stuff[random.randint(0, len(stuff) - 1)]
placesX = places[random.randint(0, len(places) - 1)]
if (subjectX == "Thou"):
    phrase = subjectX + " art " + superlativeX + " than " + adjectiveX + " " + nounX + " " + stuffX + " " + placesX + "\n"
else:
    phrase = "Thine " + subjectX + " art " + superlativeX + " than " + adjectiveX + " " + nounX + " " + stuffX + " " + placesX + "\n"
    print phrase

print("Would you like to save this phrase?")
savePhrase = raw_input("")
if ((savePhrase == "yes") or (savePhrase == "y")):
	f = open("phrases.txt", "a")
   	f.write(phrase)
	f.close()
elif ((savePhrase == "no") or (savePhrase == "n")):
	print("Ok, thanks for using the program!")
else:
	print("Sorry, I didn't understand that.")
