extends TextureButton

var func_on_press: Callable
var type: String
var cost: int
var baseCost: int
var buyCost: int
var timesBought: int
var scalingVal: float

#func _init(func_on_press, type, baseCost, buyCost, scalingVal) -> void:
	#self.func_on_press = func_on_press
	#self.type = type
	#self.cost = cost
	#self.baseCost = baseCost
	#self.buyCost = buyCost
	#self.timesBought = 0
	#self.scalingVal = scalingVal

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	buyCost = (baseCost ** (scalingVal ** timesBought))
	
func setBuyCost(amount:int) -> void:
	buyCost = amount
	$"costLabel".text = str(buyCost)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	if buyCost < Global.score:
		Global.score -= buyCost
		timesBought += 1
		buyCost = baseCost ** (scalingVal ** timesBought)	
		$"costLabel".text = str(buyCost)
		match type:
			'auto':
				Global.perSecond = func_on_press.call(Global.perSecond)
			'upgrade':
				Global.perClick = func_on_press.call(Global.perClick)
			'passive':
				pass
