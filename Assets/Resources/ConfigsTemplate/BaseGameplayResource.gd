extends Resource
class_name BaseGameplayResource

enum BASE_GAMEPLAY_ITEM_TYPE{
	WOOD
}

@export var gameplay_resource_name : String
@export_multiline var gameplay_resource_description : String
@export var gameplay_resource_texture : CompressedTexture2D
@export var gameplay_resource_type : BASE_GAMEPLAY_ITEM_TYPE
