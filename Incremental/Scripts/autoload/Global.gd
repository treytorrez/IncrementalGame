extends Node

var score: float = 0

var perClick: float = 1

var perSecond: float = 0

var timer = 0.0


func _process(delta):
	#timer += delta
	#if timer >= 1.0:
		#score += perSecond
		#timer = 0.0
	score += delta * perSecond
