running
acceptableTypesFor: aCompiledMethod

	^ (self filterAcceptableTypesFrom: (TheoryTyper new typeOfDatum: aCompiledMethod) default: Object) anyOne.