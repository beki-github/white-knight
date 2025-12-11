extends Node
var score=0
@onready var label: Label = $CanvasLayer/Label
func add_score():
	score+=1
	label.text="current " + str(score)
	print(score)
