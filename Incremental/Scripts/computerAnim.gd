extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_node_2d_pressed() -> void:
	if frame + 1 >= sprite_frames.get_frame_count(animation):
		frame = 0  # Loop back to the start
	frame += 1
	

	
