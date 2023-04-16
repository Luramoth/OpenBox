extends Node3D

@export var speed:Vector3 = Vector3.ZERO

var object:Node3D

func _ready():
	object = self.get_parent()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	object.rotation += speed * delta
