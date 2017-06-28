*AlgebraicDataType
join: delimiter
	^ String streamContents: [ :stream |
		self
			do: [ :each | each putOn: stream ]
			separatedBy: [ delimiter putOn: stream ] ]