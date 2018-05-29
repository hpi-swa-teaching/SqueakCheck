instance creation
apply: aCollection
	| knownTags tag |
	aCollection isEmpty ifTrue: [ApplyError signal: 'Cannot apply the empty list'].
	tag := aCollection first.
	tag = #Empty ifTrue: [^ Empty apply: aCollection].
	tag = #Leaf ifTrue: [^ Leaf apply: aCollection].
	tag = #TreeNode ifTrue: [^ TreeNode apply: aCollection].
	knownTags := 'Empty, Leaf, Node'.
	ApplyError signal: ('Unknown tag {1}, expected one of {2}' format: {tag. knownTags}). 