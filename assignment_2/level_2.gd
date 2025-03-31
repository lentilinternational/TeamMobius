extends Node2D

func _input(event):
	if Input.is_physical_key_pressed(KEY_ENTER):
		get_tree().change_scene_to_file("res://level_1.tscn")
	
	if Input.is_physical_key_pressed(KEY_ESCAPE):
		get_tree().quit()


func _on_option_button_item_selected(index: int) -> void:
	if index == 0:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_EXCLUSIVE_FULLSCREEN)
	if index == 1:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
	if index == 2:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
