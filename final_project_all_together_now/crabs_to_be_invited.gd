extends interactable

func interact():
	global_crabs.crabs_collected = global_crabs.crabs_collected + 1 
	print(global_crabs.crabs_collected)
	queue_free()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
