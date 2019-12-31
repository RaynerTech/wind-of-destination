extends Control



func _ready():
	for button in $Menu.get_children():
		button.connect('pressed', self, '_on_newgame2_pressed', [button.scene_to_load])  


func _on_newgame2_pressed(scene_to_load):
	get_tree().change_scene('res://game.tscn')
	
