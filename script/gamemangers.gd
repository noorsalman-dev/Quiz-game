extends Node


# Called when the node enters the scene tree for the first time.
var score = 0

@onready var score_label: Label = $score_label

func add_point():
	score += 1
	score_label.text = "you collected" + str(score) + "mark"
