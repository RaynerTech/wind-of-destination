extends KinematicBody2D

const FRICTION =-20
var speed = Vector2()
var acceleration = Vector2()
var direction = 1


func _ready():
	set_fixed_process(true)
	
func _fixed_process(delta):
	acceleration.y = 0
	acceleration.x = 50
	speed.x = (acceleration.x * direction * delta)
	speed.y = (acceleration.y * delta)
	move(speed)
	



