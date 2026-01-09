extends Node
class_name ArtifactInventory

var artifact_inventory : Array[BaseArtifactTemplate]

func add_artifact(new_artifact : BaseArtifactResource):
	artifact_inventory.append(new_artifact)
	
func remove_artifact(old_artifact : BaseArtifactResource):
	artifact_inventory.erase(old_artifact)
