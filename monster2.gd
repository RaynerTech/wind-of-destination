# script do mostro 2

extends StaticBody2D

# Variaveis 

var flip = true
var posicao_inicial
var posicao_final
var velocidade = 2.5

# Animação do mostro 2

func _ready():
	$spritemonste.play('run')
	posicao_inicial = $".".position.x
	posicao_final = posicao_inicial + 300
	
	
	
func _process(delta):
	
	# flipa na posição 
	
	if(posicao_inicial <= posicao_final and flip):
		$".".position.x +=  velocidade 
		$spritemonste.flip_h = false
		if($".".position.x >= posicao_final):
			flip = false 
			
	if($".".position.x >= posicao_inicial and !flip):
			$".".position.x -= velocidade 
			$spritemonste.flip_h = true
			if($".".position.x <= posicao_inicial):
				flip = true
				
				
# função de dano do meu mostro
func dano():
	$".".queue_free()
	

	
	

