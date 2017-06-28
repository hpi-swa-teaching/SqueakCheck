testing - metaclass
testHasPackageSelected
	self deny: browser hasPackageSelected.
	
	browser packageListIndex: 1.
	self assert: browser hasPackageSelected.
	
	browser packageListIndex: 0.
	self deny: browser hasPackageSelected.