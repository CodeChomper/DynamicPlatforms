extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	set_process(true)
	pass

func _process(delta):
	if(self.is_colliding()):
		print("is colliding")
	else:
		var pos = get_pos()
		pos.y += 5
		set_pos(pos)