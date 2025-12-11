extends Area2D
@onready var gamemanager: Node = %Gamemanager
func _on_body_entered(body: Node2D) -> void:
	gamemanager.add_score()
	queue_free()
