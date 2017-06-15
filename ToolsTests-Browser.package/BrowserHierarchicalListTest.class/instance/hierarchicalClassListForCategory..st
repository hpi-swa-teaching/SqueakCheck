helper
hierarchicalClassListForCategory: category

	^ Browser new
		selectSystemCategory: category;
		hierarchicalClassList.