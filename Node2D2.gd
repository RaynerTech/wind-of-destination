extends Node2D


var flip = true
var posicao_inicial
var posicao_final
var velocidade = 0.5 

func _ready():
	$sprite.play()
	posicao_inicial = $".".position.x
	posicao_final = posicao_inicial + 100
	
	
func _process(delta):
	print($".".position.x)
	if(posicao_inicial <= posicao_final and flip):
		$".".position.x += velocidade 
		$sprite.flip_h = true
		if($".".position.x >= posicao_final):
			flip = false
			
	if($".".position.x >= posicao_inicial and !flip):
		$".".position.x -= velocidade
		$sprite.flip_h = false
		if($".".position.x <= posicao_inicial):
		 flip = true
		