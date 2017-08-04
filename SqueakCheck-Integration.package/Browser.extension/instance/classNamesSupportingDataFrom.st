*SqueakCheck-Integration
classNamesSupportingDataFrom

	^ self classesSupportingDataFrom inject: '' into: [:string :next | string,', #',next].