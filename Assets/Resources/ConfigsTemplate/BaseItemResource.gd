extends Resource
class_name BaseItemResource

enum ITEM_TYPE
{
	BASE_EQUIPMENT,
	RING,
	ARTIFACT
}

# Дописать список рецептов и взаимодействие с системой синтеза
@export var item_name : String
@export_multiline var item_description : String
@export var item_type : ITEM_TYPE
