extends Label

@export_category("FPS_Variables")
@export var fps_type:bool = false

func _ready() -> void :
	set_process(fps_type)
	set_physics_process(!fps_type)

func _process(_delta) -> void:
	if not text == str( "FPS: ", Engine.get_frames_per_second() ):
		text = str( "FPS: ", Engine.get_frames_per_second() )

func _physics_process(_delta) -> void:
	if not text == str( "Physics: ", Engine.physics_ticks_per_second ):
		text = str( "Physics: ", Engine.physics_ticks_per_second )
