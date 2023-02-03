extends CheckButton

func _ready() -> void:
	_toggled(button_pressed)

func _toggled(_val:bool) -> void:
	if _val: 
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_ENABLED)
		Engine.max_fps = 50
	else: 
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)
		Engine.max_fps = 0
