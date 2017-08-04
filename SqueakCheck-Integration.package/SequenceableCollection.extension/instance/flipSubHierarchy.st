*SqueakCheck-Integration
flipSubHierarchy

	^ (1 to: self first size) collect: [:index1 |
		(1 to: self size) collect: [:index2 |
			(self at: index2) at: index1]].