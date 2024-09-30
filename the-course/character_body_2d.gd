extends CharacterBody2D

@export var bullet_scene:PackedScene
@export var bullet_spawn_point:Node2D
const SPEED = 300.0
const JUMP_VELOCITY = -400.0

const TURN_RATE = 180
func _physics_process(delta: float) -> void:
	
	var r = Input.get_axis("turn left","turn right")
	
	
	var rot = deg_to_rad(r * TURN_RATE * delta) 
	
	var s = Input.get_axis("foward", "backwards")
	
	rotate(rot)
	var vel = transform.y * s * SPEED
	velocity = vel
	
	if Input.is_action_pressed("FIRE!!!"):
		var b = bullet_scene.instantiate()
		b.global_position = bullet_spawn_point.global_position
		get_parent().add_child(b)
	
	
	
	
	move_and_slide()
