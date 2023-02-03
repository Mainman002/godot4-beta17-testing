extends Node3D

@export_category("Gimbal_Variables")
@export var speed:float= 0.2

func _physics_process(delta) -> void:
	rotate_y( speed * delta )
