Class {
	#name : #PsqlScanner,
	#superclass : #SmaCCScanner,
	#category : #'GToolkit4P3-Parser'
}

{ #category : #'generated-initialization' }
PsqlScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(501 '/*' 505) #(501 '=>' 13) #(502 '=>' 13) #(497 'ABORT' 14) #(497 'ABSOLUTE' 15) #(497 'ACCESS' 16) #(497 'ACTION' 17) #(497 'ADD' 18) #(497 'ADMIN' 19) #(497 'AFTER' 20) #(497 'AGGREGATE' 21) #(497 'ALIGNMENT' 22) #(497 'ALL' 23) #(497 'ALLOW_CONNECTIONS' 24) #(497 'ALSO' 25) #(497 'ALTER' 26) #(497 'ALWAYS' 27) #(497 'ANALYZE' 28) #(497 'AND' 29) #(497 'ARRAY' 30) #(497 'AS' 31) #(497 'ASC' 32) #(497 'ASENSITIVE' 33) #(497 'ASSIGNMENT' 34) #(497 'ATTACH' 35) #(497 'ATTRIBUTE' 36) #(497 'AUTHORIZATION' 37) #(497 'AUTO' 38) #(497 'BACKWARD' 39) #(497 'BASETYPE' 40) #(497 'BEFORE' 41) #(497 'BEGIN' 42) #(497 'BETWEEEN' 43) #(497 'BETWEEN' 44) #(497 'BINARY' 45) #(497 'BIT' 46) #(497 'BREADTH' 47) #(497 'BUFFERS' 48) #(497 'BUFFER_USAGE_LIMIT' 49) #(497 'BY' 50) #(497 'BYPASSRLS' 51) #(497 'CACHE' 52) #(497 'CALL' 53) #(497 'CALLED' 54) #(497 'CANONICAL' 55) #(497 'CASCADE' 56) #(497 'CASCADED' 57) #(497 'CASE' 58) #(497 'CAST' 59) #(497 'CATEGORY' 60) #(497 'CHAIN' 61) #(497 'CHARACTER' 62) #(497 'CHARACTERISTICS' 63) #(497 'CHECK' 64) #(497 'CHECKPOINT' 65) #(497 'CLASS' 66) #(497 'CLOSE' 67) #(497 'CLUSTER' 68) #(497 'COLLATABLE' 69) #(497 'COLLATE' 70) #(497 'COLLATION' 71) #(497 'COLLATION_VERSION' 72) #(497 'COLUMN' 73) #(497 'COMBINEFUNC' 74) #(497 'COMMENT' 75) #(497 'COMMENTS' 76) #(497 'COMMIT' 77) #(497 'COMMITTED' 78) #(497 'COMMUTATOR' 79) #(497 'COMPRESSION' 80) #(497 'CONCURRENTLY' 81) #(497 'CONFIGURATION' 82) #(497 'CONFLICT' 83) #(497 'CONNECT' 84) #(497 'CONNECTION' 85) #(497 'CONSTRAINT' 86) #(497 'CONSTRAINTS' 87) #(497 'CONTINUE' 88) #(497 'CONVERSION' 89) #(497 'COPY' 90) #(497 'COST' 91) #(497 'COSTS' 92) #(497 'CREATE' 93) #(497 'CREATEDB' 94) #(497 'CREATEROLE' 95) #(497 'CROSS' 96) #(497 'CUBE' 97) #(497 'CURRENT' 98) #(497 'CURRENT_ROLE' 99) #(497 'CURRENT_SCHEMA' 100) #(497 'CURRENT_USER' 101) #(497 'CURSOR' 102) #(497 'CYCLE' 103) #(497 'DATA' 104) #(497 'DATABASE' 105) #(497 'DEALLOCATE' 106) #(497 'DECLARE' 107) #(497 'DEFAULT' 108) #(497 'DEFAULTS' 109) #(497 'DEFERRABLE' 110) #(497 'DEFERRED' 111) #(497 'DEFINER' 112) #(497 'DELETE' 113) #(497 'DELIMITER' 114) #(497 'DEPENDS' 115) #(497 'DEPTH' 116) #(497 'DESC' 117) #(497 'DESERIALFUNC' 118) #(497 'DETACH' 119) #(497 'DETERMINISTIC' 120) #(497 'DICTIONARY' 121) #(497 'DISABLE' 122) #(497 'DISABLE_PAGE_SKIPPING' 123) #(497 'DISCARD' 124) #(497 'DISTINCT' 125) #(497 'DO' 126) #(497 'DOMAIN' 127) #(497 'DOUBLE' 128) #(497 'DROP' 129) #(497 'EACH' 130) #(497 'ELEMENT' 131) #(497 'ELSE' 132) #(497 'ENABLE' 133) #(497 'ENCODING' 134) #(497 'ENCRYPTED' 135) #(497 'END' 136) #(497 'ENUM' 137) #(497 'EVENT' 138) #(497 'EXCEPT' 139) #(497 'EXCLUDE' 140) #(497 'EXCLUDING' 141) #(497 'EXCLUSIVE' 142) #(497 'EXECUTE' 143) #(497 'EXISTS' 144) #(497 'EXPLAIN' 145) #(497 'EXPRESSION' 146) #(497 'EXTENDED' 147) #(497 'EXTENSION' 148) #(497 'EXTERNAL' 149) #(497 'FALSE' 150) #(497 'FAMILY' 151) #(497 'FETCH' 152) #(497 'FILTER' 153) #(497 'FINALFUNC' 154) #(497 'FINALFUNC_EXTRA' 155) #(497 'FINALFUNC_MODIFY' 156) #(497 'FINALIZE' 157) #(497 'FIRST' 158) #(497 'FOLLOWING' 159) #(497 'FOR' 160) #(497 'FORCE' 161) #(497 'FOREIGN' 162) #(497 'FORMAT' 163) #(497 'FORWARD' 164) #(497 'FREEZE' 165) #(497 'FROM' 166) #(497 'FULL' 167) #(497 'FUNCTION' 168) #(497 'FUNCTIONS' 169) #(497 'GENERATED' 170) #(497 'GENERIC_PLAN' 171) #(497 'GETTOKEN' 172) #(497 'GLOBAL' 173) #(497 'GRANT' 174) #(497 'GRANTED' 175) #(497 'GROUP' 176) #(497 'GROUPING' 177) #(497 'GROUPS' 178) #(497 'HANDLER' 179) #(497 'HASH' 180) #(497 'HASHES' 181) #(497 'HAVING' 182) #(497 'HEADLINE' 183) #(497 'HOLD' 184) #(497 'HYPOTHETICAL' 185) #(497 'ICU_LOCALE' 186) #(497 'ICU_RULES' 187) #(497 'IDENTITY' 188) #(497 'IF' 189) #(497 'ILIKE' 190) #(497 'IMMEDIATE' 191) #(497 'IMMUTABLE' 192) #(497 'IMPLICIT' 193) #(497 'IMPORT' 194) #(497 'IN' 195) #(497 'INCLUDE' 196) #(497 'INCLUDING' 197) #(497 'INCREMENT' 198) #(497 'INDEX' 199) #(497 'INDEXES' 200) #(497 'INDEX_CLEANUP' 201) #(497 'INHERIT' 202) #(497 'INHERITS' 203) #(497 'INIT' 204) #(497 'INITCOND' 205) #(497 'INITIALLY' 206) #(497 'INLINE' 207) #(497 'INNER' 208) #(497 'INOUT' 209) #(497 'INPUT' 210) #(497 'INSENSITIVE' 211) #(497 'INSERT' 212) #(497 'INSTEAD' 213) #(497 'INTERNALLENGTH' 214) #(497 'INTERSECT' 215) #(497 'INTO' 216) #(497 'INVOKER' 217) #(497 'IS' 218) #(497 'ISOLATION' 219) #(497 'IS_TEMPLATE' 220) #(497 'JOIN' 221) #(497 'JSON' 222) #(497 'KEY' 223) #(497 'LABEL' 224) #(497 'LANGUAGE' 225) #(497 'LARGE' 226) #(497 'LAST' 227) #(497 'LATERAL' 228) #(497 'LC_COLLATE' 229) #(497 'LC_CTYPE' 230) #(497 'LEAKPROOF' 231) #(497 'LEFT' 232) #(497 'LEFTARG' 233) #(497 'LEVEL' 234) #(497 'LEXIZE' 235) #(497 'LEXTYPES' 236) #(497 'LIKE' 237) #(497 'LIMIT' 238) #(497 'LIST' 239) #(497 'LISTEN' 240) #(497 'LOAD' 241) #(497 'LOCAL' 242) #(497 'LOCALE' 243) #(497 'LOCALE_PROVIDER' 244) #(497 'LOCATION' 245) #(497 'LOCK' 246) #(497 'LOCKED' 247) #(497 'LOGGED' 248) #(497 'LOGIN' 249) #(497 'MAIN' 250) #(497 'MAPPING' 251) #(497 'MATCH' 252) #(497 'MATCHED' 253) #(497 'MATERIALIZED' 254) #(497 'MAXVALUE' 255) #(497 'MERGE' 256) #(497 'MERGES' 257) #(497 'METHOD' 258) #(497 'MFINALFUNC' 259) #(497 'MFINALFUNC_EXTRA' 260) #(497 'MFINALFUNC_MODIFY' 261) #(497 'MINITCOND' 262) #(497 'MINVALUE' 263) #(497 'MINVFUNC' 264) #(497 'MODE' 265) #(497 'MODULUS' 266) #(497 'MOVE' 267) #(497 'MSFUNC' 268) #(497 'MSSPACE' 269) #(497 'MSTYPE' 270) #(497 'MULTIRANGE_TYPE_NAME' 271) #(497 'NATURAL' 272) #(497 'NEGATOR' 273) #(497 'NEW' 274) #(497 'NEXT' 275) #(497 'NO' 276) #(497 'NOBYPASSRLS' 277) #(497 'NOCREATEDB' 278) #(497 'NOCREATEROLE' 279) #(497 'NOINHERIT' 280) #(497 'NOLOGIN' 281) #(497 'NONE' 282) #(497 'NOREPLICATION' 283) #(497 'NOSUPERUSER' 284) #(497 'NOT' 285) #(497 'NOTHING' 286) #(497 'NOTIFY' 287) #(497 'NOWAIT' 288) #(497 'NULL' 289) #(497 'NULLS' 290) #(497 'OBJECT' 291) #(497 'OF' 292) #(497 'OFF' 293) #(497 'OFFSET' 294) #(497 'OID' 295) #(497 'OIDS' 296) #(497 'OLD' 297) #(497 'ON' 298) #(497 'ONLY' 299) #(497 'ONLY_DATABASE_STATS' 300) #(497 'OPERATOR' 301) #(497 'OPTION' 302) #(497 'OPTIONS' 303) #(497 'OR' 304) #(497 'ORDER' 305) #(497 'ORDINALITY' 306) #(497 'OTHERS' 307) #(497 'OUTER' 308) #(497 'OUTPUT' 309) #(497 'OVER' 310) #(497 'OVERRIDING' 311) #(497 'OWNED' 312) #(497 'OWNER' 313) #(497 'PARALLEL' 314) #(497 'PARAMETER' 315) #(497 'PARSER' 316) #(497 'PARTIAL' 317) #(497 'PARTITION' 318) #(497 'PASSEDBYVALUE' 319) #(497 'PASSWORD' 320) #(497 'PERMISSIVE' 321) #(497 'PLAIN' 322) #(497 'PLANS' 323) #(497 'POLICY' 324) #(497 'PRECEDING' 325) #(497 'PRECISION' 326) #(497 'PREFERRED' 327) #(497 'PREPARE' 328) #(497 'PREPARED' 329) #(497 'PRESERVE' 330) #(497 'PRIMARY' 331) #(497 'PRIOR' 332) #(497 'PRIVILEGES' 333) #(497 'PROCEDURAL' 334) #(497 'PROCEDURE' 335) #(497 'PROCEDURES' 336) #(497 'PROCESS_MAIN' 337) #(497 'PROCESS_TOAST' 338) #(497 'PROGRAM' 339) #(497 'PROVIDER' 340) #(497 'PUBLIC' 341) #(497 'PUBLICATION' 342) #(497 'RANGE' 343) #(497 'READ' 344) #(497 'READ_ONLY' 345) #(497 'READ_WRITE' 346) #(497 'REASSIGN' 347) #(497 'RECEIVE' 348) #(497 'RECURSIVE' 349) #(497 'REFERENCES' 350) #(497 'REFERENCING' 351) #(497 'REFRESH' 352) #(497 'REINDEX' 353) #(497 'RELATIVE' 354) #(497 'RELEASE' 355) #(497 'REMAINDER' 356) #(497 'RENAME' 357) #(497 'REPEATABLE' 358) #(497 'REPLACE' 359) #(497 'REPLICA' 360) #(497 'REPLICATION' 361) #(497 'RESET' 362) #(497 'RESTART' 363) #(497 'RESTRICT' 364) #(497 'RESTRICTED' 365) #(497 'RESTRICTIVE' 366) #(497 'RETURNING' 367) #(497 'RETURNS' 368) #(497 'REVOKE' 369) #(497 'RIGHT' 370) #(497 'RIGHTARG' 371) #(497 'ROLE' 372) #(497 'ROLLBACK' 373) #(497 'ROLLUP' 374) #(497 'ROUTINE' 375) #(497 'ROUTINES' 376) #(497 'ROW' 377) #(497 'ROWS' 378) #(497 'RULE' 379) #(497 'RULES' 380) #(497 'SAFE' 381) #(497 'SAVEPOINT' 382) #(497 'SCHEMA' 383) #(497 'SCHEMAS' 384) #(497 'SCROLL' 385) #(497 'SEARCH' 386) #(497 'SECURITY' 387) #(497 'SELECT' 388) #(497 'SEND' 389) #(497 'SEQUENCE' 390) #(497 'SEQUENCES' 391) #(497 'SERIALFUNC' 392) #(497 'SERIALIZABLE' 393) #(497 'SERVER' 394) #(497 'SESSION' 395) #(497 'SESSION_USER' 396) #(497 'SET' 397) #(497 'SETS' 398) #(497 'SETTINGS' 399) #(497 'SFUNC' 400) #(497 'SHARE' 401) #(497 'SHAREABLE' 402) #(497 'SHOW' 403) #(497 'SIMPLE' 404) #(497 'SKIP' 405) #(497 'SKIP_DATABASE_STATS' 406) #(497 'SKIP_LOCKED' 407) #(497 'SNAPSHOT' 408) #(497 'SORTOP' 409) #(497 'SQL' 410) #(497 'SSPACE' 411) #(497 'STABLE' 412) #(497 'START' 413) #(497 'STATEMENT' 414) #(497 'STATISTICS' 415) #(497 'STDIN' 416) #(497 'STDOUT' 417) #(497 'STORAGE' 418) #(497 'STORED' 419) #(497 'STRATEGY' 420) #(497 'STRICT' 421) #(497 'STYPE' 422) #(497 'SUBSCRIPT' 423) #(497 'SUBSCRIPTION' 424) #(497 'SUBTYPE' 425) #(497 'SUBTYPE_DIFF' 426) #(497 'SUBTYPE_OPCLASS' 427) #(497 'SUMMARY' 428) #(497 'SUPERUSER' 429) #(497 'SUPPORT' 430) #(497 'SYSID' 431) #(497 'SYSTEM' 432) #(497 'TABLE' 433) #(497 'TABLES' 434) #(497 'TABLESAMPLE' 435) #(497 'TABLESPACE' 436) #(497 'TEMP' 437) #(497 'TEMPLATE' 438) #(497 'TEMPORARY' 439) #(497 'TEXT' 440) #(497 'THEN' 441) #(497 'TIES' 442) #(497 'TIME' 443) #(497 'TIMING' 444) #(497 'TO' 445) #(497 'TRANSACTION' 446) #(497 'TRANSFORM' 447) #(497 'TRIGGER' 448) #(497 'TRUE' 449) #(497 'TRUNCATE' 450) #(497 'TRUSTED' 451) #(497 'TYPE' 452) #(497 'TYPES' 453) #(497 'TYPMOD_IN' 454) #(497 'TYPMOD_OUT' 455) #(497 'UNBOUNDED' 456) #(497 'UNCOMMITTED' 457) #(497 'UNION' 458) #(497 'UNIQUE' 459) #(497 'UNLISTEN' 460) #(497 'UNLOGGED' 461) #(497 'UNSAFE' 462) #(497 'UNTIL' 463) #(497 'UPDATE' 464) #(497 'USAGE' 465) #(497 'USER' 466) #(497 'USING' 467) #(497 'VACUUM' 468) #(497 'VALID' 469) #(497 'VALIDATE' 470) #(497 'VALIDATOR' 471) #(497 'VALUE' 472) #(497 'VALUES' 473) #(497 'VARIABLE' 474) #(497 'VARIADIC' 475) #(497 'VARYING' 476) #(497 'VERBOSE' 477) #(497 'VERSION' 478) #(497 'VIEW' 479) #(497 'VOLATILE' 480) #(497 'WAL' 481) #(497 'WHEN' 482) #(497 'WHERE' 483) #(497 'WINDOW' 484) #(497 'WITH' 485) #(497 'WITHIN' 486) #(497 'WITHOUT' 487) #(497 'WORK' 488) #(497 'WRAPPER' 489) #(497 'WRITE' 490) #(497 'XML' 491) #(497 'YAML' 492) #(497 'ZONE' 493))
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
	^ 1858
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
	^ 1859
]

{ #category : #generated }
PsqlScanner >> errorTokenId [
	^ 1860
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
	^ 502
]

{ #category : #generated }
PsqlScanner >> scan1 [
	[ self recordMatch: #(501).
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
	[ self recordMatch: #(500).
	self step.
	currentCharacter == $_ ifTrue: [ ^ self scan9 ].
	currentCharacter isDigit ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scan11 [
	self recordMatch: #(500).
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan7 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scan12 [
	[ self recordMatch: #(500).
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
	[ self recordMatch: #(500).
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
	[ self recordMatch: #(500).
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
	[ self recordMatch: #(500).
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
	self recordMatch: #(501).
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
		ifTrue: [ self recordMatch: #(497).
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
		ifTrue: [ self recordMatch: #(497).
			self step.
			currentCharacter == $' ifTrue: [ ^ self scan22 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
PsqlScanner >> scan23 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ self recordMatch: #(497).
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
		ifTrue: [ self recordMatch: #(496).
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
		ifTrue: [ self recordMatch: #(497).
			self step.
			currentCharacter == $" ifTrue: [ ^ self scan4 ].
			^ self reportLastMatch ].
	currentCharacter >= Character home ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scan5 [
	[ self step.
	currentCharacter == $$ ifTrue: [ ^ self recordAndReportMatch: #(499) ].
	true ] whileTrue
]

{ #category : #generated }
PsqlScanner >> scan6 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ self recordMatch: #(496).
			self step.
			currentCharacter == $' ifTrue: [ ^ self scan6 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
PsqlScanner >> scan7 [
	[ self recordMatch: #(500).
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
	self recordMatch: #(6 500).
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
	[ self recordMatch: #(503).
	self step.
	currentCharacter isSeparator or: [ currentCharacter == Character pageUp ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scanForTokenX11 [
	[ self recordMatch: #(497).
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
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(494) ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(495) ].
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
	self recordMatch: #(501).
	self step.
	currentCharacter == $-
		ifTrue: [ [ self recordMatch: #(504).
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
	self recordMatch: #(12 501 502).
	self step.
	currentCharacter == $>
		ifTrue: [ self recordMatch: #(501 502).
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
	self recordMatch: #(3 501 502).
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
	self recordMatch: #(497).
	self step.
	currentCharacter == $'
		ifTrue: [ [ self step.
			currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(498) ].
			currentCharacter between: $0 and: $1 ] whileTrue.
			^ self reportLastMatch ].
	(currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ])
		ifTrue: [ [ self recordMatch: #(497).
			self step.
			currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scanForTokenX6 [
	self recordMatch: #(497).
	self step.
	currentCharacter == $&
		ifTrue: [ self step.
			currentCharacter == $" ifTrue: [ ^ self scan20 ].
			currentCharacter == $' ifTrue: [ ^ self scan25 ].
			^ self reportLastMatch ].
	(currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ])
		ifTrue: [ [ self recordMatch: #(497).
			self step.
			currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scanForTokenX7 [
	self recordMatch: #(7 500).
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
	currentCharacter == $$ ifTrue: [ ^ self recordAndReportMatch: #(499) ].
	(currentCharacter between: $1 and: $9)
		ifTrue: [ [ self recordMatch: #(506).
			self step.
			currentCharacter == $$ ifTrue: [ ^ self recordAndReportMatch: #(499) ].
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
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #dollarStringStart nil #checkOperator nil #whitespace #comment #multilineComment)
]

{ #category : #generated }
PsqlScanner >> tokenClass [
	^SmaCCCaseInsensitiveToken
]
