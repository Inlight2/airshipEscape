"Airship Escape" by Jenny Tran, Kenneth Cox
[Notes]
[Use [bold type]word[roman type] to make words bolded.]
[See http://inform7.com/learn/man/ex162.html for other font things]


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


[Probably needs a better name]
The Jail 2 is a room.
"You walk into another part of the jail and see a door from which light emanates. It's probably the way out. Where are the guards?"
The Jail 2 is west of the Jail.

The Hallway 1F is a room.
"A hallway stretches out before you. The walls are plain, the lights are dim, and there are rooms all along the hallway. The jail rooms are in the south. A room labeled the 'Exit Room' is to the north. You see a plain door leading to the lounge to the east."
The Hallway 1F is north of the Jail 2.

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
[test]
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
The Crew Quarters is south of the West Hallway 2F.

The Captain's Room is a room.
The Captain's Room is west of the West Hallway 2F.

[The deck of the pirate ship]
The deck is a room.


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


