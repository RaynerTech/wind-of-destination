extends Area2D



func _on_portal_body_entered(body):
	get_tree().change_scene("demos.tscn")
