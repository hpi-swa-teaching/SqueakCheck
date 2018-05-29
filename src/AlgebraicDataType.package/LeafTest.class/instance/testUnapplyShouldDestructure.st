testing
testUnapplyShouldDestructure
	| destructure tree |
	tree := Leaf value: 1.
	destructure := tree unapply.
	self assert: destructure first = #Leaf.
	self assert: destructure second = tree value.