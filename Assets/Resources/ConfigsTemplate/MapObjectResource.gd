extends Resource
class_name MapObjectResource

enum MAP_OBJECT_TYPE{
	MONSTER_ROOM,
	ELITE_MONSTER_ROOM,
	BOSS_ROOM,
	TREASURE_ROOM,
	EVENT_ROOM,
	SHOP_ROOM
}

@export var map_object_type : MAP_OBJECT_TYPE
@export var map_object_texture : CompressedTexture2D
