Class {
	#name : #PsqlScanner,
	#superclass : #SmaCCScanner,
	#category : #'GToolkit4P3-Parser'
}

{ #category : #'generated-initialization' }
PsqlScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(507 '/*' 511) #(507 '=>' 13) #(508 '=>' 13) #(503 'ABORT' 14) #(503 'ABSOLUTE' 15) #(503 'ACCESS' 16) #(503 'ACTION' 17) #(503 'ADD' 18) #(503 'ADMIN' 19) #(503 'AFTER' 20) #(503 'AGGREGATE' 21) #(503 'ALIGNMENT' 22) #(503 'ALL' 23) #(503 'ALLOW_CONNECTIONS' 24) #(503 'ALSO' 25) #(503 'ALTER' 26) #(503 'ALWAYS' 27) #(503 'ANALYZE' 28) #(503 'AND' 29) #(503 'ARRAY' 30) #(503 'AS' 31) #(503 'ASC' 32) #(503 'ASENSITIVE' 33) #(503 'ASSIGNMENT' 34) #(503 'ATTACH' 35) #(503 'ATTRIBUTE' 36) #(503 'AUTHORIZATION' 37) #(503 'AUTO' 38) #(503 'BACKWARD' 39) #(503 'BASETYPE' 40) #(503 'BEFORE' 41) #(503 'BEGIN' 42) #(503 'BETWEEEN' 43) #(503 'BETWEEN' 44) #(503 'BINARY' 45) #(503 'BIT' 46) #(503 'BOTH' 47) #(503 'BREADTH' 48) #(503 'BUFFERS' 49) #(503 'BUFFER_USAGE_LIMIT' 50) #(503 'BY' 51) #(503 'BYPASSRLS' 52) #(503 'CACHE' 53) #(503 'CALL' 54) #(503 'CALLED' 55) #(503 'CANONICAL' 56) #(503 'CASCADE' 57) #(503 'CASCADED' 58) #(503 'CASE' 59) #(503 'CAST' 60) #(503 'CATEGORY' 61) #(503 'CHAIN' 62) #(503 'CHARACTER' 63) #(503 'CHARACTERISTICS' 64) #(503 'CHECK' 65) #(503 'CHECKPOINT' 66) #(503 'CLASS' 67) #(503 'CLOSE' 68) #(503 'CLUSTER' 69) #(503 'COLLATABLE' 70) #(503 'COLLATE' 71) #(503 'COLLATION' 72) #(503 'COLLATION_VERSION' 73) #(503 'COLUMN' 74) #(503 'COMBINEFUNC' 75) #(503 'COMMENT' 76) #(503 'COMMENTS' 77) #(503 'COMMIT' 78) #(503 'COMMITTED' 79) #(503 'COMMUTATOR' 80) #(503 'COMPRESSION' 81) #(503 'CONCURRENTLY' 82) #(503 'CONFIGURATION' 83) #(503 'CONFLICT' 84) #(503 'CONNECT' 85) #(503 'CONNECTION' 86) #(503 'CONSTRAINT' 87) #(503 'CONSTRAINTS' 88) #(503 'CONTINUE' 89) #(503 'CONVERSION' 90) #(503 'COPY' 91) #(503 'COST' 92) #(503 'COSTS' 93) #(503 'CREATE' 94) #(503 'CREATEDB' 95) #(503 'CREATEROLE' 96) #(503 'CROSS' 97) #(503 'CUBE' 98) #(503 'CURRENT' 99) #(503 'CURRENT_ROLE' 100) #(503 'CURRENT_SCHEMA' 101) #(503 'CURRENT_USER' 102) #(503 'CURSOR' 103) #(503 'CYCLE' 104) #(503 'DATA' 105) #(503 'DATABASE' 106) #(503 'DEALLOCATE' 107) #(503 'DECLARE' 108) #(503 'DEFAULT' 109) #(503 'DEFAULTS' 110) #(503 'DEFERRABLE' 111) #(503 'DEFERRED' 112) #(503 'DEFINER' 113) #(503 'DELETE' 114) #(503 'DELIMITER' 115) #(503 'DEPENDS' 116) #(503 'DEPTH' 117) #(503 'DESC' 118) #(503 'DESERIALFUNC' 119) #(503 'DETACH' 120) #(503 'DETERMINISTIC' 121) #(503 'DICTIONARY' 122) #(503 'DISABLE' 123) #(503 'DISABLE_PAGE_SKIPPING' 124) #(503 'DISCARD' 125) #(503 'DISTINCT' 126) #(503 'DO' 127) #(503 'DOMAIN' 128) #(503 'DOUBLE' 129) #(503 'DROP' 130) #(503 'EACH' 131) #(503 'ELEMENT' 132) #(503 'ELSE' 133) #(503 'ENABLE' 134) #(503 'ENCODING' 135) #(503 'ENCRYPTED' 136) #(503 'END' 137) #(503 'ENUM' 138) #(503 'EVENT' 139) #(503 'EXCEPT' 140) #(503 'EXCLUDE' 141) #(503 'EXCLUDING' 142) #(503 'EXCLUSIVE' 143) #(503 'EXECUTE' 144) #(503 'EXISTS' 145) #(503 'EXPLAIN' 146) #(503 'EXPRESSION' 147) #(503 'EXTENDED' 148) #(503 'EXTENSION' 149) #(503 'EXTERNAL' 150) #(503 'FALSE' 151) #(503 'FAMILY' 152) #(503 'FETCH' 153) #(503 'FILTER' 154) #(503 'FINALFUNC' 155) #(503 'FINALFUNC_EXTRA' 156) #(503 'FINALFUNC_MODIFY' 157) #(503 'FINALIZE' 158) #(503 'FIRST' 159) #(503 'FOLLOWING' 160) #(503 'FOR' 161) #(503 'FORCE' 162) #(503 'FOREIGN' 163) #(503 'FORMAT' 164) #(503 'FORWARD' 165) #(503 'FREEZE' 166) #(503 'FROM' 167) #(503 'FULL' 168) #(503 'FUNCTION' 169) #(503 'FUNCTIONS' 170) #(503 'GENERATED' 171) #(503 'GENERIC_PLAN' 172) #(503 'GETTOKEN' 173) #(503 'GLOBAL' 174) #(503 'GRANT' 175) #(503 'GRANTED' 176) #(503 'GROUP' 177) #(503 'GROUPING' 178) #(503 'GROUPS' 179) #(503 'HANDLER' 180) #(503 'HASH' 181) #(503 'HASHES' 182) #(503 'HAVING' 183) #(503 'HEADLINE' 184) #(503 'HOLD' 185) #(503 'HYPOTHETICAL' 186) #(503 'ICU_LOCALE' 187) #(503 'ICU_RULES' 188) #(503 'IDENTITY' 189) #(503 'IF' 190) #(503 'ILIKE' 191) #(503 'IMMEDIATE' 192) #(503 'IMMUTABLE' 193) #(503 'IMPLICIT' 194) #(503 'IMPORT' 195) #(503 'IN' 196) #(503 'INCLUDE' 197) #(503 'INCLUDING' 198) #(503 'INCREMENT' 199) #(503 'INDEX' 200) #(503 'INDEXES' 201) #(503 'INDEX_CLEANUP' 202) #(503 'INHERIT' 203) #(503 'INHERITS' 204) #(503 'INIT' 205) #(503 'INITCOND' 206) #(503 'INITIALLY' 207) #(503 'INLINE' 208) #(503 'INNER' 209) #(503 'INOUT' 210) #(503 'INPUT' 211) #(503 'INSENSITIVE' 212) #(503 'INSERT' 213) #(503 'INSTEAD' 214) #(503 'INTERNALLENGTH' 215) #(503 'INTERSECT' 216) #(503 'INTO' 217) #(503 'INVOKER' 218) #(503 'IS' 219) #(503 'ISOLATION' 220) #(503 'IS_TEMPLATE' 221) #(503 'JOIN' 222) #(503 'JSON' 223) #(503 'KEY' 224) #(503 'LABEL' 225) #(503 'LANGUAGE' 226) #(503 'LARGE' 227) #(503 'LAST' 228) #(503 'LATERAL' 229) #(503 'LC_COLLATE' 230) #(503 'LC_CTYPE' 231) #(503 'LEADING' 232) #(503 'LEAKPROOF' 233) #(503 'LEFT' 234) #(503 'LEFTARG' 235) #(503 'LEVEL' 236) #(503 'LEXIZE' 237) #(503 'LEXTYPES' 238) #(503 'LIKE' 239) #(503 'LIMIT' 240) #(503 'LIST' 241) #(503 'LISTEN' 242) #(503 'LOAD' 243) #(503 'LOCAL' 244) #(503 'LOCALE' 245) #(503 'LOCALE_PROVIDER' 246) #(503 'LOCATION' 247) #(503 'LOCK' 248) #(503 'LOCKED' 249) #(503 'LOGGED' 250) #(503 'LOGIN' 251) #(503 'MAIN' 252) #(503 'MAPPING' 253) #(503 'MATCH' 254) #(503 'MATCHED' 255) #(503 'MATERIALIZED' 256) #(503 'MAXVALUE' 257) #(503 'MERGE' 258) #(503 'MERGES' 259) #(503 'METHOD' 260) #(503 'MFINALFUNC' 261) #(503 'MFINALFUNC_EXTRA' 262) #(503 'MFINALFUNC_MODIFY' 263) #(503 'MINITCOND' 264) #(503 'MINVALUE' 265) #(503 'MINVFUNC' 266) #(503 'MODE' 267) #(503 'MODULUS' 268) #(503 'MOVE' 269) #(503 'MSFUNC' 270) #(503 'MSSPACE' 271) #(503 'MSTYPE' 272) #(503 'MULTIRANGE_TYPE_NAME' 273) #(503 'NATURAL' 274) #(503 'NEGATOR' 275) #(503 'NEW' 276) #(503 'NEXT' 277) #(503 'NO' 278) #(503 'NOBYPASSRLS' 279) #(503 'NOCREATEDB' 280) #(503 'NOCREATEROLE' 281) #(503 'NOINHERIT' 282) #(503 'NOLOGIN' 283) #(503 'NONE' 284) #(503 'NOREPLICATION' 285) #(503 'NOSUPERUSER' 286) #(503 'NOT' 287) #(503 'NOTHING' 288) #(503 'NOTIFY' 289) #(503 'NOWAIT' 290) #(503 'NULL' 291) #(503 'NULLS' 292) #(503 'OBJECT' 293) #(503 'OF' 294) #(503 'OFF' 295) #(503 'OFFSET' 296) #(503 'OID' 297) #(503 'OIDS' 298) #(503 'OLD' 299) #(503 'ON' 300) #(503 'ONLY' 301) #(503 'ONLY_DATABASE_STATS' 302) #(503 'OPERATOR' 303) #(503 'OPTION' 304) #(503 'OPTIONS' 305) #(503 'OR' 306) #(503 'ORDER' 307) #(503 'ORDINALITY' 308) #(503 'OTHERS' 309) #(503 'OUT' 310) #(503 'OUTER' 311) #(503 'OUTPUT' 312) #(503 'OVER' 313) #(503 'OVERRIDING' 314) #(503 'OWNED' 315) #(503 'OWNER' 316) #(503 'PARALLEL' 317) #(503 'PARAMETER' 318) #(503 'PARSER' 319) #(503 'PARTIAL' 320) #(503 'PARTITION' 321) #(503 'PASSEDBYVALUE' 322) #(503 'PASSWORD' 323) #(503 'PERMISSIVE' 324) #(503 'PLACING' 325) #(503 'PLAIN' 326) #(503 'PLANS' 327) #(503 'POLICY' 328) #(503 'PRECEDING' 329) #(503 'PRECISION' 330) #(503 'PREFERRED' 331) #(503 'PREPARE' 332) #(503 'PREPARED' 333) #(503 'PRESERVE' 334) #(503 'PRIMARY' 335) #(503 'PRIOR' 336) #(503 'PRIVILEGES' 337) #(503 'PROCEDURAL' 338) #(503 'PROCEDURE' 339) #(503 'PROCEDURES' 340) #(503 'PROCESS_MAIN' 341) #(503 'PROCESS_TOAST' 342) #(503 'PROGRAM' 343) #(503 'PROVIDER' 344) #(503 'PUBLIC' 345) #(503 'PUBLICATION' 346) #(503 'RANGE' 347) #(503 'READ' 348) #(503 'READ_ONLY' 349) #(503 'READ_WRITE' 350) #(503 'REASSIGN' 351) #(503 'RECEIVE' 352) #(503 'RECURSIVE' 353) #(503 'REFERENCES' 354) #(503 'REFERENCING' 355) #(503 'REFRESH' 356) #(503 'REINDEX' 357) #(503 'RELATIVE' 358) #(503 'RELEASE' 359) #(503 'REMAINDER' 360) #(503 'RENAME' 361) #(503 'REPEATABLE' 362) #(503 'REPLACE' 363) #(503 'REPLICA' 364) #(503 'REPLICATION' 365) #(503 'RESET' 366) #(503 'RESTART' 367) #(503 'RESTRICT' 368) #(503 'RESTRICTED' 369) #(503 'RESTRICTIVE' 370) #(503 'RETURNING' 371) #(503 'RETURNS' 372) #(503 'REVOKE' 373) #(503 'RIGHT' 374) #(503 'RIGHTARG' 375) #(503 'ROLE' 376) #(503 'ROLLBACK' 377) #(503 'ROLLUP' 378) #(503 'ROUTINE' 379) #(503 'ROUTINES' 380) #(503 'ROW' 381) #(503 'ROWS' 382) #(503 'RULE' 383) #(503 'RULES' 384) #(503 'SAFE' 385) #(503 'SAVEPOINT' 386) #(503 'SCHEMA' 387) #(503 'SCHEMAS' 388) #(503 'SCROLL' 389) #(503 'SEARCH' 390) #(503 'SECURITY' 391) #(503 'SELECT' 392) #(503 'SEND' 393) #(503 'SEQUENCE' 394) #(503 'SEQUENCES' 395) #(503 'SERIALFUNC' 396) #(503 'SERIALIZABLE' 397) #(503 'SERVER' 398) #(503 'SESSION' 399) #(503 'SESSION_USER' 400) #(503 'SET' 401) #(503 'SETS' 402) #(503 'SETTINGS' 403) #(503 'SFUNC' 404) #(503 'SHARE' 405) #(503 'SHAREABLE' 406) #(503 'SHOW' 407) #(503 'SIMPLE' 408) #(503 'SKIP' 409) #(503 'SKIP_DATABASE_STATS' 410) #(503 'SKIP_LOCKED' 411) #(503 'SNAPSHOT' 412) #(503 'SORTOP' 413) #(503 'SQL' 414) #(503 'SSPACE' 415) #(503 'STABLE' 416) #(503 'START' 417) #(503 'STATEMENT' 418) #(503 'STATISTICS' 419) #(503 'STDIN' 420) #(503 'STDOUT' 421) #(503 'STORAGE' 422) #(503 'STORED' 423) #(503 'STRATEGY' 424) #(503 'STRICT' 425) #(503 'STYPE' 426) #(503 'SUBSCRIPT' 427) #(503 'SUBSCRIPTION' 428) #(503 'SUBTYPE' 429) #(503 'SUBTYPE_DIFF' 430) #(503 'SUBTYPE_OPCLASS' 431) #(503 'SUMMARY' 432) #(503 'SUPERUSER' 433) #(503 'SUPPORT' 434) #(503 'SYSID' 435) #(503 'SYSTEM' 436) #(503 'TABLE' 437) #(503 'TABLES' 438) #(503 'TABLESAMPLE' 439) #(503 'TABLESPACE' 440) #(503 'TEMP' 441) #(503 'TEMPLATE' 442) #(503 'TEMPORARY' 443) #(503 'TEXT' 444) #(503 'THEN' 445) #(503 'TIES' 446) #(503 'TIME' 447) #(503 'TIMESTAMP' 448) #(503 'TIMING' 449) #(503 'TO' 450) #(503 'TRAILING' 451) #(503 'TRANSACTION' 452) #(503 'TRANSFORM' 453) #(503 'TRIGGER' 454) #(503 'TRUE' 455) #(503 'TRUNCATE' 456) #(503 'TRUSTED' 457) #(503 'TYPE' 458) #(503 'TYPES' 459) #(503 'TYPMOD_IN' 460) #(503 'TYPMOD_OUT' 461) #(503 'UNBOUNDED' 462) #(503 'UNCOMMITTED' 463) #(503 'UNION' 464) #(503 'UNIQUE' 465) #(503 'UNLISTEN' 466) #(503 'UNLOGGED' 467) #(503 'UNSAFE' 468) #(503 'UNTIL' 469) #(503 'UPDATE' 470) #(503 'USAGE' 471) #(503 'USER' 472) #(503 'USING' 473) #(503 'VACUUM' 474) #(503 'VALID' 475) #(503 'VALIDATE' 476) #(503 'VALIDATOR' 477) #(503 'VALUE' 478) #(503 'VALUES' 479) #(503 'VARIABLE' 480) #(503 'VARIADIC' 481) #(503 'VARYING' 482) #(503 'VERBOSE' 483) #(503 'VERSION' 484) #(503 'VIEW' 485) #(503 'VOLATILE' 486) #(503 'WAL' 487) #(503 'WHEN' 488) #(503 'WHERE' 489) #(503 'WINDOW' 490) #(503 'WITH' 491) #(503 'WITHIN' 492) #(503 'WITHOUT' 493) #(503 'WORK' 494) #(503 'WRAPPER' 495) #(503 'WRITE' 496) #(503 'XML' 497) #(503 'YAML' 498) #(503 'ZONE' 499))
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
	^ 1854
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
	^ 1855
]

{ #category : #generated }
PsqlScanner >> errorTokenId [
	^ 1856
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
	^ 508
]

{ #category : #generated }
PsqlScanner >> scan1 [
	[ self recordMatch: #(507).
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
	[ self recordMatch: #(506).
	self step.
	currentCharacter == $_ ifTrue: [ ^ self scan9 ].
	currentCharacter isDigit ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scan11 [
	self recordMatch: #(506).
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan7 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scan12 [
	[ self recordMatch: #(506).
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
	[ self recordMatch: #(506).
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
	[ self recordMatch: #(506).
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
	[ self recordMatch: #(506).
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
	self recordMatch: #(507).
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
		ifTrue: [ self recordMatch: #(503).
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
		ifTrue: [ self recordMatch: #(503).
			self step.
			currentCharacter == $' ifTrue: [ ^ self scan22 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
PsqlScanner >> scan23 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ self recordMatch: #(503).
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
		ifTrue: [ self recordMatch: #(502).
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
		ifTrue: [ self recordMatch: #(503).
			self step.
			currentCharacter == $" ifTrue: [ ^ self scan4 ].
			^ self reportLastMatch ].
	currentCharacter >= Character home ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scan5 [
	[ self step.
	currentCharacter == $$ ifTrue: [ ^ self recordAndReportMatch: #(505) ].
	true ] whileTrue
]

{ #category : #generated }
PsqlScanner >> scan6 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ self recordMatch: #(502).
			self step.
			currentCharacter == $' ifTrue: [ ^ self scan6 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
PsqlScanner >> scan7 [
	[ self recordMatch: #(506).
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
	self recordMatch: #(6 506).
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
	[ self recordMatch: #(509).
	self step.
	currentCharacter isSeparator or: [ currentCharacter == Character pageUp ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scanForTokenX11 [
	[ self recordMatch: #(503).
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
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(500) ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(501) ].
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
	self recordMatch: #(507).
	self step.
	currentCharacter == $-
		ifTrue: [ [ self recordMatch: #(510).
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
	self recordMatch: #(12 507 508).
	self step.
	currentCharacter == $>
		ifTrue: [ self recordMatch: #(507 508).
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
	self recordMatch: #(3 507 508).
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
	self recordMatch: #(503).
	self step.
	currentCharacter == $'
		ifTrue: [ [ self step.
			currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(504) ].
			currentCharacter between: $0 and: $1 ] whileTrue.
			^ self reportLastMatch ].
	(currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ])
		ifTrue: [ [ self recordMatch: #(503).
			self step.
			currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scanForTokenX6 [
	self recordMatch: #(503).
	self step.
	currentCharacter == $&
		ifTrue: [ self step.
			currentCharacter == $" ifTrue: [ ^ self scan20 ].
			currentCharacter == $' ifTrue: [ ^ self scan25 ].
			^ self reportLastMatch ].
	(currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ])
		ifTrue: [ [ self recordMatch: #(503).
			self step.
			currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scanForTokenX7 [
	self recordMatch: #(7 506).
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
	currentCharacter == $$ ifTrue: [ ^ self recordAndReportMatch: #(505) ].
	(currentCharacter between: $1 and: $9)
		ifTrue: [ [ self recordMatch: #(512).
			self step.
			currentCharacter == $$ ifTrue: [ ^ self recordAndReportMatch: #(505) ].
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
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #dollarStringStart nil #checkOperator nil #whitespace #comment #multilineComment)
]

{ #category : #generated }
PsqlScanner >> tokenClass [
	^SmaCCCaseInsensitiveToken
]
