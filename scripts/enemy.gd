extends Node2D
const speed:=60
var direction:=-1
@onready var ray_castright: RayCast2D = $RayCastright
@onready var ray_castleft: RayCast2D = $RayCastleft
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _process(delta: float) -> void:
	if ray_castright.is_colliding():
		animated_sprite.flip_h=true
		direction*=-1
	if ray_castleft.is_colliding():
		animated_sprite.flip_h=false
		direction*=-1
	position.x+=speed*delta*direction
