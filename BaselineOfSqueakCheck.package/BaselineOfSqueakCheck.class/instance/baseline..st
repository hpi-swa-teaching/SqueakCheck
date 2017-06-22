as yet unclassified
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'SqueakCheck-Info';
				package: 'SqueakCheck-Generators';
				package: 'SqueakCheck-Generators-Tests';
				package: 'SqueakCheck-SUnit-Tests';
				package: 'SqueakCheck-SUnit';
				package: 'SqueakCheck-Runners-Tests';
				package: 'SqueakCheck-Runners';
				package: 'SqueakCheck-Integration';
				package: 'SqueakCheck-Integration-Tests';
				package: 'SqueakCheckForAlgebraicDataType';
				package: 'AlgebraicDataType-Core';
				package: 'AlgebraicDataType-Tests';
				package: 'AlgebraicDataType-Trees';
				yourself.
			spec
				group: 'default' with: #('SqueakCheck-Info' 'SqueakCheck-SUnit' 'SqueakCheck-Generators' 'SqueakCheck-Runners' 'SqueakCheck-Integration' 'AlgebraicDataType-Core' 'AlgebraicDataType-Trees');
				group: 'tests' with: #('SqueakCheck-SUnit-Tests' 'SqueakCheck-Runners-Tests' 'SqueakCheck-Generators-Tests' 'SqueakCheck-Integration-Tests' 'AlgebraicDataType-Tests')];
				yourself
				
			