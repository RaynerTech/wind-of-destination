extends KinematicBody2D


export(int , 1 , 10 ) var vida = 1 
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func dano (quat):
	vida  -=  quat
	if vida <= 0:
		vida = false
		get_node('shap').queue_free()
		get_node('anim').play('morte')
		yield(get_node('anim') , 'finished')
		queue_free()
		
		
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
