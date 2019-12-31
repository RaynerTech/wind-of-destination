extends KinematicBody2D

export var queda_tempo = 1.0

var vel = 0


func _ready():
	get_node('queda_time').set_wait_time(queda_tempo)



func _fixed_process(delta):
	translate(Vector2(0,1) * vel * delta)
	vel += 10


func _on_sensor_body_entered(body):
	get_node('anime').play('treme')
	get_node('queda_time').start()

func _on_sensor_body_exited(body):
	get_node('anime').stop()
	get_node('sprites').set_pos(Vector2())
	



func _on_queda_time_timeout():
	set_fixed_process(true)
  