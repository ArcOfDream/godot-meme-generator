
extends TextureFrame

func _on_item_select( index ):
	set_texture(get_node("../../../../memelist_panel/ItemList").images[index])