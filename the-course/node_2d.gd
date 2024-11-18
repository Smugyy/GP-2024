extends Node2D

@export var p = get_viewport().get_mouse_position()
# Called when the node enters the scene tree for the first time.
func _draw() -> void:

	var r = get_viewport_rect()
	r.size.x = r.size.x / 2
	draw_rect(Rect2(r), Color.RED, true, 10, true)
	pass # Replace with function body.
	


func _ready() -> void:
	pass
	
	
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
