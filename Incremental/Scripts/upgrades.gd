extends VBoxContainer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_add_upgrade_button('Read a book', func(x): return x+1, 'upgrade', 1.15, 50)
	_add_upgrade_button('Search StackOverflow', func(x): return x*2, 'upgrade', 1.3, 250)
	#_add_upgrade_button('Rubber Ducky Debugger', _process, 'upgrade')

# Called every frame. 'delta' is the elapsed time since the previous frame.
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

#func incPerClick(amt: int) -> void:
	#Global.perClick += amt
#
#func multPerClick(amt: int) -> void:
	#Global.perClick *= amt
