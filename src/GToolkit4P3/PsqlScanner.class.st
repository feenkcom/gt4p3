Class {
	#name : #PsqlScanner,
	#superclass : #SmaCCScanner,
	#category : #'GToolkit4P3-Parser'
}

{ #category : #'generated-initialization' }
PsqlScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(508 '/*' 512) #(508 '=>' 13) #(509 '=>' 13) #(504 'ABORT' 14) #(504 'ABSOLUTE' 15) #(504 'ACCESS' 16) #(504 'ACTION' 17) #(504 'ADD' 18) #(504 'ADMIN' 19) #(504 'AFTER' 20) #(504 'AGGREGATE' 21) #(504 'ALIGNMENT' 22) #(504 'ALL' 23) #(504 'ALLOW_CONNECTIONS' 24) #(504 'ALSO' 25) #(504 'ALTER' 26) #(504 'ALWAYS' 27) #(504 'ANALYZE' 28) #(504 'AND' 29) #(504 'ARRAY' 30) #(504 'AS' 31) #(504 'ASC' 32) #(504 'ASENSITIVE' 33) #(504 'ASSIGNMENT' 34) #(504 'ATTACH' 35) #(504 'ATTRIBUTE' 36) #(504 'AUTHORIZATION' 37) #(504 'AUTO' 38) #(504 'BACKWARD' 39) #(504 'BASETYPE' 40) #(504 'BEFORE' 41) #(504 'BEGIN' 42) #(504 'BETWEEEN' 43) #(504 'BETWEEN' 44) #(504 'BINARY' 45) #(504 'BIT' 46) #(504 'BOTH' 47) #(504 'BREADTH' 48) #(504 'BUFFERS' 49) #(504 'BUFFER_USAGE_LIMIT' 50) #(504 'BY' 51) #(504 'BYPASSRLS' 52) #(504 'CACHE' 53) #(504 'CALL' 54) #(504 'CALLED' 55) #(504 'CANONICAL' 56) #(504 'CASCADE' 57) #(504 'CASCADED' 58) #(504 'CASE' 59) #(504 'CAST' 60) #(504 'CATEGORY' 61) #(504 'CHAIN' 62) #(504 'CHARACTER' 63) #(504 'CHARACTERISTICS' 64) #(504 'CHECK' 65) #(504 'CHECKPOINT' 66) #(504 'CLASS' 67) #(504 'CLOSE' 68) #(504 'CLUSTER' 69) #(504 'COLLATABLE' 70) #(504 'COLLATE' 71) #(504 'COLLATION' 72) #(504 'COLLATION_VERSION' 73) #(504 'COLUMN' 74) #(504 'COMBINEFUNC' 75) #(504 'COMMENT' 76) #(504 'COMMENTS' 77) #(504 'COMMIT' 78) #(504 'COMMITTED' 79) #(504 'COMMUTATOR' 80) #(504 'COMPRESSION' 81) #(504 'CONCURRENTLY' 82) #(504 'CONFIGURATION' 83) #(504 'CONFLICT' 84) #(504 'CONNECT' 85) #(504 'CONNECTION' 86) #(504 'CONSTRAINT' 87) #(504 'CONSTRAINTS' 88) #(504 'CONTINUE' 89) #(504 'CONVERSION' 90) #(504 'COPY' 91) #(504 'COST' 92) #(504 'COSTS' 93) #(504 'CREATE' 94) #(504 'CREATEDB' 95) #(504 'CREATEROLE' 96) #(504 'CROSS' 97) #(504 'CUBE' 98) #(504 'CURRENT' 99) #(504 'CURRENT_ROLE' 100) #(504 'CURRENT_SCHEMA' 101) #(504 'CURRENT_USER' 102) #(504 'CURSOR' 103) #(504 'CYCLE' 104) #(504 'DATA' 105) #(504 'DATABASE' 106) #(504 'DEALLOCATE' 107) #(504 'DECLARE' 108) #(504 'DEFAULT' 109) #(504 'DEFAULTS' 110) #(504 'DEFERRABLE' 111) #(504 'DEFERRED' 112) #(504 'DEFINER' 113) #(504 'DELETE' 114) #(504 'DELIMITER' 115) #(504 'DEPENDS' 116) #(504 'DEPTH' 117) #(504 'DESC' 118) #(504 'DESERIALFUNC' 119) #(504 'DETACH' 120) #(504 'DETERMINISTIC' 121) #(504 'DICTIONARY' 122) #(504 'DISABLE' 123) #(504 'DISABLE_PAGE_SKIPPING' 124) #(504 'DISCARD' 125) #(504 'DISTINCT' 126) #(504 'DO' 127) #(504 'DOMAIN' 128) #(504 'DOUBLE' 129) #(504 'DROP' 130) #(504 'EACH' 131) #(504 'ELEMENT' 132) #(504 'ELSE' 133) #(504 'ENABLE' 134) #(504 'ENCODING' 135) #(504 'ENCRYPTED' 136) #(504 'END' 137) #(504 'ENUM' 138) #(504 'EVENT' 139) #(504 'EXCEPT' 140) #(504 'EXCLUDE' 141) #(504 'EXCLUDING' 142) #(504 'EXCLUSIVE' 143) #(504 'EXECUTE' 144) #(504 'EXISTS' 145) #(504 'EXPLAIN' 146) #(504 'EXPRESSION' 147) #(504 'EXTENDED' 148) #(504 'EXTENSION' 149) #(504 'EXTERNAL' 150) #(504 'FALSE' 151) #(504 'FAMILY' 152) #(504 'FETCH' 153) #(504 'FILTER' 154) #(504 'FINALFUNC' 155) #(504 'FINALFUNC_EXTRA' 156) #(504 'FINALFUNC_MODIFY' 157) #(504 'FINALIZE' 158) #(504 'FIRST' 159) #(504 'FOLLOWING' 160) #(504 'FOR' 161) #(504 'FORCE' 162) #(504 'FOREIGN' 163) #(504 'FORMAT' 164) #(504 'FORWARD' 165) #(504 'FREEZE' 166) #(504 'FROM' 167) #(504 'FULL' 168) #(504 'FUNCTION' 169) #(504 'FUNCTIONS' 170) #(504 'GENERATED' 171) #(504 'GENERIC_PLAN' 172) #(504 'GETTOKEN' 173) #(504 'GLOBAL' 174) #(504 'GRANT' 175) #(504 'GRANTED' 176) #(504 'GROUP' 177) #(504 'GROUPING' 178) #(504 'GROUPS' 179) #(504 'HANDLER' 180) #(504 'HASH' 181) #(504 'HASHES' 182) #(504 'HAVING' 183) #(504 'HEADLINE' 184) #(504 'HOLD' 185) #(504 'HYPOTHETICAL' 186) #(504 'ICU_LOCALE' 187) #(504 'ICU_RULES' 188) #(504 'IDENTITY' 189) #(504 'IF' 190) #(504 'ILIKE' 191) #(504 'IMMEDIATE' 192) #(504 'IMMUTABLE' 193) #(504 'IMPLICIT' 194) #(504 'IMPORT' 195) #(504 'IN' 196) #(504 'INCLUDE' 197) #(504 'INCLUDING' 198) #(504 'INCREMENT' 199) #(504 'INDEX' 200) #(504 'INDEXES' 201) #(504 'INDEX_CLEANUP' 202) #(504 'INHERIT' 203) #(504 'INHERITS' 204) #(504 'INIT' 205) #(504 'INITCOND' 206) #(504 'INITIALLY' 207) #(504 'INLINE' 208) #(504 'INNER' 209) #(504 'INOUT' 210) #(504 'INPUT' 211) #(504 'INSENSITIVE' 212) #(504 'INSERT' 213) #(504 'INSTEAD' 214) #(504 'INTERNALLENGTH' 215) #(504 'INTERSECT' 216) #(504 'INTERVAL' 217) #(504 'INTO' 218) #(504 'INVOKER' 219) #(504 'IS' 220) #(504 'ISOLATION' 221) #(504 'IS_TEMPLATE' 222) #(504 'JOIN' 223) #(504 'JSON' 224) #(504 'KEY' 225) #(504 'LABEL' 226) #(504 'LANGUAGE' 227) #(504 'LARGE' 228) #(504 'LAST' 229) #(504 'LATERAL' 230) #(504 'LC_COLLATE' 231) #(504 'LC_CTYPE' 232) #(504 'LEADING' 233) #(504 'LEAKPROOF' 234) #(504 'LEFT' 235) #(504 'LEFTARG' 236) #(504 'LEVEL' 237) #(504 'LEXIZE' 238) #(504 'LEXTYPES' 239) #(504 'LIKE' 240) #(504 'LIMIT' 241) #(504 'LIST' 242) #(504 'LISTEN' 243) #(504 'LOAD' 244) #(504 'LOCAL' 245) #(504 'LOCALE' 246) #(504 'LOCALE_PROVIDER' 247) #(504 'LOCATION' 248) #(504 'LOCK' 249) #(504 'LOCKED' 250) #(504 'LOGGED' 251) #(504 'LOGIN' 252) #(504 'MAIN' 253) #(504 'MAPPING' 254) #(504 'MATCH' 255) #(504 'MATCHED' 256) #(504 'MATERIALIZED' 257) #(504 'MAXVALUE' 258) #(504 'MERGE' 259) #(504 'MERGES' 260) #(504 'METHOD' 261) #(504 'MFINALFUNC' 262) #(504 'MFINALFUNC_EXTRA' 263) #(504 'MFINALFUNC_MODIFY' 264) #(504 'MINITCOND' 265) #(504 'MINVALUE' 266) #(504 'MINVFUNC' 267) #(504 'MODE' 268) #(504 'MODULUS' 269) #(504 'MOVE' 270) #(504 'MSFUNC' 271) #(504 'MSSPACE' 272) #(504 'MSTYPE' 273) #(504 'MULTIRANGE_TYPE_NAME' 274) #(504 'NATURAL' 275) #(504 'NEGATOR' 276) #(504 'NEW' 277) #(504 'NEXT' 278) #(504 'NO' 279) #(504 'NOBYPASSRLS' 280) #(504 'NOCREATEDB' 281) #(504 'NOCREATEROLE' 282) #(504 'NOINHERIT' 283) #(504 'NOLOGIN' 284) #(504 'NONE' 285) #(504 'NOREPLICATION' 286) #(504 'NOSUPERUSER' 287) #(504 'NOT' 288) #(504 'NOTHING' 289) #(504 'NOTIFY' 290) #(504 'NOWAIT' 291) #(504 'NULL' 292) #(504 'NULLS' 293) #(504 'OBJECT' 294) #(504 'OF' 295) #(504 'OFF' 296) #(504 'OFFSET' 297) #(504 'OID' 298) #(504 'OIDS' 299) #(504 'OLD' 300) #(504 'ON' 301) #(504 'ONLY' 302) #(504 'ONLY_DATABASE_STATS' 303) #(504 'OPERATOR' 304) #(504 'OPTION' 305) #(504 'OPTIONS' 306) #(504 'OR' 307) #(504 'ORDER' 308) #(504 'ORDINALITY' 309) #(504 'OTHERS' 310) #(504 'OUT' 311) #(504 'OUTER' 312) #(504 'OUTPUT' 313) #(504 'OVER' 314) #(504 'OVERRIDING' 315) #(504 'OWNED' 316) #(504 'OWNER' 317) #(504 'PARALLEL' 318) #(504 'PARAMETER' 319) #(504 'PARSER' 320) #(504 'PARTIAL' 321) #(504 'PARTITION' 322) #(504 'PASSEDBYVALUE' 323) #(504 'PASSWORD' 324) #(504 'PERMISSIVE' 325) #(504 'PLACING' 326) #(504 'PLAIN' 327) #(504 'PLANS' 328) #(504 'POLICY' 329) #(504 'PRECEDING' 330) #(504 'PRECISION' 331) #(504 'PREFERRED' 332) #(504 'PREPARE' 333) #(504 'PREPARED' 334) #(504 'PRESERVE' 335) #(504 'PRIMARY' 336) #(504 'PRIOR' 337) #(504 'PRIVILEGES' 338) #(504 'PROCEDURAL' 339) #(504 'PROCEDURE' 340) #(504 'PROCEDURES' 341) #(504 'PROCESS_MAIN' 342) #(504 'PROCESS_TOAST' 343) #(504 'PROGRAM' 344) #(504 'PROVIDER' 345) #(504 'PUBLIC' 346) #(504 'PUBLICATION' 347) #(504 'RANGE' 348) #(504 'READ' 349) #(504 'READ_ONLY' 350) #(504 'READ_WRITE' 351) #(504 'REASSIGN' 352) #(504 'RECEIVE' 353) #(504 'RECURSIVE' 354) #(504 'REFERENCES' 355) #(504 'REFERENCING' 356) #(504 'REFRESH' 357) #(504 'REINDEX' 358) #(504 'RELATIVE' 359) #(504 'RELEASE' 360) #(504 'REMAINDER' 361) #(504 'RENAME' 362) #(504 'REPEATABLE' 363) #(504 'REPLACE' 364) #(504 'REPLICA' 365) #(504 'REPLICATION' 366) #(504 'RESET' 367) #(504 'RESTART' 368) #(504 'RESTRICT' 369) #(504 'RESTRICTED' 370) #(504 'RESTRICTIVE' 371) #(504 'RETURNING' 372) #(504 'RETURNS' 373) #(504 'REVOKE' 374) #(504 'RIGHT' 375) #(504 'RIGHTARG' 376) #(504 'ROLE' 377) #(504 'ROLLBACK' 378) #(504 'ROLLUP' 379) #(504 'ROUTINE' 380) #(504 'ROUTINES' 381) #(504 'ROW' 382) #(504 'ROWS' 383) #(504 'RULE' 384) #(504 'RULES' 385) #(504 'SAFE' 386) #(504 'SAVEPOINT' 387) #(504 'SCHEMA' 388) #(504 'SCHEMAS' 389) #(504 'SCROLL' 390) #(504 'SEARCH' 391) #(504 'SECURITY' 392) #(504 'SELECT' 393) #(504 'SEND' 394) #(504 'SEQUENCE' 395) #(504 'SEQUENCES' 396) #(504 'SERIALFUNC' 397) #(504 'SERIALIZABLE' 398) #(504 'SERVER' 399) #(504 'SESSION' 400) #(504 'SESSION_USER' 401) #(504 'SET' 402) #(504 'SETS' 403) #(504 'SETTINGS' 404) #(504 'SFUNC' 405) #(504 'SHARE' 406) #(504 'SHAREABLE' 407) #(504 'SHOW' 408) #(504 'SIMPLE' 409) #(504 'SKIP' 410) #(504 'SKIP_DATABASE_STATS' 411) #(504 'SKIP_LOCKED' 412) #(504 'SNAPSHOT' 413) #(504 'SORTOP' 414) #(504 'SQL' 415) #(504 'SSPACE' 416) #(504 'STABLE' 417) #(504 'START' 418) #(504 'STATEMENT' 419) #(504 'STATISTICS' 420) #(504 'STDIN' 421) #(504 'STDOUT' 422) #(504 'STORAGE' 423) #(504 'STORED' 424) #(504 'STRATEGY' 425) #(504 'STRICT' 426) #(504 'STYPE' 427) #(504 'SUBSCRIPT' 428) #(504 'SUBSCRIPTION' 429) #(504 'SUBTYPE' 430) #(504 'SUBTYPE_DIFF' 431) #(504 'SUBTYPE_OPCLASS' 432) #(504 'SUMMARY' 433) #(504 'SUPERUSER' 434) #(504 'SUPPORT' 435) #(504 'SYSID' 436) #(504 'SYSTEM' 437) #(504 'TABLE' 438) #(504 'TABLES' 439) #(504 'TABLESAMPLE' 440) #(504 'TABLESPACE' 441) #(504 'TEMP' 442) #(504 'TEMPLATE' 443) #(504 'TEMPORARY' 444) #(504 'TEXT' 445) #(504 'THEN' 446) #(504 'TIES' 447) #(504 'TIME' 448) #(504 'TIMESTAMP' 449) #(504 'TIMING' 450) #(504 'TO' 451) #(504 'TRAILING' 452) #(504 'TRANSACTION' 453) #(504 'TRANSFORM' 454) #(504 'TRIGGER' 455) #(504 'TRUE' 456) #(504 'TRUNCATE' 457) #(504 'TRUSTED' 458) #(504 'TYPE' 459) #(504 'TYPES' 460) #(504 'TYPMOD_IN' 461) #(504 'TYPMOD_OUT' 462) #(504 'UNBOUNDED' 463) #(504 'UNCOMMITTED' 464) #(504 'UNION' 465) #(504 'UNIQUE' 466) #(504 'UNLISTEN' 467) #(504 'UNLOGGED' 468) #(504 'UNSAFE' 469) #(504 'UNTIL' 470) #(504 'UPDATE' 471) #(504 'USAGE' 472) #(504 'USER' 473) #(504 'USING' 474) #(504 'VACUUM' 475) #(504 'VALID' 476) #(504 'VALIDATE' 477) #(504 'VALIDATOR' 478) #(504 'VALUE' 479) #(504 'VALUES' 480) #(504 'VARIABLE' 481) #(504 'VARIADIC' 482) #(504 'VARYING' 483) #(504 'VERBOSE' 484) #(504 'VERSION' 485) #(504 'VIEW' 486) #(504 'VOLATILE' 487) #(504 'WAL' 488) #(504 'WHEN' 489) #(504 'WHERE' 490) #(504 'WINDOW' 491) #(504 'WITH' 492) #(504 'WITHIN' 493) #(504 'WITHOUT' 494) #(504 'WORK' 495) #(504 'WRAPPER' 496) #(504 'WRITE' 497) #(504 'XML' 498) #(504 'YAML' 499) #(504 'ZONE' 500))
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
	^ 1827
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
	^ 1828
]

{ #category : #generated }
PsqlScanner >> errorTokenId [
	^ 1829
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
	^ 509
]

{ #category : #generated }
PsqlScanner >> scan1 [
	[ self recordMatch: #(508).
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
	[ self recordMatch: #(507).
	self step.
	currentCharacter == $_ ifTrue: [ ^ self scan9 ].
	currentCharacter isDigit ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scan11 [
	self recordMatch: #(507).
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan7 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scan12 [
	[ self recordMatch: #(507).
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
	[ self recordMatch: #(507).
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
	[ self recordMatch: #(507).
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
	[ self recordMatch: #(507).
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
	self recordMatch: #(508).
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
		ifTrue: [ self recordMatch: #(504).
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
		ifTrue: [ self recordMatch: #(504).
			self step.
			currentCharacter == $' ifTrue: [ ^ self scan22 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
PsqlScanner >> scan23 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ self recordMatch: #(504).
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
		ifTrue: [ self recordMatch: #(503).
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
		ifTrue: [ self recordMatch: #(504).
			self step.
			currentCharacter == $" ifTrue: [ ^ self scan4 ].
			^ self reportLastMatch ].
	currentCharacter >= Character home ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scan5 [
	[ self step.
	currentCharacter == $$ ifTrue: [ ^ self recordAndReportMatch: #(506) ].
	true ] whileTrue
]

{ #category : #generated }
PsqlScanner >> scan6 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ self recordMatch: #(503).
			self step.
			currentCharacter == $' ifTrue: [ ^ self scan6 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
PsqlScanner >> scan7 [
	[ self recordMatch: #(507).
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
	self recordMatch: #(6 507).
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
	[ self recordMatch: #(510).
	self step.
	currentCharacter isSeparator or: [ currentCharacter == Character pageUp ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scanForTokenX11 [
	[ self recordMatch: #(504).
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
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(501) ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(502) ].
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
	self recordMatch: #(508).
	self step.
	currentCharacter == $-
		ifTrue: [ [ self recordMatch: #(511).
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
	self recordMatch: #(12 508 509).
	self step.
	currentCharacter == $>
		ifTrue: [ self recordMatch: #(508 509).
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
	self recordMatch: #(3 508 509).
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
	self recordMatch: #(504).
	self step.
	currentCharacter == $'
		ifTrue: [ [ self step.
			currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(505) ].
			currentCharacter between: $0 and: $1 ] whileTrue.
			^ self reportLastMatch ].
	(currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ])
		ifTrue: [ [ self recordMatch: #(504).
			self step.
			currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scanForTokenX6 [
	self recordMatch: #(504).
	self step.
	currentCharacter == $&
		ifTrue: [ self step.
			currentCharacter == $" ifTrue: [ ^ self scan20 ].
			currentCharacter == $' ifTrue: [ ^ self scan25 ].
			^ self reportLastMatch ].
	(currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ])
		ifTrue: [ [ self recordMatch: #(504).
			self step.
			currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scanForTokenX7 [
	self recordMatch: #(7 507).
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
	currentCharacter == $$ ifTrue: [ ^ self recordAndReportMatch: #(506) ].
	(currentCharacter between: $1 and: $9)
		ifTrue: [ [ self recordMatch: #(513).
			self step.
			currentCharacter == $$ ifTrue: [ ^ self recordAndReportMatch: #(506) ].
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
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #dollarStringStart nil #checkOperator nil #whitespace #comment #multilineComment)
]

{ #category : #generated }
PsqlScanner >> tokenClass [
	^SmaCCCaseInsensitiveToken
]
