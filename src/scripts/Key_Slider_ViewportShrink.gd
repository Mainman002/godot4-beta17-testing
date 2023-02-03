extends Node

@onready var wSize:Vector2 = Vector2( DisplayServer.screen_get_size().x, DisplayServer.screen_get_size().y )

func _ready() -> void:
	DisplayServer.window_set_size( wSize )
	get_tree().get_root().get_viewport().size = wSize

func _changed( _val:int ) -> void:
	get_node("%3DViewport").get_parent().stretch_shrink = -_val
