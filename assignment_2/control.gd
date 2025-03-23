extends Control

@onready var hat = $Hat 
@onready var rabbit = $Rabbit

func _input(event):
	if event is InputEventKey and event.pressed and event.keycode == KEY_H:
		move_hat()

func move_hat():
	var start_position = hat.position
	var end_position = start_position + Vector2(0, 100)  

	# move down
	hat.position = end_position
	
	# wait 
	await get_tree().create_timer(3.0).timeout
	  
	# swap rabbit state of visibility
	if rabbit.visible == false:
		rabbit.visible = true
	
	else:
		rabbit.visible = false
	
	

	# move up
	hat.position = start_position
