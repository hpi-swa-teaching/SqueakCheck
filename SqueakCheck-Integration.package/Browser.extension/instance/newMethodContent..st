*SqueakCheck-Integration
newMethodContent: aMethodName

	^ aMethodName, ' anInteger', Character cr, 
			Character tab, '<theoryTaking: #(Integer)> "possible:',self classNamesSupportingDataFrom,'"', Character cr,
			Character tab, '<generateCounterexamples>', Character cr,
			Character cr,
			Character tab, 'self assert: [(', (self selectedClassName), ' new ', (self selectedMessageName copyReplaceAll: ':' with: ': anInteger '), ') notNil].'.