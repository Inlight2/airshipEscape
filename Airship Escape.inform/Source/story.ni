"Airship Escape" by Jenny Tran, Kenneth Cox
[Notes]
[Use [bold type]word[roman type] to make words bolded.]
[See http://inform7.com/learn/man/ex162.html for other font things]


A pirate is a person.
The pirate captain is a person.

[Define some spells]
Casting is an action applying to nothing.
Understand "cast" as casting.
Understand "cast spell" as casting.
Understand "chant" as casting.

Report casting:
	say "You cast a spell. It does nothing."

[The first floor of the pirate ship]
The Jail is a room.
"The [light] above you is dim. Your jail cell is open. You can leave through the west doorway."
The light is scenery in the Jail.
Instead of examining the light:
	say "There is a light fixture hanging above you. The light obviously hasn't been replaced in a while. You can barely see anything in such dim lighting!"
	
The old man is a person.
"There is an old man sitting on a wooden bench in a jail cell next to you."
The old man is in the Jail.
Wooden bench is scenery in the Jail.
Instead of telling the old man about something:
	say "The old man says, 'Big deal.'"
Instead of asking the old man about something: 
	say "The old man says, 'I've got nothing to say!'"

The West Jail is a room.
"You walk into another part of the jail and see a door from which light emanates. It's probably the way out. Where are the guards?"
The West Jail is west of the Jail.
The West Jail is dark.

The Hallway 1F is a room.
"A hallway stretches out before you. The walls are plain, the lights are dim, and there are rooms all along the hallway. The jail rooms are in the south. A room labeled the 'Exit Room' is to the north. You see a plain door leading to the lounge to the east."
The Hallway 1F is north of the West Jail.

The Lounge is a room.
"It's a small area with two doors, one to the north and one to the east. There is a table in the middle of the room, on top of which lies a dirty tablecloth. There are wooden chairs scattered about the room and an uncomfortable-looking couch to the side."
The table is scenery in the lounge.
The tablecloth is scenery in the lounge.
Wooden chairs are scenery in the lounge.
The Lounge is east of the Hallway 1F.

The North Servant Room is a room.
"You walk into the room lined with a handful of beds. There is no one around."
Beds are scenery in the lounge.
The Servant Room 1 is north of the Lounge.

The South Servant Room is a room.
"You walk into the room lined with a handful of beds. There is no one around."
Beds are scenery in the lounge.
The Servant Room 2 is east of the Lounge.

The Exit Room is a room.
"You notice a door with a giant, golden lock in the small, empty room. There is no door handle. You cannot open it without the key."
The Exit Room is north of the Hallway 1F.

[The second floor of the pirate ship]
The East Hallway 2F is a room.

The West Hallway 2F is a room.
The West Hallway 2F is west of the East Hallway 2F.

The Kitchen is a room.
The Kitchen is north of the East Hallway 2F.

The Bathroom is a room.
The Bathroom is south of the East Hallway 2F.

The Dining Area is a room.
The Dining Area is north of the West Hallway 2F and west of the Kitchen.

The Crew Quarters is a room.

The Captain's Room is a room.

[floor 2 NPCs]

The Captain is a man.
The Captiain is in The Captain's Room.

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
	if the player's command matches "password": 
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

The Crew Quarters Key is an object.
The Crew Quarters Key unlocks The Crew Quarters Door.

[The deck of the pirate ship]
The deck is a room. "The deck is the highest level of the ship.  All around you is space? or sky or something?  There are fishing poles on a rack."

[fishing pole]
Fishing Pole is a thing. "There are several fishing poles all ready to go.".
Fishing Pole is portable.
Fishing Pole is in the Deck.
combinable of Fishing Pole is true.

[logic for combining the fishing rod with the bait]
A thing has some truth state called combinable.  The combinable of a thing is usually false.
Combining is an action applying to two things.  Understand "combine [something] and [something]" as Combining.
Check Combining when the combinable of the noun is false:
	instead say "cannot combine.";
	stop the action.
Check Combining when the combinable of the second noun is false:
	instead say "cannot combine.";
	stop the action.
[Report Combining something and something:
	remove the noun from play;
	remove the second noun from play.]

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


