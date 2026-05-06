extends CharacterBody2D
@export var move_speed = 250
@export var nearby_interactables = []
var text
func _physics_process(_delta: float) -> void:
	#velocity = Vector2.ZERO
	var direction = Input.get_vector("Crab up", "Crab down", "Crab left", "Crab right")
	if direction:
		velocity= direction.normalized()*move_speed
	move_and_slide()
