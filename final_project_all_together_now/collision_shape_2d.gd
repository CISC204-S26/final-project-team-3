extends CollisionShape2D
var gull 
var movement_speed = 250
var movement_direction = Vector2(1,0.2)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	position = position + movement_speed*movement_direction*delta 
