extends Control


func _input(event):
	if event.is_action_pressed('pause'):
		var new_pause_state = not get_tree().paused
		get_tree().paused = new_pause_state
		visible = new_pause_state



func _on_pausecontinue_pressed():
	get_tree().change_scene('res://game.tscn')


func _on_quit_pressed():
	get_tree().quit()