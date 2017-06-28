visiting
visitMethodNode: aMethodNode
	classSelectors := Set new.
	selectors := Set new.
	^ super visitMethodNode: aMethodNode.