visiting
visitMessageNode: aMessageNode
	"t1 is the name of the first temporary variable. In the case of a unary method, t1 will refer to that method's (sole) parameter."
	
	"A message sent to t1."
	(aMessageNode receiver name = 't1')
		ifTrue: [selectors add: aMessageNode selector key].
		
	"A message sent to t1 class."
	(aMessageNode receiver isMessageNode
		and: [aMessageNode receiver selector key = #class]
		and: [aMessageNode receiver receiver name = 't1'])
		ifTrue: [classSelectors add: aMessageNode selector key].
	^ super visitMessageNode: aMessageNode.