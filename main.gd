extends Control

onready var tie = get_node("panel/text_interface_engine")

func select_demo(i):
	tie.reset()
	if(i == 1):
		"A Beautiful Song"
		# by Rayner Tech
		tie.set_color(Color(1,1,1))
		
		tie.buff_text("Todos direitos resevados: Rayner Tech sofware \n", 0.1)
		tie.buff_text(" Programming: Rayner Patrick \n", 0.1)
		# Buff silence: Duration of the silence (in second
		tie.buff_silence(1)
		#tie.buff_text(, 0.1)
		tie.buff_text(" Animator: Rayner Patrick \n", 0.1)
		tie.buff_silence(1)
		#tie.buff_text("I love this song, ", 0.1)
		tie.buff_text(" 2D Artist: Rayner Patrick \n", 0.1)
		#tie.buff_silence(1)
		#tie.buff_text("But now I'll ", 0.1) # WAIT FOR THE DROP
		#tie.buff_text("DROP", 0.02) # ?????
		#tie.buff_silence(0.4)
		tie.buff_text(" Level Design: Rayner Patrick", 0.1) # !!!!!
		#tie.buff_silence(0.4)
		#tie.buff_text("TVUVTUVUTUVU WOODBODBOWBDODBO TUUVUTVU WODWVDOOWDV WODOWVOOWDVOWVD DUBDUBDUBUDUDB OWVDOWVWDOWVDOWVDOWVDWVDOWVDOWVODV", 0.04) # I firmly believe this particular verse is my Magna Opus.
	elif(i == 2):
		tie.set_color(Color(1,1,0.3))
		# If velocity is 0, than whole text is printed 
		tie.buff_text(" Estamos numa fase de varios desafios.  O estagio atual, no qual testamos ideias para saber se sao interessantes ou nao, esperamos ter suporte da comunidade. Estamos trabalhando nas partes centrais para a partir dai termos um produto estavel. Esse e o nosso desafio nesse momento.",0)
	elif(i == 3):
		tie.set_color(Color(0.3,1,1))
		# Schedule an Input in the buffer, after all
		# the text before it is displayed
		tie.buff_text("oi!! Qual e o teu nome?\n", 0.01)
		tie.buff_input()
	tie.set_state(tie.STATE_OUTPUT)

func _ready():
	# Add the demos in the list
	get_node("demos_list").set_focus_mode(0)
	get_node("demos_list").add_item("selecione")
	get_node("demos_list").add_item("Creditos")
	get_node("demos_list").add_item("Aviso ")
	get_node("demos_list").add_item("Input")
	
	# Connect every signal to check them using the "print()" method
	tie.connect("input_enter", self, "_on_input_enter")
	tie.connect("buff_end", self, "_on_buff_end")
	tie.connect("state_change", self, "_on_state_change")
	tie.connect("enter_break", self, "_on_enter_break")
	tie.connect("resume_break", self, "_on_resume_break")
	tie.connect("tag_buff", self, "_on_tag_buff")
	pass

func _on_demos_list_item_selected( ID ):
	select_demo(ID)

func _on_input_enter(s):
	print("Input Enter ",s)
	
	tie.add_newline()
	tie.buff_text("E um prazer " + s + "! Seu nome e super legal! Espero que voce goste da nossa versao completa.", 0.01)
	pass

func _on_buff_end():
	print("Buff End")
	pass

func _on_state_change(i):
	print("New state: ", i)
	pass

func _on_enter_break():
	print("Enter Break")
	pass

func _on_resume_break():
	print("Resume Break")
	pass

func _on_tag_buff(s):
	print("Tag Buff ",s)
	pass