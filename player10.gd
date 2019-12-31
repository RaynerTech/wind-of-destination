### /////   Jogo   indie   


extends KinematicBody2D

const UP = Vector2(0, -1)
const GRAVITY = 1500
const SPEED = 160
const JUMP_FORCE = - 550
var life = 3

var motion = Vector2()
var pulo_duplo = false


func _physics_process(delta):
		
	
	motion.y += GRAVITY * delta

	var pulo = Input.is_action_just_pressed('ui_up')
	var pulo_stop = Input.is_action_just_released('ui_up')

# Controles do personagem 
	
	if Input.is_action_pressed("ui_right"):
		motion.x = SPEED
		$sprite.play("run")
		$sprite.flip_h = false
	elif Input.is_action_pressed("ui_left"):
		motion.x = -SPEED
		$sprite.play("run")
		$sprite.flip_h =true
	else:
		motion.x = 0
		$sprite.play("idle")
		
		# pulo do personagem 
		
	if is_on_floor():
		pulo_duplo = true;
		if pulo:
			motion.y =  JUMP_FORCE
			$Jumpfx.play()
		elif pulo_stop and motion.y < 0:
			motion.y  *= 0.5
	else:
		$sprite.play('Jump')
		
		
		
		
		
		# COMTROLE DO PULO DUPLO 
	if pulo_duplo and pulo and not is_on_floor():
		motion.y = JUMP_FORCE
		$Jumpfx.play()
		pulo_duplo = false
		

		
	motion = move_and_slide(motion,Vector2(0,-1))
	
	
	
	

# Hit do personagem e Morte do personagem 



func _on_Area2D_body_entered(body):
	body.dano()
	motion.y = JUMP_FORCE


func _on_hIT_body_entered(body):
	life = life -1 
	if life == 0:
		get_node('anim').play('aniplay')
		
		
		
func aniplay():
	$".".queue_free()
	

