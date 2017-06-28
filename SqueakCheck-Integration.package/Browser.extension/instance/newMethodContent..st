*SqueakCheck-Integration
newMethodContent: aMethodName

	^ aMethodName, ': aSmallInteger', Character cr, 
			Character tab, '<theoryTaking: #SmallInteger "#String" "#Character" "#Object" "#SequenceableCollection">', Character cr,
			Character tab, '<generateCounterExamples>', Character cr,
			Character cr,
			Character tab, 'self assert: [(', (self selectedClassName) , ' new ', (self selectedMessageName copyReplaceAll: ':' with: ': nil '), ') notNil]'.