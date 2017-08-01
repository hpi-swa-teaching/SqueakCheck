private
printString
		
	^ super printString, (self currentExample ifNotNil: [' with: ',self currentExample asString] ifNil: ['']).