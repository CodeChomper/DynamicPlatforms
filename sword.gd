extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var vel = Vector2()
func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_fixed_process(true)
	pass

func _fixed_process(delta):
	move(vel)
	if(self.is_colliding()):
		print("sword hit")