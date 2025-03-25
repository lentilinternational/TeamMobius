extends Control

func _input(event):
	if event is InputEventKey and event.pressed and event.keycode == KEY_C:
		create_sprite()  # Call the function to create a new sprite when 'C' is pressed
var array = []
# my_array is now [1, 2, 3, 4]
func create_sprite():
	# Create a new Sprite2D node
	var new_sprite = Sprite2D.new()
	array.append(new_sprite)
	
	# Load a texture and assign it to the sprite (you can replace this with any texture path)
	new_sprite.texture = preload("res://image.webp")  # Replace with your texture path
	
	# Set the sprite's position (e.g., mouse position or any position you want)
	new_sprite.position = get_global_mouse_position()  # Set the position to the mouse location
	
	# Add the new sprite as a child to this node (the Control node)
	add_child(new_sprite)
