extends TextureFrame

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	var cs = self.get_node("./StaticBody2D/CollisionShape2D")
	var shape = cs.get_shape()
	var texSize = self.get_size()
	var csPos = texSize / 2
	cs.set_pos(csPos)
	shape.set_extents(texSize/2)
	
	
	pass
