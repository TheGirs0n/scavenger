extends Node
class_name EquipmentComponent

@onready var head_equipment: PlayerEquipmentTemplate = $HeadEquipment
@onready var body_equipment: PlayerEquipmentTemplate = $BodyEquipment
@onready var left_arm_equipment: PlayerEquipmentTemplate = $LeftArmEquipment
@onready var right_arm_equipment: PlayerEquipmentTemplate = $RightArmEquipment
@onready var pants_equipment: PlayerEquipmentTemplate = $PantsEquipment

func change_equipment(new_equipment : BaseEquipmentResource):
	match new_equipment.BASE_EQUIPMENT_TYPE:
		GlobalEnums.BASE_EQUIPMENT_TYPE.HEAD:
			head_equipment.change_current_equipment(new_equipment)
		GlobalEnums.BASE_EQUIPMENT_TYPE.BODY:
			body_equipment.change_current_equipment(new_equipment)
		GlobalEnums.BASE_EQUIPMENT_TYPE.LEFT_ARM:
			left_arm_equipment.change_current_equipment(new_equipment)
		GlobalEnums.BASE_EQUIPMENT_TYPE.RIGHT_ARM:
			right_arm_equipment.change_current_equipment(new_equipment)
		GlobalEnums.BASE_EQUIPMENT_TYPE.PANTS:
			pants_equipment.change_current_equipment(new_equipment)
