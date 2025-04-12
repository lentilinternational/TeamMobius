extends CharacterBody2D

@onready var actionable_finder: Area2D = $ActionableFinder

var speed = 300

func get_input():
	var input_dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_dir * speed

func _physics_process(delta):
	get_input()
	move_and_collide(velocity * delta)

func _unhandled_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		var actionable = actionable_finder.get_overlapping_areas()
		if actionable.size() > 0:
			actionable[0].action()
			return
			
