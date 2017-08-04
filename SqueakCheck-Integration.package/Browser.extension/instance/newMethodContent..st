*SqueakCheck-Integration
newMethodContent: aMethodName

	^ aMethodName, ' aSmallInteger', Character cr, 
			Character tab, '<theoryTaking: #(SmallInteger) > "also possible:',self classNamesSupportingDataFrom,'"', Character cr,
			Character tab, '<generateCounterExamples>', Character cr,
			Character cr,
			Character tab, 'self assert: [(', (self selectedClassName), ' new ', (self selectedMessageName copyReplaceAll: ':' with: ': aSmallInteger '), ') notNil].'.