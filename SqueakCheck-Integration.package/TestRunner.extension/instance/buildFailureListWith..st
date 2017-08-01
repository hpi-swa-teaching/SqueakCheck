*SqueakCheck-Integration
buildFailureListWith: aBuilder
	^ aBuilder pluggableListSpec new
		model: self;
		name: 'Failure List';
		list: #failedListWithCounterexamples; 
		menu: #failureMenu:;
		getIndex: #failedSelected; 
		setIndex: #failedSelected:;
		yourself.