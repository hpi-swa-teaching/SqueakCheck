SWT014-Browsererweiterung
addSqueakCheckMethodAndCategory

|methodBaseName methodFullName offset|

offset := 0.
methodBaseName := 'squeakCheckTest', (self messageNameWithArguments: self selectedMessageName).
methodFullName := methodBaseName.
[(self returnNewClass) methodDictionary includesKey: ((methodFullName,':') asSymbol)] whileTrue: 
	[offset:=offset+1. methodFullName:= methodBaseName, offset asString].

(self returnNewClass) compile: methodFullName,': aSmallInteger',Character cr,Character tab,'<theoryTaking: #SmallInteger>',Character cr,Character tab,'self assert: [(', (self selectedClassName), ' new ' ,(self selectedMessageName copyReplaceAll: ':' with: ': nil '),') isNil not ]' classified: 'squeakCheckTests' notifying: nil.
(self returnNewClass) browse selectMessageNamed: methodFullName,':'.

