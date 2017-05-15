typing
typeOfDatum: aUnaryCompiledMethod
	"Return that set of classes that understand all the messages sent to aUnaryCompiledMethod's argument."
	| classes messages metaclasses |
	messages := self messagesSentToDatum: aUnaryCompiledMethod.
	classes := self classesOf: messages first.
	metaclasses := ((self metaclassesUnderstandingAllOf: messages second)
		collect: [:pair |
			self class environment at: pair first ifAbsent: [nil]])
				select: #notNil.

	metaclasses do: [:cls | | chain |
		chain := cls withAllSuperclasses.
		(classes select: [:type | chain includes: cls])
			do: [:each |
				classes remove: each ifAbsent: []]].
	classes addAll: metaclasses.
	
	^ classes
		ifEmpty: [{Object} asSet]
		ifNotEmpty: [classes].