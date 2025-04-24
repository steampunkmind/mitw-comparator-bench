extends ColorRect


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
	
	
func _on_perception_slider_value_changed(value: float) -> void:
	$PerceptionValue.text = str(value)
	var result = $Comparator.set_perception_value(value)
	$ErrorValue.text = str("%.1f" % result)
	
