extends VBoxContainer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_add_upgrade_button('AI Generated Code', func(x): return x+5, 'auto', 1.12, 100)
	_add_upgrade_button('Automated Testing', func(x): return x*1.15, 'auto', 1.2, 500)
	#_add_upgrade_button('throw computer into the sun', func(x): return x + 100000, 'auto', 1, 10)
	
func _process(delta: float) -> void:
	pass

func _add_upgrade_button(name: String, callback: Callable, type:String, scale: float, cost: int) -> void:
	var btn_scene = preload("res://upgrade_button.tscn")	
	var btn = btn_scene.instantiate()
	add_child(btn)
	btn.get_node("UpgradeLabel").text = name
	btn.type = type
	btn.scalingVal = scale
	btn.baseCost = cost
	btn.setBuyCost(cost)
	btn.func_on_press = callback
