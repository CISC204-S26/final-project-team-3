extends Area2D
#var gull 
#var movement_speed = 150
#@export var movement_direction = Vector2(1,2)
#@onready var start_pos = position

# Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#pass # Replace with function body.

#func _on_crab_boundary_body_entered(body: Node2D) -> void:
	#pass # Replace with function body.
	#position = start_pos
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass
	#position = position + movement_speed*movement_direction*delta 
