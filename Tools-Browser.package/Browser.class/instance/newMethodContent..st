SWT014-SqueakCheck
newMethodContent: aMethodName

	^ aMethodName, ': aSmallInteger', Character cr, 
			Character tab, '<theoryTaking: #SmallInteger>', Character cr, 
			Character cr,
			Character tab, 'self assert: [(', (self selectedClassName), ' new ', (self selectedMessageName copyReplaceAll: ':' with: ': nil '), ') notNil]'.