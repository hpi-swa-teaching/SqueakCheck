*SqueakCheck-Integration
minSubLength
	
	^ self inject: self anyOne size into: [:min :next | min min: next size].