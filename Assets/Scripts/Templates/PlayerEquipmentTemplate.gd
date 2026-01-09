extends BaseItemTemplate
class_name PlayerEquipmentTemplate

var current_equipment : BaseEquipmentResource

func change_current_equipment(new_equipment : BaseEquipmentResource):
	current_equipment = new_equipment
	
func remove_buffs_from_player():
	for pair in current_equipment.equipment_stats_buff.keys():
		pass

func add_buffs_to_player():
	pass
