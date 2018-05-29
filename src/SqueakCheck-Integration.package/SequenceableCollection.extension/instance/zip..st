*SqueakCheck-Integration
zip: anotherSequenceableCollection
	| result |

	self assert: self size = anotherSequenceableCollection size.
	
	result := self class new: self size.
	1 to: self size do: [:index |
		result atLast: index put: {self atLast: index. anotherSequenceableCollection atLast: index}].
	^ result.