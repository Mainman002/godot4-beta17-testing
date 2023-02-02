extends CheckButton

@export_category("Options_Variables")
@export var Option_Node:Node= null

func _ready() -> void:
	_toggled(button_pressed)

func _toggled(_val) -> void:
	Option_Node.visible = _val
