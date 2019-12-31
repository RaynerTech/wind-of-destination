extends Control

var scene_path_to_load


func _ready():
	for button in $Menu/CenterrRow/buttons.get_children():
		button.connect('pressed', self, "_on_button_pressed", [button.scene_to_load]) 



func _on_button_pressed(scene_to_load):
	scene_path_to_load = scene_to_load
	$FadeIn.show()
	$FadeIn.fade_in()


func _on_FadeIn_fade_finished():
	get_tree().change_scene(scene_path_to_load)
