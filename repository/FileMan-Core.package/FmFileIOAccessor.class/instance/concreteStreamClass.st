accessing
concreteStreamClass
	"FIXME:"
	^ Smalltalk at: #FileStream 
		ifPresent: [ :clazz | clazz perform: #concreteStream ]
		ifAbsent: [ Smalltalk at: #FmFileSystemFileStream ].