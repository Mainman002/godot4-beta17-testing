extends VBoxContainer

func _ready() -> void:
	$Slider.connect("value_changed", _value_changed)
	if has_node("Key"): $Key._changed( $Slider.value )

func _value_changed( _val:int ) -> void:
	if has_node("Key"): $Key._changed( _val )

