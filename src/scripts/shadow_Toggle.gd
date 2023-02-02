extends CheckButton

func _ready() -> void:
	_toggled(button_pressed)

func _toggled( _val:bool ) -> void:
	get_node("%DirectionalLight3D").shadow_enabled = _val
