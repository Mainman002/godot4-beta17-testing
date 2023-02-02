extends Node3D

var scene:PackedScene= preload("res://src/instances/grenade_01.tscn")

@export_category("Spawner_Variables")
@export var amount:int = 200

var random_direction:Vector3= Vector3.ZERO

func _ready() -> void:
	randomize()

func _process(_delta) -> void:
	if get_child_count() < amount:
		random_direction.x = randi_range( -5, 5 )
		random_direction.y = randi_range( -5, 5 )
		random_direction.z = randi_range( -5, 5 )
		
		var instance = scene.instantiate()
		instance.linear_velocity = random_direction
		instance.rotation = random_direction
		add_child(instance)
