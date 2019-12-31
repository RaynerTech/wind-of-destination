extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


var credits = [
	[
		"A game by Awesome Game Company"
	],[
		"Programming",
		"Programmer Name",
		"Programmer Name 2"
	],[
		"Art",
		"Artist Name"
	],[
		"Music",
		"Musician Name"
	],[
		"Sound Effects",
		"SFX Name"
	],[
		"Testers",
		"Name 1",
		"Name 2",
		"Name 3"
	],[
		"Tools used",
		"Developed with Godot Engine",
		"https://godotengine.org/license",
		"",
		"Art created with My Favourite Art Program",
		"https://myfavouriteartprogram.com"
	],[
		"Special thanks",
		"My parents",
		"My friends",
		"My pet rabbit"
	]
]

var counter = 0



# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass
	
func next_credit():
	if(counter < credits.size()):
		get_node("text").set_text(credits[counter])
		counter += 1

	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
