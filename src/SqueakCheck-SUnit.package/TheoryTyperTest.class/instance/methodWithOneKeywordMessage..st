data
methodWithOneKeywordMessage: anObject
	"This test is carefully crafted such that it will work for anything that understands the messages sent to anObject. This is not particularly robust!"
	^ (anObject + 1) = (1 + anObject) = (anObject normalize + 1)