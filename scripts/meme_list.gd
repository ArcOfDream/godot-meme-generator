
extends ItemList

var images = []

func _ready():
	set_fixed_icon_size(Vector2(64,64))
	
	var dir = Directory.new()
	var i = 0
	dir.open("res://templates")
	
	dir.list_dir_begin()
	
	var file = dir.get_next()
	
	# There's probably a better way for this that I don't know of.
	while(file != ""):
		if(!dir.current_is_dir()):
			images.append(load(str(dir.get_current_dir() + "/" + file)))
			add_icon_item(load(str(dir.get_current_dir() + "/" + file)))
		
		print(str(dir.get_current_dir() + "/" + file))
		file = dir.get_next()


