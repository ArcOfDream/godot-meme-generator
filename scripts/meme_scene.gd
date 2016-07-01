
extends Panel

var img

func _ready():
	pass

func _on_save_button_pressed():
	var imagenode = get_node("grid/preview_panel/split/center/image")
	
	var imagenode_rect = imagenode.get_global_rect()
	
	#This snippet is based on one of the demo Godot projects. 
	get_viewport().queue_screen_capture()
	# Let two frames pass to make sure the screen was captured
	yield(get_tree(), "idle_frame")
	yield(get_tree(), "idle_frame")
	# Retrieve a section of the captured image, based on the position of the image node.
	img = get_viewport().get_screen_capture().get_rect(imagenode_rect)
	
	get_node("filediag").popup_centered(Vector2(500,500)) 

func _on_filediag_file_selected( path ):
	img.save_png(path)
