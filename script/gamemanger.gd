extends Node


var score = 0

@onready var score_label: Label = $scoreLabel
@onready var label: Label = $"../Label"

func add_point():
	score += 1
	score_label.text = "you collected " + str(
		score) + "/5 mark"
	if score <= 3:
		label.text = "you can do beter"
	elif score >= 4:
		label.text = "great job"
