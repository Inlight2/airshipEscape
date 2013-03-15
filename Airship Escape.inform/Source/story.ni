"Airship Escape" by Jenny Tran, Kenneth Cox
[Notes]
[Use [bold type]word[roman type] to make words bolded.]
[See http://inform7.com/learn/man/ex162.html for other font things]

When play begins:
	say "[bold type]You wake up in a cold place. Your head hurts a little, but it seems like the pain is starting to fade away. You stretch, pick yourself up, and stumble slightly forward. You reach your hand out to grab something to balance yourself, and your hand touches cold, iron bars. That's when you realize it -- you're behind bars! [line break] 'Ha ha, are you awake now? Welcome to the pirate ship, young man.' [line break]You look up to see an old man sitting on a wooden bench in the jail cell next to you, but it's dim and you can't quite make out the expression on his face. You take a good look around. You're definitely in a jail cell. You regain your balance and straighten your robes. Ah that's right, you're a wizard. A wizard on what is, apparently, a pirate ship. Something tells you that it's time to make an escape. [roman type] [line break]"
	
When play ends:
	say "[bold type] You hold your breath, close your eyes, then jump into the portal and end up in an alleyway, just a few feet above the ground. After a few seconds of suspense, gravity grabs you in its rather unforgiving clutches, and you fall to the ground. You stand up, your body still in slight pain, and stumble out of the alleyway into the busy streets of Waffle Town. No one seems to pay much attention to you as you brush the dirt off your clothes. Hesitating a bit, you look up into the vast, clear, blue sky and are only greeted by the bright sun. The pirate airship is nowhere in sight. You breath a sigh of relief, but feel a faint sense of pain mixed with anger in your chest. Yes, you've still got to avenge your comrades one day. But that's okay; you know by the time you're strong enough to avenge them, that airship will be unable to hide from your soon-to-be powerful magic. With a nod to yourself, you start to head towards the mage tower in the distance. [roman type] [line break]"

Rule for implicitly taking something (called target):
	try silently taking the target;
	if the player carries the target, say "You pick up [the target] first."
	
A lightable is a kind of thing.
Lighting is an action applying to one thing.
Understand "light [thing]" as lighting.
Understand "cast fire on [thing]" as lighting.

Check lighting:
	unless the noun is lightable, say "You consider lighting the [noun] but realize that it would be silly to do so."
	
Check lighting:
	unless the noun is not lightable, say "You hold your hand out in a fist, then open it slowly. Your hand warms up as a dancing ball of flame forms above your palm. With a gentle flick of your wrist, the flames fly out of your hand and to the [noun]. Now it is on fire.";
	now the noun is lit.

[The first floor of the pirate ship]
The Jail is a room.
"The [light] above you is dim. Your jail cell is open. You can leave through the west doorway.".
The light is scenery in the Jail.
Instead of examining the light:
	say "There is a light fixture hanging above you. The light obviously hasn't been replaced in a while. You can barely see anything in such dim lighting!".
	
[Old man stuff]
The old man is a person.
"There is an old man sitting on a wooden bench in a jail cell next to you."
The old man is in the Jail.
Wooden bench is scenery in the Jail.
Instead of telling the old man about something:
	say "The old man says, 'Big deal.'".
Instead of asking the old man about "exit": 
	say "The old man says, 'If ya want to get off the pirate ship, yer gonna have to leave through the exit door.'"
Instead of asking the old man about "journal page 1":
	say "The old man says, 'Oh yeah, that.'"
Instead of asking the old man about "golden key":
	say "The old man says, 'Ah yes, the captain's golden key. That's how ya get out of this damn place. It's the key that opens the portal. Too bad he's always carryin[apostrophe] it with him. Maybe if ya can catch him asleep, ya can nab it and make a run fer it.'"
Instead of asking the old man about something:
	say "The old man says, 'I don't know what I can tell ya.'"
	
[Make a locked jail door which requires a key from the west jail to open]
The Jail Door is a door.
The Jail Door is locked.
The Jail Door is north of the West Jail and south of the Hallway 1F.
The matching key of the Jail Door is the silver key.

[West Jail is the first puzzle sort of]
The West Jail is a room.
The description is "You see that there are no guards around. Now to escape!"
The West Jail is west of the Jail.
The West Jail is dark.

Rule for printing the description of a dark room:
	say "You walk into another part of the jail. It's pitch black. You're sure you can light it up with fire." instead.

A pot is in the West Jail.
A pot is a container.
A pot is closed and openable.
A silver key is in the pot.

There is a torch in the Jail.
"You see a torch that looks lightable. You recall a fire spell that you learned when you first became a wizard."
The torch is lightable.

After unlocking:
	if the location of the player is the west jail:
		say "The jail door opens. You can go north into the light.".

[Make the first floor hallway]
The Hallway 1F is a room.
"A hallway stretches out before you. The walls are plain, the lights are dim, and there are rooms all along the hallway. The jail rooms are in the south. A room labeled the 'Exit Room' is to the north. You see a plain door leading to the lounge to the east.".

[The lounge connects the servant rooms]
The Lounge is a room.
"It's a small area with two doors, one to the north and one to the east. There is a table in the middle of the room, on top of which lies a dirty tablecloth and an old photograph. There are wooden chairs scattered about the room and an uncomfortable-looking couch to the side."
The table is scenery in the lounge.
The tablecloth is scenery in the lounge.
Wooden chairs are scenery in the lounge.
The photograph is in the lounge.

Instead of examining the photograph:
	say "It's a picture of the captain and a huge, [bold type]golden key[roman type] attached to his belt."

[Make a lounge door]
The Lounge Door is a door.
The Lounge Door is east of the Hallway 1F and west of the Lounge.

[Make the North Servant Room]
The North Servant Room is a room.
"You walk into the room lined with a handful of beds. There is no one around."
Beds are scenery in the lounge.

[Logic for reading]
A thing has some text called printing.
The printing of a thing is usually "blank".
Understand the command "read" as something new.
Understand "read [something]" as reading. 
Reading is an action applying to one thing, requiring light.
Check reading: if the printing of the noun is "blank", say "You can only read journal pages, silly." instead.
Carry out reading: say "[printing of the noun]". Report reading: do nothing.

Journal Page 2 is a thing in the North Servant Room.
The description is "It's a journal page that looked like it was torn out carelessly. Something tells you that there's more than one lying around this ship."
The printing of the Journal Page 2 is "Page 2 reads: 'We won the battle against the wizards!'"

[Make the North Servant Room door]
The North Servant Room Door is a door.
The North Servant Room Door is south of the North Servant Room and north of the Lounge.

[Make the East Servant Room]
The East Servant Room is a room.
"You walk into the room lined with a handful of beds. There is no one around."
Beds are scenery in the lounge.

Journal Page 3 is a thing in the East Servant Room.
The description is "It's a journal page that looked like it was torn out carelessly. Something tells you that there's more than one lying around this ship."
The printing of the Journal Page 3 is "Page 3 reads: 'We lost many in the battle.'"

[Make the East Servant Room door]
The East Servant Room Door is a door.
The East Servant Room Door is east of the Lounge and west of the South Servant Room.

[Make the Exit Room and door]
The Exit Room is a room.
"You notice a door with a giant, golden lock in the small, empty room. There is no door handle. You cannot open it without the key."
The Exit Room Door is a door.
The Exit Room door is south of the Exit Room and north of the Hallway 1F.
The Exit Room Door is locked.

		
[Examining fixes the problem of it prompting for an answer after entering the exit room. What? :I ]
After examining the Exit Room Door:
		now the command prompt is "Please enter your answer now. >";
		continue the action.
After reading a command when the command prompt is "Please enter your answer now. >":
	increment the turn count;
	if the player's command matches "test":
		now the Exit Room Door is unlocked;
		say "You unlocked the door.";
		now the command prompt is ">";
	otherwise:
		say "The door remains closed.";
	reject the player's command.


[The second floor of the pirate ship]
The East Hallway 2F is a room.
"The hallway is decorated with a chocolate-colored wall and light brown polished floorboards that dully reflect the flourescent lights above you. The kitchen is to the north and the bathroom is to the south".
The walls are scenery in the East Hallway 2F.
"These walls look almost edible."
The floorboards are scenery in the East Hallway 2F.
"On closer inspection, you conclude that these floorboards could use a bit of scrubbing."
The flourescent lights are scenery in the East Hallway 2F.
"The flourescent lights are a lot brighter here than that little light in the jail, at least."

The West Hallway 2F is a room.
"The hallway is decorated with a chocolate-colored wall and light brown polished floorboards that dully reflect the flourescent lights above you. The dining room is to the north, the crew quarters is to the south, and the captain's room is to the west.".
The West Hallway 2F is west of the East Hallway 2F.
The chocolate walls are scenery in the West Hallway 2F.
"These walls look almost edible."
The brown floorboards are scenery in the West Hallway 2F.
"On closer inspection, you conclude that these floorboards could use a bit of scrubbing."
The bright flourescent lights are scenery in the West Hallway 2F.
"The flourescent lights are a lot brighter here than that little light in the jail, at least."

The Kitchen is a room.
"The kitchen is warm and small, and there is a faint, pleasant aroma of waffles."

The Kitchen is north of the East Hallway 2F.
[waffle]
The Waffle is a thing.
The description of the waffle is "The waffle is still warm, cooked to a perfect golden brown color. Who or what WOULDN'T want to eat a waffle this good?"
The Waffle is in the Kitchen.
combinable of The waffle is true.

[can't grab the waffle when the cook is in the room]
Instead of taking the waffle while the cook is in the kitchen:
	say "You are about to get the waffle but realise that if you get any closer the cook will see you!  You're not going back to prison for a waffle!";
	stop the action.

The Bathroom is a room.
"It's a small bathroom. Your expectations of the cleanliness of the small bathroom on a giant pirate ship are met."
The Bathroom is south of the East Hallway 2F.
A toilet is a thing.  
The description of the toilet is "There is a wooden bench pushed up against the back wall.  This bench has a hole in it.  You can probably guess why."
A toilet is in the Bathroom.

The hole is a thing. "You look down into the hole in the bench.   The smell alone almost makes you vomit.  You can't see anything in the dark hole, but it almost sounds like something is sloshing around in there."
The hole is in the Bathroom.
The hole is scenery.

[monster in the bathroom]
The monster is a thing.  
The description of the monster is "You can't see anything in the dark hole.".
The monster is in the bathroom.

The Dining Room is a room.
The Dining Room is north of the West Hallway 2F and west of the Kitchen.

Check going from the Dining Room to West Hallway 2F:
	if on fire of the table cloth is true:
		say "As you leave, you can hear the chef rushing in to try to put the fire out.";
		now the cook is in the dining room.

[table clothes +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++]
Cloths are a kind of thing.
Cloths has some truth state called on fire.
The on fire of a Cloths is usually false.

The table cloth is a Cloths.
The dining table is a thing.
The dining table is in the dining room.
The table cloth is on the dining table.

instead of lighting something while the noun is the table cloth:
	say "You hold your hand out in a fist, then open it slowly. Your hand warms up as a dancing ball of flame forms above your palm. With a gentle flick of your wrist, the flames fly out of your hand and to the [noun]. Now it is on fire.";
	now the on fire of the noun is true;

The Crew Quarters is a room.
The note is in the Crew Quarters.
The printing of the note is "time whale"

The Captain's Room is a room.

[floor 2 NPCs]

The Captain is a man.
The Captiain is in The Captain's Room.

The Cook is a man.
The Cook is in the kitchen.

[Doors for the 2nd floor]
The Captain's Door is a door."The captain's door has the word 'Captain' writen across the top.  There is no door nob or key hole.  On a plaque on the door there is the message [line break] 'Only those with the password may enter to speak to the captain.'"
The Captain's Door is locked.
The Captain's Door is west of The West Hallway 2F and east of The Captain's room.
The Captain's Door is scenery.

[door password]
After examining The Captain's Door:
	now the command prompt is "Say the password. >";
	continue the action.
	[check password]
After reading a command when the command prompt is "Say the password. >":
	increment the turn count;
	if the player's command matches "time whale": 
		now The Captain's Door is unlocked;
		say "You hear a click inside the door, and it silently swings ajar.";
		now the command prompt is ">";
		reject the player's command;
		now the Captain's Door is unlocked;
	otherwise:
		say "nothing happens";
		now the command prompt is ">";
		reject the player's command.

The Crew Quarters Door is a door.
The Crew Quarters Door is locked.
The Crew Quarters Door is north of The Crew Quarters and south of The West Hallway 2F.

The Crew Quarters Key is a thing.
The Crew Quarters Key unlocks The Crew Quarters Door.

[The deck of the pirate ship]
The deck is a room. "The deck is the highest level of the ship.  All around you is space? or sky or something?  There are fishing poles on a rack."

[fishing pole]
Fishing Rod is a thing. "There is a fishing rod".
Fishing Rod are in the Deck.
combinable of Fishing Rod is true.

Baited Fishing Rod is a thing. "The fishing rod now has some bait on the hook.  Lets get fishing!".

[logic for combining the fishing rod with the bait]
A thing has some truth state called combinable.  The combinable of a thing is usually false.
Combining is an action applying to two things.
Understand "combine [something] with [something]" as Combining.
Understand "combine [something] and [something]" as Combining.
Check Combining when the combinable of the noun is false:
	instead say "cannot combine.";
	stop the action.
Check Combining when the combinable of the second noun is false:
	instead say "cannot combine.";
	stop the action.
Check Combining when the noun is the second noun:
	instead say "you cannot combine the same object to itself";
	stop the action.
	
Report Combining something:
	remove the noun from play;
	remove the second noun from play;
	say "You combine [the noun] with [the second noun] and produce a baited fishing rod";
	now the player has a Baited Fishing Rod.
	
[Fishing]
Fishing is an action applying to one object.
Understand "Fish with [something]" as Fishing.
Check Fishing:
	if location of player is the Deck:
		if the noun is a fishing rod:
			say "You cast the line over the edge of the ship.  You remember the ship is floating in the sky and real in the line.  You didn't catch anything.";
		otherwise:
			if the noun is a baited fishing rod:
				say "You cast the line over the edge of the ship.  You remember the ship is floating in the sky and real in the line.  You didn't catch anything, but the bait is still attached.";
			otherwise:
				say "You can't use [the noun] to fish!";
	otherwise:
		if the location of the player is the Bathroom:
			if the noun is a fishing rod:
				say "You cast the line into the toilet.  You wait a while but nothing takes the bait, er nothing takes the string.  Maybe you should get some bait.";
			otherwise:
				if the noun is a baited fishing rod:
					say "You cast the line into the toilet.  You can hear the creature moving through the filth towards the bait.  There a tug on the string and you real it in.  You now have a very stanky fish!";
					now the player has Crew Quarters Key;
				otherwise:
					say "You can't use [the noun] to fish!";
		otherwise:
			say "there is no where to fish here".

[Elevator stuff]
Table of Floors
level	floor
1 	Hallway 1F
2	East Hallway 2F
3	Deck

The Elevator is a room. "To operate: Press number."

The elevator exterior is a backdrop. It is not scenery. The initial appearance of the elevator exterior is "You can enter the elevator here." It is in the Hallway 1F, East Hallway 2F, and Deck.
Before entering the elevator exterior, try going inside instead.
Instead of going inside in the presence of the elevator exterior: 
	if there is a level corresponding to a floor of the location in the Table of Floors: 
		let the present level be the level corresponding to a floor of the location in the Table of Floors; 
		now the current level of the Elevator is the present level; 
	move the player to the Elevator.
	
The Elevator has a number called current level. The current level of the Elevator is 1. Instead of going up in the Elevator: say "You'll have to select a specific floor; your options range from 1 to 3." Instead of going down in the Elevator: try going up instead. The Lobby is outside from the Elevator.

Before going outside in the Elevator: 
	if there is a floor corresponding to a level of the current level of the Elevator in the Table of Floors: 
		let the other place be the floor corresponding to a level of the current level of the Elevator in the Table of Floors; 
		move the player to the other place instead; 

Understand "push [number]" as pressing button. Understand "push [number] button" as pressing button. Understand "push button [number]" as pressing button. Pressing button is an action applying to one number.
Check pressing button: 
	if the player is not in the Elevator, say "You cannot control the express panoramic elevator unless you are yourself inside." instead; 
	if the number understood is the current level of the Elevator, say "You feel silly as the elevator doors open, because you were already on floor [number understood]." instead;
	if the number understood is greater than 3, say "There are only 3 floors in ths magnificent pirate ship." instead; 
	if the number understood is less than 0, say "You can't go that far down, silly." instead.
Carry out pressing button: 
	now the current level of the Elevator is the number understood; 
	say "You press button [the number understood]. The elevator whirs into action and moves to the correct level."
	
Understand "leave elevator" as exiting. Understand "exit elevator" as exiting.
Check exiting:
	if the player is not in the Elevator, say "You need to be in the elevator first." instead.

After reading a command when the player's command matches "waffle":
	now the player has a waffle;
	now the player is in the kitchen.
After reading a command when the player's command matches "pancake":
	now the player is in the Hallway 1F.

