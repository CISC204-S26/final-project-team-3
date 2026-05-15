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
	position.y = clamp(position.y, -110, 0)
	#print(position)
	move_and_slide()
