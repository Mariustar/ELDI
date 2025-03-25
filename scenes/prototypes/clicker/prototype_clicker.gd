extends Control
class_name PrototypeClicker


## A clicker prototype cutting wood ##


## Reference to the label displaying the current amount of wood cut
@export var label : Label

## Current amount of wood cut
var wood : int = 0

## Initialize the label at launch
func _ready() -> void:
	update_label_text()

## Cut 1 wood
func cut_wood() -> void:
	wood += 1
	update_label_text()

## Update the text of the label to reflect a change in wood amount
func update_label_text() -> void:
	label.text = "Wood: %s" %wood
	
## Triggered when the cut wood button is pressed
func _on_button_pressed() -> void:
	cut_wood()
