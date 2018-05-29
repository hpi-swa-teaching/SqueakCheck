accessing
allTestSelectors
	"Return the usual test cases, together with any theories."
	| theories |
	theories := self methodDictionary values select:
		[:cm | (cm pragmaAt: #theory) notNil or:
			[(cm pragmaAt: #theoryTaking:) notNil]].
	^ (theories collect: [:cm | cm selector]) asOrderedCollection
		addAll: (super allTestSelectors);
		yourself.