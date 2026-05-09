extends CharacterBody2D
@export var move_speed = 250
@export var nearby_interactables = []

func _physics_process(_delta: float) -> void:
	velocity = Vector2.ZERO
	var direction = Input.get_vector("wave_left", "wave_right", "wave_up", "wave_down")
	if direction:
		velocity= direction.normalized()*move_speed
	#if Input.is_action_just_pressed("Interact"):
		if nearby_interactables:
			nearby_interactables.back().interact()
	move_and_slide()


#func _on_wave_boundary_area_shape_exited(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	#pass # Replace with function body.
	#if CharacterBody2D.name == "player2(wave)":
		#get_tree().change_scene_to_file("res://scene_1.tscn")
