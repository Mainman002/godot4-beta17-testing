extends Label

func _process(_delta):
	if not text == str( "Grenades: ", get_node("%Grenade_Spawner").get_child_count() ):
		text = str( "Grenades: ", get_node("%Grenade_Spawner").get_child_count() )
