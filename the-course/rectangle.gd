extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
func _draw() -> void:
	var p = get_viewport().get_mouse_position()
	
	var r = get_viewport_rect()
	var h = r.size.x / 4
	
	print("Get Godoed")
	
	if p.x < 2*h:
		draw_rect(Rect2(0, 0, h, r.size.y), Color.CRIMSON, true, 10, true)
		draw_rect(Rect2(h, 0, h, r.size.y), Color.INDIGO, true, 10, true)
		draw_rect(Rect2(2*h, 0, h, r.size.y), Color.ORANGE, true, 10, true)
		draw_rect(Rect2(3*h, 0, h, r.size.y), Color.HOT_PINK, true, 10, true)
	else:
		draw_rect(Rect2(0, 0, h, r.size.y), Color.AQUAMARINE, true, 10, true)
		draw_rect(Rect2(h, 0, h, r.size.y), Color.NAVY_BLUE, true, 10, true)
		draw_rect(Rect2(2*h, 0, h, r.size.y), Color.GREEN_YELLOW, true, 10, true)
		draw_rect(Rect2(3*h, 0, h, r.size.y), Color.GOLD, true, 10, true)
	
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	queue_redraw()
	pass
