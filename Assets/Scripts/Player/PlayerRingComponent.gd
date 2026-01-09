extends Node
class_name PlayerRingComponent

@onready var first_ring: PlayerRingTemplate = $FirstRing
@onready var second_ring: PlayerRingTemplate = $SecondRing
@onready var third_ring: PlayerRingTemplate = $ThirdRing

func change_ring(new_ring : BaseRingResource, ring_slot_index : int):
	match ring_slot_index:
		0:
			first_ring.change_current_ring(new_ring)
		1:
			second_ring.change_current_ring(new_ring)
		2:
			third_ring.change_current_ring(new_ring)
