extends Control

func _input(event): 	
	while Input.is_action_pressed("jump"):
		print("you have pressed jump")
		await get_tree().create_timer(0.25).timeout
	
		
	while Input.is_action_pressed("move_left"):
		print("you have pressed left")
		await get_tree().create_timer(0.25).timeout
