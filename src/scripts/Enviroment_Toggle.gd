extends CheckButton

@export_category("Enviroment_Variables")
@export var _key:String= "ssao"
var is_pressed:bool= false

func _ready() -> void:
	text = _key
	is_pressed = get("button_pressed")
	get_node( "%WorldEnvironment").environment.set( str(_key, "_enabled"), is_pressed )

func _pressed() -> void:
	is_pressed = get("button_pressed")
	get_node( "%WorldEnvironment").environment.set( str(_key, "_enabled"), is_pressed )

