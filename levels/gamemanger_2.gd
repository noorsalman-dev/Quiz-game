extends Node

var score = 0

# Called when the node enters the scene tree for the first time.
@onready var score_label: Label = $score_label

func add_point():
	score += 1
	score_label.text = "you collected" + str(score) + "mark"
