Class {
	#name : #PsqlScanner,
	#superclass : #SmaCCScanner,
	#category : #'GToolkit4P3-Parser'
}

{ #category : #'generated-initialization' }
PsqlScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(505 '/*' 509) #(505 '=>' 13) #(506 '=>' 13) #(501 'ABORT' 14) #(501 'ABSOLUTE' 15) #(501 'ACCESS' 16) #(501 'ACTION' 17) #(501 'ADD' 18) #(501 'ADMIN' 19) #(501 'AFTER' 20) #(501 'AGGREGATE' 21) #(501 'ALIGNMENT' 22) #(501 'ALL' 23) #(501 'ALLOW_CONNECTIONS' 24) #(501 'ALSO' 25) #(501 'ALTER' 26) #(501 'ALWAYS' 27) #(501 'ANALYZE' 28) #(501 'AND' 29) #(501 'ARRAY' 30) #(501 'AS' 31) #(501 'ASC' 32) #(501 'ASENSITIVE' 33) #(501 'ASSIGNMENT' 34) #(501 'ATTACH' 35) #(501 'ATTRIBUTE' 36) #(501 'AUTHORIZATION' 37) #(501 'AUTO' 38) #(501 'BACKWARD' 39) #(501 'BASETYPE' 40) #(501 'BEFORE' 41) #(501 'BEGIN' 42) #(501 'BETWEEEN' 43) #(501 'BETWEEN' 44) #(501 'BINARY' 45) #(501 'BIT' 46) #(501 'BOTH' 47) #(501 'BREADTH' 48) #(501 'BUFFERS' 49) #(501 'BUFFER_USAGE_LIMIT' 50) #(501 'BY' 51) #(501 'BYPASSRLS' 52) #(501 'CACHE' 53) #(501 'CALL' 54) #(501 'CALLED' 55) #(501 'CANONICAL' 56) #(501 'CASCADE' 57) #(501 'CASCADED' 58) #(501 'CASE' 59) #(501 'CAST' 60) #(501 'CATEGORY' 61) #(501 'CHAIN' 62) #(501 'CHARACTER' 63) #(501 'CHARACTERISTICS' 64) #(501 'CHECK' 65) #(501 'CHECKPOINT' 66) #(501 'CLASS' 67) #(501 'CLOSE' 68) #(501 'CLUSTER' 69) #(501 'COLLATABLE' 70) #(501 'COLLATE' 71) #(501 'COLLATION' 72) #(501 'COLLATION_VERSION' 73) #(501 'COLUMN' 74) #(501 'COMBINEFUNC' 75) #(501 'COMMENT' 76) #(501 'COMMENTS' 77) #(501 'COMMIT' 78) #(501 'COMMITTED' 79) #(501 'COMMUTATOR' 80) #(501 'COMPRESSION' 81) #(501 'CONCURRENTLY' 82) #(501 'CONFIGURATION' 83) #(501 'CONFLICT' 84) #(501 'CONNECT' 85) #(501 'CONNECTION' 86) #(501 'CONSTRAINT' 87) #(501 'CONSTRAINTS' 88) #(501 'CONTINUE' 89) #(501 'CONVERSION' 90) #(501 'COPY' 91) #(501 'COST' 92) #(501 'COSTS' 93) #(501 'CREATE' 94) #(501 'CREATEDB' 95) #(501 'CREATEROLE' 96) #(501 'CROSS' 97) #(501 'CUBE' 98) #(501 'CURRENT' 99) #(501 'CURRENT_ROLE' 100) #(501 'CURRENT_SCHEMA' 101) #(501 'CURRENT_USER' 102) #(501 'CURSOR' 103) #(501 'CYCLE' 104) #(501 'DATA' 105) #(501 'DATABASE' 106) #(501 'DEALLOCATE' 107) #(501 'DECLARE' 108) #(501 'DEFAULT' 109) #(501 'DEFAULTS' 110) #(501 'DEFERRABLE' 111) #(501 'DEFERRED' 112) #(501 'DEFINER' 113) #(501 'DELETE' 114) #(501 'DELIMITER' 115) #(501 'DEPENDS' 116) #(501 'DEPTH' 117) #(501 'DESC' 118) #(501 'DESERIALFUNC' 119) #(501 'DETACH' 120) #(501 'DETERMINISTIC' 121) #(501 'DICTIONARY' 122) #(501 'DISABLE' 123) #(501 'DISABLE_PAGE_SKIPPING' 124) #(501 'DISCARD' 125) #(501 'DISTINCT' 126) #(501 'DO' 127) #(501 'DOMAIN' 128) #(501 'DOUBLE' 129) #(501 'DROP' 130) #(501 'EACH' 131) #(501 'ELEMENT' 132) #(501 'ELSE' 133) #(501 'ENABLE' 134) #(501 'ENCODING' 135) #(501 'ENCRYPTED' 136) #(501 'END' 137) #(501 'ENUM' 138) #(501 'EVENT' 139) #(501 'EXCEPT' 140) #(501 'EXCLUDE' 141) #(501 'EXCLUDING' 142) #(501 'EXCLUSIVE' 143) #(501 'EXECUTE' 144) #(501 'EXISTS' 145) #(501 'EXPLAIN' 146) #(501 'EXPRESSION' 147) #(501 'EXTENDED' 148) #(501 'EXTENSION' 149) #(501 'EXTERNAL' 150) #(501 'FALSE' 151) #(501 'FAMILY' 152) #(501 'FETCH' 153) #(501 'FILTER' 154) #(501 'FINALFUNC' 155) #(501 'FINALFUNC_EXTRA' 156) #(501 'FINALFUNC_MODIFY' 157) #(501 'FINALIZE' 158) #(501 'FIRST' 159) #(501 'FOLLOWING' 160) #(501 'FOR' 161) #(501 'FORCE' 162) #(501 'FOREIGN' 163) #(501 'FORMAT' 164) #(501 'FORWARD' 165) #(501 'FREEZE' 166) #(501 'FROM' 167) #(501 'FULL' 168) #(501 'FUNCTION' 169) #(501 'FUNCTIONS' 170) #(501 'GENERATED' 171) #(501 'GENERIC_PLAN' 172) #(501 'GETTOKEN' 173) #(501 'GLOBAL' 174) #(501 'GRANT' 175) #(501 'GRANTED' 176) #(501 'GROUP' 177) #(501 'GROUPING' 178) #(501 'GROUPS' 179) #(501 'HANDLER' 180) #(501 'HASH' 181) #(501 'HASHES' 182) #(501 'HAVING' 183) #(501 'HEADLINE' 184) #(501 'HOLD' 185) #(501 'HYPOTHETICAL' 186) #(501 'ICU_LOCALE' 187) #(501 'ICU_RULES' 188) #(501 'IDENTITY' 189) #(501 'IF' 190) #(501 'ILIKE' 191) #(501 'IMMEDIATE' 192) #(501 'IMMUTABLE' 193) #(501 'IMPLICIT' 194) #(501 'IMPORT' 195) #(501 'IN' 196) #(501 'INCLUDE' 197) #(501 'INCLUDING' 198) #(501 'INCREMENT' 199) #(501 'INDEX' 200) #(501 'INDEXES' 201) #(501 'INDEX_CLEANUP' 202) #(501 'INHERIT' 203) #(501 'INHERITS' 204) #(501 'INIT' 205) #(501 'INITCOND' 206) #(501 'INITIALLY' 207) #(501 'INLINE' 208) #(501 'INNER' 209) #(501 'INOUT' 210) #(501 'INPUT' 211) #(501 'INSENSITIVE' 212) #(501 'INSERT' 213) #(501 'INSTEAD' 214) #(501 'INTERNALLENGTH' 215) #(501 'INTERSECT' 216) #(501 'INTO' 217) #(501 'INVOKER' 218) #(501 'IS' 219) #(501 'ISOLATION' 220) #(501 'IS_TEMPLATE' 221) #(501 'JOIN' 222) #(501 'JSON' 223) #(501 'KEY' 224) #(501 'LABEL' 225) #(501 'LANGUAGE' 226) #(501 'LARGE' 227) #(501 'LAST' 228) #(501 'LATERAL' 229) #(501 'LC_COLLATE' 230) #(501 'LC_CTYPE' 231) #(501 'LEADING' 232) #(501 'LEAKPROOF' 233) #(501 'LEFT' 234) #(501 'LEFTARG' 235) #(501 'LEVEL' 236) #(501 'LEXIZE' 237) #(501 'LEXTYPES' 238) #(501 'LIKE' 239) #(501 'LIMIT' 240) #(501 'LIST' 241) #(501 'LISTEN' 242) #(501 'LOAD' 243) #(501 'LOCAL' 244) #(501 'LOCALE' 245) #(501 'LOCALE_PROVIDER' 246) #(501 'LOCATION' 247) #(501 'LOCK' 248) #(501 'LOCKED' 249) #(501 'LOGGED' 250) #(501 'LOGIN' 251) #(501 'MAIN' 252) #(501 'MAPPING' 253) #(501 'MATCH' 254) #(501 'MATCHED' 255) #(501 'MATERIALIZED' 256) #(501 'MAXVALUE' 257) #(501 'MERGE' 258) #(501 'MERGES' 259) #(501 'METHOD' 260) #(501 'MFINALFUNC' 261) #(501 'MFINALFUNC_EXTRA' 262) #(501 'MFINALFUNC_MODIFY' 263) #(501 'MINITCOND' 264) #(501 'MINVALUE' 265) #(501 'MINVFUNC' 266) #(501 'MODE' 267) #(501 'MODULUS' 268) #(501 'MOVE' 269) #(501 'MSFUNC' 270) #(501 'MSSPACE' 271) #(501 'MSTYPE' 272) #(501 'MULTIRANGE_TYPE_NAME' 273) #(501 'NATURAL' 274) #(501 'NEGATOR' 275) #(501 'NEW' 276) #(501 'NEXT' 277) #(501 'NO' 278) #(501 'NOBYPASSRLS' 279) #(501 'NOCREATEDB' 280) #(501 'NOCREATEROLE' 281) #(501 'NOINHERIT' 282) #(501 'NOLOGIN' 283) #(501 'NONE' 284) #(501 'NOREPLICATION' 285) #(501 'NOSUPERUSER' 286) #(501 'NOT' 287) #(501 'NOTHING' 288) #(501 'NOTIFY' 289) #(501 'NOWAIT' 290) #(501 'NULL' 291) #(501 'NULLS' 292) #(501 'OBJECT' 293) #(501 'OF' 294) #(501 'OFF' 295) #(501 'OFFSET' 296) #(501 'OID' 297) #(501 'OIDS' 298) #(501 'OLD' 299) #(501 'ON' 300) #(501 'ONLY' 301) #(501 'ONLY_DATABASE_STATS' 302) #(501 'OPERATOR' 303) #(501 'OPTION' 304) #(501 'OPTIONS' 305) #(501 'OR' 306) #(501 'ORDER' 307) #(501 'ORDINALITY' 308) #(501 'OTHERS' 309) #(501 'OUTER' 310) #(501 'OUTPUT' 311) #(501 'OVER' 312) #(501 'OVERRIDING' 313) #(501 'OWNED' 314) #(501 'OWNER' 315) #(501 'PARALLEL' 316) #(501 'PARAMETER' 317) #(501 'PARSER' 318) #(501 'PARTIAL' 319) #(501 'PARTITION' 320) #(501 'PASSEDBYVALUE' 321) #(501 'PASSWORD' 322) #(501 'PERMISSIVE' 323) #(501 'PLACING' 324) #(501 'PLAIN' 325) #(501 'PLANS' 326) #(501 'POLICY' 327) #(501 'PRECEDING' 328) #(501 'PRECISION' 329) #(501 'PREFERRED' 330) #(501 'PREPARE' 331) #(501 'PREPARED' 332) #(501 'PRESERVE' 333) #(501 'PRIMARY' 334) #(501 'PRIOR' 335) #(501 'PRIVILEGES' 336) #(501 'PROCEDURAL' 337) #(501 'PROCEDURE' 338) #(501 'PROCEDURES' 339) #(501 'PROCESS_MAIN' 340) #(501 'PROCESS_TOAST' 341) #(501 'PROGRAM' 342) #(501 'PROVIDER' 343) #(501 'PUBLIC' 344) #(501 'PUBLICATION' 345) #(501 'RANGE' 346) #(501 'READ' 347) #(501 'READ_ONLY' 348) #(501 'READ_WRITE' 349) #(501 'REASSIGN' 350) #(501 'RECEIVE' 351) #(501 'RECURSIVE' 352) #(501 'REFERENCES' 353) #(501 'REFERENCING' 354) #(501 'REFRESH' 355) #(501 'REINDEX' 356) #(501 'RELATIVE' 357) #(501 'RELEASE' 358) #(501 'REMAINDER' 359) #(501 'RENAME' 360) #(501 'REPEATABLE' 361) #(501 'REPLACE' 362) #(501 'REPLICA' 363) #(501 'REPLICATION' 364) #(501 'RESET' 365) #(501 'RESTART' 366) #(501 'RESTRICT' 367) #(501 'RESTRICTED' 368) #(501 'RESTRICTIVE' 369) #(501 'RETURNING' 370) #(501 'RETURNS' 371) #(501 'REVOKE' 372) #(501 'RIGHT' 373) #(501 'RIGHTARG' 374) #(501 'ROLE' 375) #(501 'ROLLBACK' 376) #(501 'ROLLUP' 377) #(501 'ROUTINE' 378) #(501 'ROUTINES' 379) #(501 'ROW' 380) #(501 'ROWS' 381) #(501 'RULE' 382) #(501 'RULES' 383) #(501 'SAFE' 384) #(501 'SAVEPOINT' 385) #(501 'SCHEMA' 386) #(501 'SCHEMAS' 387) #(501 'SCROLL' 388) #(501 'SEARCH' 389) #(501 'SECURITY' 390) #(501 'SELECT' 391) #(501 'SEND' 392) #(501 'SEQUENCE' 393) #(501 'SEQUENCES' 394) #(501 'SERIALFUNC' 395) #(501 'SERIALIZABLE' 396) #(501 'SERVER' 397) #(501 'SESSION' 398) #(501 'SESSION_USER' 399) #(501 'SET' 400) #(501 'SETS' 401) #(501 'SETTINGS' 402) #(501 'SFUNC' 403) #(501 'SHARE' 404) #(501 'SHAREABLE' 405) #(501 'SHOW' 406) #(501 'SIMPLE' 407) #(501 'SKIP' 408) #(501 'SKIP_DATABASE_STATS' 409) #(501 'SKIP_LOCKED' 410) #(501 'SNAPSHOT' 411) #(501 'SORTOP' 412) #(501 'SQL' 413) #(501 'SSPACE' 414) #(501 'STABLE' 415) #(501 'START' 416) #(501 'STATEMENT' 417) #(501 'STATISTICS' 418) #(501 'STDIN' 419) #(501 'STDOUT' 420) #(501 'STORAGE' 421) #(501 'STORED' 422) #(501 'STRATEGY' 423) #(501 'STRICT' 424) #(501 'STYPE' 425) #(501 'SUBSCRIPT' 426) #(501 'SUBSCRIPTION' 427) #(501 'SUBTYPE' 428) #(501 'SUBTYPE_DIFF' 429) #(501 'SUBTYPE_OPCLASS' 430) #(501 'SUMMARY' 431) #(501 'SUPERUSER' 432) #(501 'SUPPORT' 433) #(501 'SYSID' 434) #(501 'SYSTEM' 435) #(501 'TABLE' 436) #(501 'TABLES' 437) #(501 'TABLESAMPLE' 438) #(501 'TABLESPACE' 439) #(501 'TEMP' 440) #(501 'TEMPLATE' 441) #(501 'TEMPORARY' 442) #(501 'TEXT' 443) #(501 'THEN' 444) #(501 'TIES' 445) #(501 'TIME' 446) #(501 'TIMING' 447) #(501 'TO' 448) #(501 'TRAILING' 449) #(501 'TRANSACTION' 450) #(501 'TRANSFORM' 451) #(501 'TRIGGER' 452) #(501 'TRUE' 453) #(501 'TRUNCATE' 454) #(501 'TRUSTED' 455) #(501 'TYPE' 456) #(501 'TYPES' 457) #(501 'TYPMOD_IN' 458) #(501 'TYPMOD_OUT' 459) #(501 'UNBOUNDED' 460) #(501 'UNCOMMITTED' 461) #(501 'UNION' 462) #(501 'UNIQUE' 463) #(501 'UNLISTEN' 464) #(501 'UNLOGGED' 465) #(501 'UNSAFE' 466) #(501 'UNTIL' 467) #(501 'UPDATE' 468) #(501 'USAGE' 469) #(501 'USER' 470) #(501 'USING' 471) #(501 'VACUUM' 472) #(501 'VALID' 473) #(501 'VALIDATE' 474) #(501 'VALIDATOR' 475) #(501 'VALUE' 476) #(501 'VALUES' 477) #(501 'VARIABLE' 478) #(501 'VARIADIC' 479) #(501 'VARYING' 480) #(501 'VERBOSE' 481) #(501 'VERSION' 482) #(501 'VIEW' 483) #(501 'VOLATILE' 484) #(501 'WAL' 485) #(501 'WHEN' 486) #(501 'WHERE' 487) #(501 'WINDOW' 488) #(501 'WITH' 489) #(501 'WITHIN' 490) #(501 'WITHOUT' 491) #(501 'WORK' 492) #(501 'WRAPPER' 493) #(501 'WRITE' 494) #(501 'XML' 495) #(501 'YAML' 496) #(501 'ZONE' 497))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #private }
PsqlScanner >> checkOperator [
	| contents |
	contents := outputStream contents.
	(contents size > 1
		and: [ ('+-' includes: contents last)
				and: [ ('~!@#%^&|`?' anySatisfy: [ :char | contents includes: char ]) not ] ])
		ifTrue: [ self position: self position - 1.
			contents := contents allButLast ].
	matchActions := {self operatorId}.
	^ self createTokenFor: contents
]

{ #category : #generated }
PsqlScanner >> dollarStringId [
	^ 1861
]

{ #category : #private }
PsqlScanner >> dollarStringStart [
	| end contents |
	end := outputStream contents.
	contents := stream upToAll: end.
	matchActions := {self dollarStringId}.
	^ self createTokenFor: end , contents , end
]

{ #category : #generated }
PsqlScanner >> emptySymbolTokenId [
	^ 1862
]

{ #category : #generated }
PsqlScanner >> errorTokenId [
	^ 1863
]

{ #category : #generated }
PsqlScanner >> keywordFor: aString [
	^ aString asUppercase
]

{ #category : #private }
PsqlScanner >> multilineComment [
	| lastChar count |
	count := 1.
	matchActions := #().
	[ self atEnd ifTrue: [ ^ self scannerError ].
	self step.
	(lastChar = $* and: [ currentCharacter = $/ ])
		ifTrue: [ count := count - 1.
			count = 0
				ifTrue: [ matchEnd := stream position.
					lastOutputStreamMatchPosition := outputStream position.
					^ self comment ] ].
	(lastChar = $/ and: [ currentCharacter = $* ])
		ifTrue: [ lastChar := nil.
			count := count + 1 ]
		ifFalse: [ lastChar := currentCharacter ] ] repeat
]

{ #category : #generated }
PsqlScanner >> operatorId [
	^ 506
]

{ #category : #generated }
PsqlScanner >> scan1 [
	[ self recordMatch: #(505).
	self step.
	('-/' includes: currentCharacter) ifTrue: [ ^ self scan2 ].
	('!#' includes: currentCharacter)
		or: [ (currentCharacter between: $% and: $&)
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $< and: $@)
								or: [ '^`|~' includes: currentCharacter ] ] ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scan10 [
	[ self recordMatch: #(504).
	self step.
	currentCharacter == $_ ifTrue: [ ^ self scan9 ].
	currentCharacter isDigit ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scan11 [
	self recordMatch: #(504).
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan7 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scan12 [
	[ self recordMatch: #(504).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan11 ].
	currentCharacter == $_ ifTrue: [ ^ self scan13 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scan13 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan12 ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scan14 [
	[ self recordMatch: #(504).
	self step.
	currentCharacter == $_ ifTrue: [ ^ self scan15 ].
	currentCharacter between: $0 and: $1 ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scan15 [
	self step.
	(currentCharacter between: $0 and: $1) ifTrue: [ ^ self scan14 ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scan16 [
	[ self recordMatch: #(504).
	self step.
	currentCharacter == $_ ifTrue: [ ^ self scan17 ].
	currentCharacter between: $0 and: $7 ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scan17 [
	self step.
	(currentCharacter between: $0 and: $7) ifTrue: [ ^ self scan16 ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scan18 [
	[ self recordMatch: #(504).
	self step.
	currentCharacter == $_ ifTrue: [ ^ self scan19 ].
	currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scan19 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan18 ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scan2 [
	self recordMatch: #(505).
	self step.
	currentCharacter == $/ ifTrue: [ ^ self scan3 ].
	(('!#' includes: currentCharacter)
		or: [ (currentCharacter between: $% and: $&)
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $< and: $@)
								or: [ '^`|~' includes: currentCharacter ] ] ] ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scan20 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(501).
			self step.
			currentCharacter == $" ifTrue: [ ^ self scan20 ].
			('Uu' includes: currentCharacter) ifTrue: [ ^ self scan21 ].
			(currentCharacter isSeparator or: [ currentCharacter == Character pageUp ])
				ifTrue: [ [ self step.
					('Uu' includes: currentCharacter) ifTrue: [ ^ self scan21 ].
					currentCharacter isSeparator or: [ currentCharacter == Character pageUp ] ]
						whileTrue ].
			^ self reportLastMatch ].
	currentCharacter <= $/
		or: [ (currentCharacter between: $1 and: $W)
				or: [ (currentCharacter between: $Y and: $w) or: [ currentCharacter >= $y ] ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scan21 [
	self step.
	('Ee' includes: currentCharacter)
		ifTrue: [ self step.
			('Ss' includes: currentCharacter)
				ifTrue: [ self step.
					('Cc' includes: currentCharacter)
						ifTrue: [ self step.
							('Aa' includes: currentCharacter)
								ifTrue: [ self step.
									('Pp' includes: currentCharacter)
										ifTrue: [ self step.
											('Ee' includes: currentCharacter)
												ifTrue: [ self step.
													(currentCharacter isSeparator
														or: [ currentCharacter == Character pageUp ])
														ifTrue: [ [ self step.
															currentCharacter == $' ifTrue: [ ^ self scan22 ].
															('Uu' includes: currentCharacter)
																ifTrue: [ (self scanForString: '&''') ifTrue: [ ^ self scan23 ].
																	^ self reportLastMatch ].
															currentCharacter isSeparator
																or: [ currentCharacter == Character pageUp ] ] whileTrue ] ] ] ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scan22 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ self recordMatch: #(501).
			self step.
			currentCharacter == $' ifTrue: [ ^ self scan22 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
PsqlScanner >> scan23 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ self recordMatch: #(501).
			self step.
			currentCharacter == $' ifTrue: [ ^ self scan23 ].
			('Uu' includes: currentCharacter) ifTrue: [ ^ self scan24 ].
			(currentCharacter isSeparator or: [ currentCharacter == Character pageUp ])
				ifTrue: [ [ self step.
					('Uu' includes: currentCharacter) ifTrue: [ ^ self scan24 ].
					currentCharacter isSeparator or: [ currentCharacter == Character pageUp ] ]
						whileTrue ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
PsqlScanner >> scan24 [
	self step.
	('Ee' includes: currentCharacter)
		ifTrue: [ self step.
			('Ss' includes: currentCharacter)
				ifTrue: [ self step.
					('Cc' includes: currentCharacter)
						ifTrue: [ self step.
							('Aa' includes: currentCharacter)
								ifTrue: [ self step.
									('Pp' includes: currentCharacter)
										ifTrue: [ self step.
											('Ee' includes: currentCharacter)
												ifTrue: [ self step.
													(currentCharacter isSeparator
														or: [ currentCharacter == Character pageUp ])
														ifTrue: [ [ self step.
															currentCharacter == $' ifTrue: [ ^ self scan22 ].
															currentCharacter isSeparator
																or: [ currentCharacter == Character pageUp ] ] whileTrue ] ] ] ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scan25 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ self recordMatch: #(500).
			self step.
			currentCharacter == $' ifTrue: [ ^ self scan25 ].
			('Uu' includes: currentCharacter) ifTrue: [ ^ self scan26 ].
			(currentCharacter isSeparator or: [ currentCharacter == Character pageUp ])
				ifTrue: [ [ self step.
					('Uu' includes: currentCharacter) ifTrue: [ ^ self scan26 ].
					currentCharacter isSeparator or: [ currentCharacter == Character pageUp ] ]
						whileTrue ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
PsqlScanner >> scan26 [
	self step.
	('Ee' includes: currentCharacter)
		ifTrue: [ self step.
			('Ss' includes: currentCharacter)
				ifTrue: [ self step.
					('Cc' includes: currentCharacter)
						ifTrue: [ self step.
							('Aa' includes: currentCharacter)
								ifTrue: [ self step.
									('Pp' includes: currentCharacter)
										ifTrue: [ self step.
											('Ee' includes: currentCharacter)
												ifTrue: [ self step.
													(currentCharacter isSeparator
														or: [ currentCharacter == Character pageUp ])
														ifTrue: [ [ self step.
															currentCharacter == $' ifTrue: [ ^ self scan6 ].
															currentCharacter isSeparator
																or: [ currentCharacter == Character pageUp ] ] whileTrue ] ] ] ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scan3 [
	[ self step.
	currentCharacter == $/ ] whileTrue.
	(('!#' includes: currentCharacter)
		or: [ (currentCharacter between: $% and: $&)
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $< and: $@)
								or: [ '^`|~' includes: currentCharacter ] ] ] ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scan4 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(501).
			self step.
			currentCharacter == $" ifTrue: [ ^ self scan4 ].
			^ self reportLastMatch ].
	currentCharacter >= Character home ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scan5 [
	[ self step.
	currentCharacter == $$ ifTrue: [ ^ self recordAndReportMatch: #(503) ].
	true ] whileTrue
]

{ #category : #generated }
PsqlScanner >> scan6 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ self recordMatch: #(500).
			self step.
			currentCharacter == $' ifTrue: [ ^ self scan6 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
PsqlScanner >> scan7 [
	[ self recordMatch: #(504).
	self step.
	currentCharacter == $_
		ifTrue: [ self step.
			currentCharacter isDigit ifTrue: [ ^ self scan7 ].
			^ self reportLastMatch ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scan8 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan10 ].
	('+-' includes: currentCharacter) ifTrue: [ ^ self scan9 ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scan9 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan10 ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scanForToken [
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan4 ].
	currentCharacter == $$ ifTrue: [ ^ self scanForTokenX8 ].
	^ self scanForTokenX14
]

{ #category : #generated }
PsqlScanner >> scanForTokenX1 [
	self recordMatch: #(6 504).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan11 ].
	currentCharacter == $_ ifTrue: [ ^ self scan13 ].
	currentCharacter isDigit ifTrue: [ ^ self scan12 ].
	('Bb' includes: currentCharacter) ifTrue: [ ^ self scanForTokenX1X2 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
	('Oo' includes: currentCharacter) ifTrue: [ ^ self scanForTokenX1X1 ].
	('Xx' includes: currentCharacter)
		ifTrue: [ self step.
			currentCharacter == $_ ifTrue: [ ^ self scan19 ].
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan18 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scanForTokenX10 [
	[ self recordMatch: #(507).
	self step.
	currentCharacter isSeparator or: [ currentCharacter == Character pageUp ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scanForTokenX11 [
	[ self recordMatch: #(501).
	self step.
	currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ] ]
		whileTrue
]

{ #category : #generated }
PsqlScanner >> scanForTokenX12 [
	self recordMatch: #(5).
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scanForTokenX13 [
	currentCharacter == $= ifTrue: [ ^ self scanForTokenX3 ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(498) ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(499) ].
	currentCharacter isDigit ifTrue: [ ^ self scan12 ].
	('Bb' includes: currentCharacter) ifTrue: [ ^ self scanForTokenX5 ].
	('Uu' includes: currentCharacter) ifTrue: [ ^ self scanForTokenX6 ].
	(currentCharacter isSeparator or: [ currentCharacter == Character pageUp ])
		ifTrue: [ ^ self scanForTokenX10 ].
	((currentCharacter between: $! and: $@)
		or: [ '^`|~' includes: currentCharacter ]) ifTrue: [ ^ self scan1 ].
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue: [ self scanForTokenX11 ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scanForTokenX14 [
	currentCharacter == $' ifTrue: [ ^ self scan6 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter == $* ifTrue: [ ^ self scanForTokenX4 ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $- ifTrue: [ ^ self scanForTokenX2 ].
	currentCharacter == $. ifTrue: [ ^ self scanForTokenX12 ].
	currentCharacter == $/ ifTrue: [ ^ self scan2 ].
	currentCharacter == $0 ifTrue: [ ^ self scanForTokenX1 ].
	currentCharacter == $1 ifTrue: [ ^ self scanForTokenX7 ].
	currentCharacter == $: ifTrue: [ ^ self scanForTokenX9 ].
	currentCharacter == $; ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	^ self scanForTokenX13
]

{ #category : #generated }
PsqlScanner >> scanForTokenX1X1 [
	self step.
	currentCharacter == $_ ifTrue: [ ^ self scan17 ].
	(currentCharacter between: $0 and: $7) ifTrue: [ ^ self scan16 ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scanForTokenX1X2 [
	self step.
	currentCharacter == $_ ifTrue: [ ^ self scan15 ].
	(currentCharacter between: $0 and: $1) ifTrue: [ ^ self scan14 ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scanForTokenX2 [
	self recordMatch: #(505).
	self step.
	currentCharacter == $-
		ifTrue: [ [ self recordMatch: #(508).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $/ ifTrue: [ ^ self scan3 ].
	(('!#' includes: currentCharacter)
		or: [ (currentCharacter between: $% and: $&)
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $< and: $@)
								or: [ '^`|~' includes: currentCharacter ] ] ] ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scanForTokenX3 [
	self recordMatch: #(12 505 506).
	self step.
	currentCharacter == $>
		ifTrue: [ self recordMatch: #(505 506).
			self step ].
	('-/' includes: currentCharacter) ifTrue: [ ^ self scan2 ].
	(('!#' includes: currentCharacter)
		or: [ (currentCharacter between: $% and: $&)
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $< and: $@)
								or: [ '^`|~' includes: currentCharacter ] ] ] ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scanForTokenX4 [
	self recordMatch: #(3 505 506).
	self step.
	('-/' includes: currentCharacter) ifTrue: [ ^ self scan2 ].
	(('!#' includes: currentCharacter)
		or: [ (currentCharacter between: $% and: $&)
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $< and: $@)
								or: [ '^`|~' includes: currentCharacter ] ] ] ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scanForTokenX5 [
	self recordMatch: #(501).
	self step.
	currentCharacter == $'
		ifTrue: [ [ self step.
			currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(502) ].
			currentCharacter between: $0 and: $1 ] whileTrue.
			^ self reportLastMatch ].
	(currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ])
		ifTrue: [ [ self recordMatch: #(501).
			self step.
			currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scanForTokenX6 [
	self recordMatch: #(501).
	self step.
	currentCharacter == $&
		ifTrue: [ self step.
			currentCharacter == $" ifTrue: [ ^ self scan20 ].
			currentCharacter == $' ifTrue: [ ^ self scan25 ].
			^ self reportLastMatch ].
	(currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ])
		ifTrue: [ [ self recordMatch: #(501).
			self step.
			currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scanForTokenX7 [
	self recordMatch: #(7 504).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan11 ].
	currentCharacter == $_ ifTrue: [ ^ self scan13 ].
	currentCharacter isDigit ifTrue: [ ^ self scan12 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scanForTokenX8 [
	self step.
	currentCharacter == $$ ifTrue: [ ^ self recordAndReportMatch: #(503) ].
	(currentCharacter between: $1 and: $9)
		ifTrue: [ [ self recordMatch: #(510).
			self step.
			currentCharacter == $$ ifTrue: [ ^ self recordAndReportMatch: #(503) ].
			currentCharacter isDigit ] whileTrue ].
	^ self scan5
]

{ #category : #generated }
PsqlScanner >> scanForTokenX9 [
	self recordMatch: #(8).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(10) ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #dollarStringStart nil #checkOperator nil #whitespace #comment #multilineComment)
]

{ #category : #generated }
PsqlScanner >> tokenClass [
	^SmaCCCaseInsensitiveToken
]
