extends CharacterBody2D

@export var nearby_interactables = []
const SPEED = 300.0
const JUMP_VELOCITY = -600.0
@export var current_scene = ""

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("Crab left", "Crab right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("interact"):
		if nearby_interactables:
			nearby_interactables.back().interact()
func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "crab":
		get_tree().reload_current_scene()


func _on_crab_boundary_body_entered(body: Node2D) -> void:
	if body.name == "crab":
		get_tree().reload_current_scene()


func _on_interactable_area_entered(area: Area2D) -> void:
	pass # Replace with function body.
	print("interactable detected")
	nearby_interactables.append(area)

func _on_interactable_area_exited(area: Area2D) -> void:
	pass # Replace with function body.
	print("interactable removed")
	nearby_interactables.erase(area)
