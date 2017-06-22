extends KinematicBody2D

const GRAVITY = 20.0
const WALKSPEED = 5.0
const MAX_JUMP_SPEED = 5
var vel = Vector2()
var standing = false
var spr

func _ready():
	set_fixed_process(true)
	spr = get_node("./Sprite")
	pass


func _fixed_process(delta):
	vel.y += delta * GRAVITY
	
	#handle movement
	if(Input.is_action_pressed("ui_left")):
		vel.x = -WALKSPEED
	elif(Input.is_action_pressed("ui_right")):
		vel.x = WALKSPEED
	else:
		vel.x = 0
	if(Input.is_action_pressed("ui_up") && standing and
		abs(vel.y) < MAX_JUMP_SPEED):
		vel.y = -MAX_JUMP_SPEED
		standing = false
	var motion = vel * delta
	if(self.is_colliding()):
		standing = true
		var n = get_collision_normal()
		motion = n.slide(motion)
		vel = n.slide(vel)
		move(motion)
	
	move(vel)
	