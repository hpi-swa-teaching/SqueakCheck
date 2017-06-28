testing
testSystemNavigationAllBehaviorsDo
	| oc |
	oc := OrderedCollection new.
	SystemNavigation new allBehaviorsDo:
		[:c| oc add: c].
	self assert: oc size = oc asSet size