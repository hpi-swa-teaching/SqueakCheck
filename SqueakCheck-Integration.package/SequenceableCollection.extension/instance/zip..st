*SqueakCheck-Integration
zip: anotherSequenceableCollection
	| result a b array |

	self assert: (self size == anotherSequenceableCollection size).
	
	result := self class new: self size.
	1 to: self size do: [:index|
		a := self atLast: index.
		b := anotherSequenceableCollection atLast: index.
		
		array := Array new: 2.
		array at: 1 put: a.
		array at: 2 put: b.
		
		result atLast: index put: array.
	].
	^ result.