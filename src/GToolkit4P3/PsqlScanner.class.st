Class {
	#name : #PsqlScanner,
	#superclass : #SmaCCScanner,
	#category : #'GToolkit4P3-Parser'
}

{ #category : #'generated-initialization' }
PsqlScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(509 '/*' 513) #(509 '=>' 13) #(510 '=>' 13) #(505 'ABORT' 14) #(505 'ABSOLUTE' 15) #(505 'ACCESS' 16) #(505 'ACTION' 17) #(505 'ADD' 18) #(505 'ADMIN' 19) #(505 'AFTER' 20) #(505 'AGGREGATE' 21) #(505 'ALIGNMENT' 22) #(505 'ALL' 23) #(505 'ALLOW_CONNECTIONS' 24) #(505 'ALSO' 25) #(505 'ALTER' 26) #(505 'ALWAYS' 27) #(505 'ANALYZE' 28) #(505 'AND' 29) #(505 'ARRAY' 30) #(505 'AS' 31) #(505 'ASC' 32) #(505 'ASENSITIVE' 33) #(505 'ASSIGNMENT' 34) #(505 'ATTACH' 35) #(505 'ATTRIBUTE' 36) #(505 'AUTHORIZATION' 37) #(505 'AUTO' 38) #(505 'BACKWARD' 39) #(505 'BASETYPE' 40) #(505 'BEFORE' 41) #(505 'BEGIN' 42) #(505 'BETWEEEN' 43) #(505 'BETWEEN' 44) #(505 'BINARY' 45) #(505 'BIT' 46) #(505 'BOTH' 47) #(505 'BREADTH' 48) #(505 'BUFFERS' 49) #(505 'BUFFER_USAGE_LIMIT' 50) #(505 'BY' 51) #(505 'BYPASSRLS' 52) #(505 'CACHE' 53) #(505 'CALL' 54) #(505 'CALLED' 55) #(505 'CANONICAL' 56) #(505 'CASCADE' 57) #(505 'CASCADED' 58) #(505 'CASE' 59) #(505 'CAST' 60) #(505 'CATEGORY' 61) #(505 'CHAIN' 62) #(505 'CHARACTER' 63) #(505 'CHARACTERISTICS' 64) #(505 'CHECK' 65) #(505 'CHECKPOINT' 66) #(505 'CLASS' 67) #(505 'CLOSE' 68) #(505 'CLUSTER' 69) #(505 'COLLATABLE' 70) #(505 'COLLATE' 71) #(505 'COLLATION' 72) #(505 'COLLATION_VERSION' 73) #(505 'COLUMN' 74) #(505 'COMBINEFUNC' 75) #(505 'COMMENT' 76) #(505 'COMMENTS' 77) #(505 'COMMIT' 78) #(505 'COMMITTED' 79) #(505 'COMMUTATOR' 80) #(505 'COMPRESSION' 81) #(505 'CONCURRENTLY' 82) #(505 'CONFIGURATION' 83) #(505 'CONFLICT' 84) #(505 'CONNECT' 85) #(505 'CONNECTION' 86) #(505 'CONSTRAINT' 87) #(505 'CONSTRAINTS' 88) #(505 'CONTINUE' 89) #(505 'CONVERSION' 90) #(505 'COPY' 91) #(505 'COST' 92) #(505 'COSTS' 93) #(505 'CREATE' 94) #(505 'CREATEDB' 95) #(505 'CREATEROLE' 96) #(505 'CROSS' 97) #(505 'CUBE' 98) #(505 'CURRENT' 99) #(505 'CURRENT_ROLE' 100) #(505 'CURRENT_SCHEMA' 101) #(505 'CURRENT_USER' 102) #(505 'CURSOR' 103) #(505 'CYCLE' 104) #(505 'DATA' 105) #(505 'DATABASE' 106) #(505 'DEALLOCATE' 107) #(505 'DECLARE' 108) #(505 'DEFAULT' 109) #(505 'DEFAULTS' 110) #(505 'DEFERRABLE' 111) #(505 'DEFERRED' 112) #(505 'DEFINER' 113) #(505 'DELETE' 114) #(505 'DELIMITER' 115) #(505 'DEPENDS' 116) #(505 'DEPTH' 117) #(505 'DESC' 118) #(505 'DESERIALFUNC' 119) #(505 'DETACH' 120) #(505 'DETERMINISTIC' 121) #(505 'DICTIONARY' 122) #(505 'DISABLE' 123) #(505 'DISABLE_PAGE_SKIPPING' 124) #(505 'DISCARD' 125) #(505 'DISTINCT' 126) #(505 'DO' 127) #(505 'DOMAIN' 128) #(505 'DOUBLE' 129) #(505 'DROP' 130) #(505 'EACH' 131) #(505 'ELEMENT' 132) #(505 'ELSE' 133) #(505 'ENABLE' 134) #(505 'ENCODING' 135) #(505 'ENCRYPTED' 136) #(505 'END' 137) #(505 'ENUM' 138) #(505 'EVENT' 139) #(505 'EXCEPT' 140) #(505 'EXCLUDE' 141) #(505 'EXCLUDING' 142) #(505 'EXCLUSIVE' 143) #(505 'EXECUTE' 144) #(505 'EXISTS' 145) #(505 'EXPLAIN' 146) #(505 'EXPRESSION' 147) #(505 'EXTENDED' 148) #(505 'EXTENSION' 149) #(505 'EXTERNAL' 150) #(505 'FALSE' 151) #(505 'FAMILY' 152) #(505 'FETCH' 153) #(505 'FILTER' 154) #(505 'FINALFUNC' 155) #(505 'FINALFUNC_EXTRA' 156) #(505 'FINALFUNC_MODIFY' 157) #(505 'FINALIZE' 158) #(505 'FIRST' 159) #(505 'FOLLOWING' 160) #(505 'FOR' 161) #(505 'FORCE' 162) #(505 'FOREIGN' 163) #(505 'FORMAT' 164) #(505 'FORWARD' 165) #(505 'FREEZE' 166) #(505 'FROM' 167) #(505 'FULL' 168) #(505 'FUNCTION' 169) #(505 'FUNCTIONS' 170) #(505 'GENERATED' 171) #(505 'GENERIC_PLAN' 172) #(505 'GETTOKEN' 173) #(505 'GLOBAL' 174) #(505 'GRANT' 175) #(505 'GRANTED' 176) #(505 'GROUP' 177) #(505 'GROUPING' 178) #(505 'GROUPS' 179) #(505 'HANDLER' 180) #(505 'HASH' 181) #(505 'HASHES' 182) #(505 'HAVING' 183) #(505 'HEADLINE' 184) #(505 'HOLD' 185) #(505 'HYPOTHETICAL' 186) #(505 'ICU_LOCALE' 187) #(505 'ICU_RULES' 188) #(505 'IDENTITY' 189) #(505 'IF' 190) #(505 'ILIKE' 191) #(505 'IMMEDIATE' 192) #(505 'IMMUTABLE' 193) #(505 'IMPLICIT' 194) #(505 'IMPORT' 195) #(505 'IN' 196) #(505 'INCLUDE' 197) #(505 'INCLUDING' 198) #(505 'INCREMENT' 199) #(505 'INDEX' 200) #(505 'INDEXES' 201) #(505 'INDEX_CLEANUP' 202) #(505 'INHERIT' 203) #(505 'INHERITS' 204) #(505 'INIT' 205) #(505 'INITCOND' 206) #(505 'INITIALLY' 207) #(505 'INLINE' 208) #(505 'INNER' 209) #(505 'INOUT' 210) #(505 'INPUT' 211) #(505 'INSENSITIVE' 212) #(505 'INSERT' 213) #(505 'INSTEAD' 214) #(505 'INTERNALLENGTH' 215) #(505 'INTERSECT' 216) #(505 'INTO' 217) #(505 'INVOKER' 218) #(505 'IS' 219) #(505 'ISOLATION' 220) #(505 'IS_TEMPLATE' 221) #(505 'JOIN' 222) #(505 'JSON' 223) #(505 'KEY' 224) #(505 'LABEL' 225) #(505 'LANGUAGE' 226) #(505 'LARGE' 227) #(505 'LAST' 228) #(505 'LATERAL' 229) #(505 'LC_COLLATE' 230) #(505 'LC_CTYPE' 231) #(505 'LEADING' 232) #(505 'LEAKPROOF' 233) #(505 'LEFT' 234) #(505 'LEFTARG' 235) #(505 'LEVEL' 236) #(505 'LEXIZE' 237) #(505 'LEXTYPES' 238) #(505 'LIKE' 239) #(505 'LIMIT' 240) #(505 'LIST' 241) #(505 'LISTEN' 242) #(505 'LOAD' 243) #(505 'LOCAL' 244) #(505 'LOCALE' 245) #(505 'LOCALE_PROVIDER' 246) #(505 'LOCATION' 247) #(505 'LOCK' 248) #(505 'LOCKED' 249) #(505 'LOGGED' 250) #(505 'LOGIN' 251) #(505 'MAIN' 252) #(505 'MAPPING' 253) #(505 'MATCH' 254) #(505 'MATCHED' 255) #(505 'MATERIALIZED' 256) #(505 'MAXVALUE' 257) #(505 'MERGE' 258) #(505 'MERGES' 259) #(505 'METHOD' 260) #(505 'MFINALFUNC' 261) #(505 'MFINALFUNC_EXTRA' 262) #(505 'MFINALFUNC_MODIFY' 263) #(505 'MINITCOND' 264) #(505 'MINVALUE' 265) #(505 'MINVFUNC' 266) #(505 'MODE' 267) #(505 'MODULUS' 268) #(505 'MOVE' 269) #(505 'MSFUNC' 270) #(505 'MSSPACE' 271) #(505 'MSTYPE' 272) #(505 'MULTIRANGE_TYPE_NAME' 273) #(505 'NATURAL' 274) #(505 'NEGATOR' 275) #(505 'NEW' 276) #(505 'NEXT' 277) #(505 'NO' 278) #(505 'NOBYPASSRLS' 279) #(505 'NOCREATEDB' 280) #(505 'NOCREATEROLE' 281) #(505 'NOINHERIT' 282) #(505 'NOLOGIN' 283) #(505 'NONE' 284) #(505 'NOREPLICATION' 285) #(505 'NOSUPERUSER' 286) #(505 'NOT' 287) #(505 'NOTHING' 288) #(505 'NOTIFY' 289) #(505 'NOWAIT' 290) #(505 'NULL' 291) #(505 'NULLS' 292) #(505 'OBJECT' 293) #(505 'OF' 294) #(505 'OFF' 295) #(505 'OFFSET' 296) #(505 'OID' 297) #(505 'OIDS' 298) #(505 'OLD' 299) #(505 'ON' 300) #(505 'ONLY' 301) #(505 'ONLY_DATABASE_STATS' 302) #(505 'OPERATOR' 303) #(505 'OPTION' 304) #(505 'OPTIONS' 305) #(505 'OR' 306) #(505 'ORDER' 307) #(505 'ORDINALITY' 308) #(505 'OTHERS' 309) #(505 'OUTER' 310) #(505 'OUTPUT' 311) #(505 'OVER' 312) #(505 'OVERLAY' 313) #(505 'OVERRIDING' 314) #(505 'OWNED' 315) #(505 'OWNER' 316) #(505 'PARALLEL' 317) #(505 'PARAMETER' 318) #(505 'PARSER' 319) #(505 'PARTIAL' 320) #(505 'PARTITION' 321) #(505 'PASSEDBYVALUE' 322) #(505 'PASSWORD' 323) #(505 'PERMISSIVE' 324) #(505 'PLACING' 325) #(505 'PLAIN' 326) #(505 'PLANS' 327) #(505 'POLICY' 328) #(505 'POSITION' 329) #(505 'PRECEDING' 330) #(505 'PRECISION' 331) #(505 'PREFERRED' 332) #(505 'PREPARE' 333) #(505 'PREPARED' 334) #(505 'PRESERVE' 335) #(505 'PRIMARY' 336) #(505 'PRIOR' 337) #(505 'PRIVILEGES' 338) #(505 'PROCEDURAL' 339) #(505 'PROCEDURE' 340) #(505 'PROCEDURES' 341) #(505 'PROCESS_MAIN' 342) #(505 'PROCESS_TOAST' 343) #(505 'PROGRAM' 344) #(505 'PROVIDER' 345) #(505 'PUBLIC' 346) #(505 'PUBLICATION' 347) #(505 'RANGE' 348) #(505 'READ' 349) #(505 'READ_ONLY' 350) #(505 'READ_WRITE' 351) #(505 'REASSIGN' 352) #(505 'RECEIVE' 353) #(505 'RECURSIVE' 354) #(505 'REFERENCES' 355) #(505 'REFERENCING' 356) #(505 'REFRESH' 357) #(505 'REINDEX' 358) #(505 'RELATIVE' 359) #(505 'RELEASE' 360) #(505 'REMAINDER' 361) #(505 'RENAME' 362) #(505 'REPEATABLE' 363) #(505 'REPLACE' 364) #(505 'REPLICA' 365) #(505 'REPLICATION' 366) #(505 'RESET' 367) #(505 'RESTART' 368) #(505 'RESTRICT' 369) #(505 'RESTRICTED' 370) #(505 'RESTRICTIVE' 371) #(505 'RETURNING' 372) #(505 'RETURNS' 373) #(505 'REVOKE' 374) #(505 'RIGHT' 375) #(505 'RIGHTARG' 376) #(505 'ROLE' 377) #(505 'ROLLBACK' 378) #(505 'ROLLUP' 379) #(505 'ROUTINE' 380) #(505 'ROUTINES' 381) #(505 'ROW' 382) #(505 'ROWS' 383) #(505 'RULE' 384) #(505 'RULES' 385) #(505 'SAFE' 386) #(505 'SAVEPOINT' 387) #(505 'SCHEMA' 388) #(505 'SCHEMAS' 389) #(505 'SCROLL' 390) #(505 'SEARCH' 391) #(505 'SECURITY' 392) #(505 'SELECT' 393) #(505 'SEND' 394) #(505 'SEQUENCE' 395) #(505 'SEQUENCES' 396) #(505 'SERIALFUNC' 397) #(505 'SERIALIZABLE' 398) #(505 'SERVER' 399) #(505 'SESSION' 400) #(505 'SESSION_USER' 401) #(505 'SET' 402) #(505 'SETS' 403) #(505 'SETTINGS' 404) #(505 'SFUNC' 405) #(505 'SHARE' 406) #(505 'SHAREABLE' 407) #(505 'SHOW' 408) #(505 'SIMPLE' 409) #(505 'SKIP' 410) #(505 'SKIP_DATABASE_STATS' 411) #(505 'SKIP_LOCKED' 412) #(505 'SNAPSHOT' 413) #(505 'SORTOP' 414) #(505 'SQL' 415) #(505 'SSPACE' 416) #(505 'STABLE' 417) #(505 'START' 418) #(505 'STATEMENT' 419) #(505 'STATISTICS' 420) #(505 'STDIN' 421) #(505 'STDOUT' 422) #(505 'STORAGE' 423) #(505 'STORED' 424) #(505 'STRATEGY' 425) #(505 'STRICT' 426) #(505 'STYPE' 427) #(505 'SUBSCRIPT' 428) #(505 'SUBSCRIPTION' 429) #(505 'SUBSTRING' 430) #(505 'SUBTYPE' 431) #(505 'SUBTYPE_DIFF' 432) #(505 'SUBTYPE_OPCLASS' 433) #(505 'SUMMARY' 434) #(505 'SUPERUSER' 435) #(505 'SUPPORT' 436) #(505 'SYSID' 437) #(505 'SYSTEM' 438) #(505 'TABLE' 439) #(505 'TABLES' 440) #(505 'TABLESAMPLE' 441) #(505 'TABLESPACE' 442) #(505 'TEMP' 443) #(505 'TEMPLATE' 444) #(505 'TEMPORARY' 445) #(505 'TEXT' 446) #(505 'THEN' 447) #(505 'TIES' 448) #(505 'TIME' 449) #(505 'TIMING' 450) #(505 'TO' 451) #(505 'TRAILING' 452) #(505 'TRANSACTION' 453) #(505 'TRANSFORM' 454) #(505 'TRIGGER' 455) #(505 'TRIM' 456) #(505 'TRUE' 457) #(505 'TRUNCATE' 458) #(505 'TRUSTED' 459) #(505 'TYPE' 460) #(505 'TYPES' 461) #(505 'TYPMOD_IN' 462) #(505 'TYPMOD_OUT' 463) #(505 'UNBOUNDED' 464) #(505 'UNCOMMITTED' 465) #(505 'UNION' 466) #(505 'UNIQUE' 467) #(505 'UNLISTEN' 468) #(505 'UNLOGGED' 469) #(505 'UNSAFE' 470) #(505 'UNTIL' 471) #(505 'UPDATE' 472) #(505 'USAGE' 473) #(505 'USER' 474) #(505 'USING' 475) #(505 'VACUUM' 476) #(505 'VALID' 477) #(505 'VALIDATE' 478) #(505 'VALIDATOR' 479) #(505 'VALUE' 480) #(505 'VALUES' 481) #(505 'VARIABLE' 482) #(505 'VARIADIC' 483) #(505 'VARYING' 484) #(505 'VERBOSE' 485) #(505 'VERSION' 486) #(505 'VIEW' 487) #(505 'VOLATILE' 488) #(505 'WAL' 489) #(505 'WHEN' 490) #(505 'WHERE' 491) #(505 'WINDOW' 492) #(505 'WITH' 493) #(505 'WITHIN' 494) #(505 'WITHOUT' 495) #(505 'WORK' 496) #(505 'WRAPPER' 497) #(505 'WRITE' 498) #(505 'XML' 499) #(505 'YAML' 500) #(505 'ZONE' 501))
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
	^ 1868
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
	^ 1869
]

{ #category : #generated }
PsqlScanner >> errorTokenId [
	^ 1870
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
	^ 510
]

{ #category : #generated }
PsqlScanner >> scan1 [
	[ self recordMatch: #(509).
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
	[ self recordMatch: #(508).
	self step.
	currentCharacter == $_ ifTrue: [ ^ self scan9 ].
	currentCharacter isDigit ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scan11 [
	self recordMatch: #(508).
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan7 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan8 ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scan12 [
	[ self recordMatch: #(508).
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
	[ self recordMatch: #(508).
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
	[ self recordMatch: #(508).
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
	[ self recordMatch: #(508).
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
	self recordMatch: #(509).
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
		ifTrue: [ self recordMatch: #(505).
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
		ifTrue: [ self recordMatch: #(505).
			self step.
			currentCharacter == $' ifTrue: [ ^ self scan22 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
PsqlScanner >> scan23 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ self recordMatch: #(505).
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
		ifTrue: [ self recordMatch: #(504).
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
		ifTrue: [ self recordMatch: #(505).
			self step.
			currentCharacter == $" ifTrue: [ ^ self scan4 ].
			^ self reportLastMatch ].
	currentCharacter >= Character home ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scan5 [
	[ self step.
	currentCharacter == $$ ifTrue: [ ^ self recordAndReportMatch: #(507) ].
	true ] whileTrue
]

{ #category : #generated }
PsqlScanner >> scan6 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ self recordMatch: #(504).
			self step.
			currentCharacter == $' ifTrue: [ ^ self scan6 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
PsqlScanner >> scan7 [
	[ self recordMatch: #(508).
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
	self recordMatch: #(6 508).
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
	[ self recordMatch: #(511).
	self step.
	currentCharacter isSeparator or: [ currentCharacter == Character pageUp ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scanForTokenX11 [
	[ self recordMatch: #(505).
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
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(502) ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(503) ].
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
	self recordMatch: #(509).
	self step.
	currentCharacter == $-
		ifTrue: [ [ self recordMatch: #(512).
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
	self recordMatch: #(12 509 510).
	self step.
	currentCharacter == $>
		ifTrue: [ self recordMatch: #(509 510).
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
	self recordMatch: #(3 509 510).
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
	self recordMatch: #(505).
	self step.
	currentCharacter == $'
		ifTrue: [ [ self step.
			currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(506) ].
			currentCharacter between: $0 and: $1 ] whileTrue.
			^ self reportLastMatch ].
	(currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ])
		ifTrue: [ [ self recordMatch: #(505).
			self step.
			currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scanForTokenX6 [
	self recordMatch: #(505).
	self step.
	currentCharacter == $&
		ifTrue: [ self step.
			currentCharacter == $" ifTrue: [ ^ self scan20 ].
			currentCharacter == $' ifTrue: [ ^ self scan25 ].
			^ self reportLastMatch ].
	(currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ])
		ifTrue: [ [ self recordMatch: #(505).
			self step.
			currentCharacter isAlphaNumeric or: [ '$_' includes: currentCharacter ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
PsqlScanner >> scanForTokenX7 [
	self recordMatch: #(7 508).
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
	currentCharacter == $$ ifTrue: [ ^ self recordAndReportMatch: #(507) ].
	(currentCharacter between: $1 and: $9)
		ifTrue: [ [ self recordMatch: #(514).
			self step.
			currentCharacter == $$ ifTrue: [ ^ self recordAndReportMatch: #(507) ].
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
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #dollarStringStart nil #checkOperator nil #whitespace #comment #multilineComment)
]

{ #category : #generated }
PsqlScanner >> tokenClass [
	^SmaCCCaseInsensitiveToken
]
