comparing
hash
	"17's a prime."
	^ self unapply inject: 17 into: [:acc :each | 17 * each hash].