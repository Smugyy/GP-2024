extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

@export var speed:float = 250
@export var rot_speed:float = 5
var s = speed
var rs = rot_speed
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#rotate((rot_speed * delta))
	#translate(Vector2(0,speed * delta))
	#global_translate(Vector2(0, speed * delta))
	if Input.is_key_pressed(KEY_S):
		translate(Vector2(0, s * delta))
	if Input.is_key_pressed(KEY_LEFT):
		rotate((-rs * delta))
	if Input.is_key_pressed(KEY_RIGHT):
		rotate((rs * delta))
	if Input.is_key_pressed(KEY_D):
		translate(Vector2(s * delta, 0))
	if Input.is_key_pressed(KEY_A):
		translate(Vector2(-s * delta, 0))
	if Input.is_key_pressed(KEY_W):
		translate(Vector2(0, -s * delta))
	if Input.is_key_pressed(KEY_SHIFT):
		s = s * 2 
		rs = rs / 2 
	if not Input.is_key_pressed(KEY_SHIFT):
		s = s
		rs = rs
	
	
	
	
	
	
	
	
	pass
