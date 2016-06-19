
extends FileDialog

func _ready():
	set_access(ACCESS_FILESYSTEM)
	add_filter("*.png; PNG Image")
	pass