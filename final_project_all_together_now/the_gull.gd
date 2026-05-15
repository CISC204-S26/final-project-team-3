extends Sprite2D
var gull 
@export var movement_speed = 150
@export var movement_direction = Vector2(1,2)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	position = position + movement_speed*movement_direction*delta 


#func _on_crab_boundary_body_entered(body: Node2D) -> void:
	#pass # Replace with function body.
	#position = Vector2(131.0,96.0)
