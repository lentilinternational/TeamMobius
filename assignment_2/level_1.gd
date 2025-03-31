extends Node2D


func _on_check_button_toggled(toggled_on: bool) -> void:
	if toggled_on:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)

	


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://level_2.tscn")


func _input(event):
	if event is InputEventKey and event.pressed:
			if event.keycode == KEY_PLUS or event.keycode == KEY_EQUAL:
				var size = DisplayServer.window_get_size()
				size.x += 10
				size.y += 10
				DisplayServer.window_set_size(size)
				
			elif event.keycode == KEY_MINUS:
				var size = DisplayServer.window_get_size()
				size.x -= 10
				size.y -= 10
				DisplayServer.window_set_size(size)
