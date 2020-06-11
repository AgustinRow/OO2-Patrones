"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestOOTPFileSystem,
	#superclass : #PackageManifest,
	#category : #'OO2-TP4-FileSystem-Manifest'
}

{ #category : #'code-critics' }
ManifestOOTPFileSystem class >> ruleRBConsistencyCheckRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#Directorio #subDirectorio:conPath: #false)) #'2020-06-10T23:09:17.122525-03:00') )
]

{ #category : #'code-critics' }
ManifestOOTPFileSystem class >> ruleRBStringConcatenationRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#Directorio #subDirectorio:conPath: #false)) #'2020-06-10T23:09:21.758543-03:00') )
]
