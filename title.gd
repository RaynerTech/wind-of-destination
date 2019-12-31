extends Control


func _ready():
	for buttons in $Menu/CenterrRow/buttons/newgame2/Label.get_children():
		buttons.connect("pressed", self, "_on_Button_pressed", [buttons.scene_to_load])  


func _on_newgame2_pressed():
	get_tree().change_scene('res://game.tscn')
	
func _on_Quit4_pressed():
	get_tree().quit()





func _on_TextureButton_pressed():
	get_tree().change_scene('res://game.tscn')


func _on_paly_mobile2_pressed():
		get_tree().change_scene("res://demos.tscn")


func _on_paly_mobile3_pressed():
		get_tree().quit()
