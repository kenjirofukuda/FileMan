instance creation
newFileNamed: fullPathName

	| fileReference |
	fileReference := fullPathName asFileReference.
	fileReference exists ifTrue: [ FileExists signalWith: fileReference ].
	^ self forceNewFileNamed: fullPathName