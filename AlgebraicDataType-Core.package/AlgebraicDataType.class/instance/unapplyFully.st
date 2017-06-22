destructuring
unapplyFully
	^ self unapply collect: [:token | token unapplyFully]