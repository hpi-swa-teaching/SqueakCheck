*SqueakCheck-Integration
flipSubHierarchy
	
	((self first) isKindOf: self class) ifFalse:
		[^ self collect: [:each | (Array new: 1) at: 1 put: each; yourself]].
	
	^(1 to: (self at: 1) size) collect:
		[:i | (1 to: self size) collect:
			[:j | (self at: j) at: i]].