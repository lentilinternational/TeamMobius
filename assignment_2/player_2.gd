extends RigidBody3D

func _process(delta: float) -> void:
		var input := Vector3.ZERO
		input.x = Input.get_axis("move_left2", "move_right2")
		input.z = Input.get_axis("move_forward2", "move_down2")
		
		apply_central_force(input * 1200.0 * delta)
