extends OptionButton

func _on_item_selected( _idx:int ):
	get_node("%3DViewport").set_default_canvas_item_texture_filter(_idx)
	print( get_node("%3DViewport").get_default_canvas_item_texture_filter() )
