Class {
	#name : #PsqlScanner,
	#superclass : #SmaCCScanner,
	#category : #'GToolkit4P3-Parser'
}

{ #category : #'generated-initialization' }
PsqlScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(509 '/*' 513) #(509 '=>' 13) #(510 '=>' 13) #(505 'ABORT' 14) #(505 'ABSOLUTE' 15) #(505 'ACCESS' 16) #(505 'ACTION' 17) #(505 'ADD' 18) #(505 'ADMIN' 19) #(505 'AFTER' 20) #(505 'AGGREGATE' 21) #(505 'ALIGNMENT' 22) #(505 'ALL' 23) #(505 'ALLOW_CONNECTIONS' 24) #(505 'ALSO' 25) #(505 'ALTER' 26) #(505 'ALWAYS' 27) #(505 'ANALYZE' 28) #(505 'AND' 29) #(505 'ARRAY' 30) #(505 'AS' 31) #(505 'ASC' 32) #(505 'ASENSITIVE' 33) #(505 'ASSIGNMENT' 34) #(505 'ATTACH' 35) #(505 'ATTRIBUTE' 36) #(505 'AUTHORIZATION' 37) #(505 'AUTO' 38) #(505 'BACKWARD' 39) #(505 'BASETYPE' 40) #(505 'BEFORE' 41) #(505 'BEGIN' 42) #(505 'BETWEEEN' 43) #(505 'BETWEEN' 44) #(505 'BINARY' 45) #(505 'BIT' 46) #(505 'BOTH' 47) #(505 'BREADTH' 48) #(505 'BUFFERS' 49) #(505 'BUFFER_USAGE_LIMIT' 50) #(505 'BY' 51) #(505 'BYPASSRLS' 52) #(505 'CACHE' 53) #(505 'CALL' 54) #(505 'CALLED' 55) #(505 'CANONICAL' 56) #(505 'CASCADE' 57) #(505 'CASCADED' 58) #(505 'CASE' 59) #(505 'CAST' 60) #(505 'CATEGORY' 61) #(505 'CHAIN' 62) #(505 'CHARACTER' 63) #(505 'CHARACTERISTICS' 64) #(505 'CHECK' 65) #(505 'CHECKPOINT' 66) #(505 'CLASS' 67) #(505 'CLOSE' 68) #(505 'CLUSTER' 69) #(505 'COLLATABLE' 70) #(505 'COLLATE' 71) #(505 'COLLATION' 72) #(505 'COLLATION_VERSION' 73) #(505 'COLUMN' 74) #(505 'COMBINEFUNC' 75) #(505 'COMMENT' 76) #(505 'COMMENTS' 77) #(505 'COMMIT' 78) #(505 'COMMITTED' 79) #(505 'COMMUTATOR' 80) #(505 'COMPRESSION' 81) #(505 'CONCURRENTLY' 82) #(505 'CONFIGURATION' 83) #(505 'CONFLICT' 84) #(505 'CONNECT' 85) #(505 'CONNECTION' 86) #(505 'CONSTRAINT' 87) #(505 'CONSTRAINTS' 88) #(505 'CONTINUE' 89) #(505 'CONVERSION' 90) #(505 'COPY' 91) #(505 'COST' 92) #(505 'COSTS' 93) #(505 'CREATE' 94) #(505 'CREATEDB' 95) #(505 'CREATEROLE' 96) #(505 'CROSS' 97) #(505 'CUBE' 98) #(505 'CURRENT' 99) #(505 'CURRENT_ROLE' 100) #(505 'CURRENT_SCHEMA' 101) #(505 'CURRENT_USER' 102) #(505 'CURSOR' 103) #(505 'CYCLE' 104) #(505 'DATA' 105) #(505 'DATABASE' 106) #(505 'DEALLOCATE' 107) #(505 'DECLARE' 108) #(505 'DEFAULT' 109) #(505 'DEFAULTS' 110) #(505 'DEFERRABLE' 111) #(505 'DEFERRED' 112) #(505 'DEFINER' 113) #(505 'DELETE' 114) #(505 'DELIMITER' 115) #(505 'DEPENDS' 116) #(505 'DEPTH' 117) #(505 'DESC' 118) #(505 'DESERIALFUNC' 119) #(505 'DETACH' 120) #(505 'DETERMINISTIC' 121) #(505 'DICTIONARY' 122) #(505 'DISABLE' 123) #(505 'DISABLE_PAGE_SKIPPING' 124) #(505 'DISCARD' 125) #(505 'DISTINCT' 126) #(505 'DO' 127) #(505 'DOMAIN' 128) #(505 'DOUBLE' 129) #(505 'DROP' 130) #(505 'EACH' 131) #(505 'ELEMENT' 132) #(505 'ELSE' 133) #(505 'ENABLE' 134) #(505 'ENCODING' 135) #(505 'ENCRYPTED' 136) #(505 'END' 137) #(505 'ENUM' 138) #(505 'ESCAPE' 139) #(505 'EVENT' 140) #(505 'EXCEPT' 141) #(505 'EXCLUDE' 142) #(505 'EXCLUDING' 143) #(505 'EXCLUSIVE' 144) #(505 'EXECUTE' 145) #(505 'EXISTS' 146) #(505 'EXPLAIN' 147) #(505 'EXPRESSION' 148) #(505 'EXTENDED' 149) #(505 'EXTENSION' 150) #(505 'EXTERNAL' 151) #(505 'FALSE' 152) #(505 'FAMILY' 153) #(505 'FETCH' 154) #(505 'FILTER' 155) #(505 'FINALFUNC' 156) #(505 'FINALFUNC_EXTRA' 157) #(505 'FINALFUNC_MODIFY' 158) #(505 'FINALIZE' 159) #(505 'FIRST' 160) #(505 'FOLLOWING' 161) #(505 'FOR' 162) #(505 'FORCE' 163) #(505 'FOREIGN' 164) #(505 'FORMAT' 165) #(505 'FORWARD' 166) #(505 'FREEZE' 167) #(505 'FROM' 168) #(505 'FULL' 169) #(505 'FUNCTION' 170) #(505 'FUNCTIONS' 171) #(505 'GENERATED' 172) #(505 'GENERIC_PLAN' 173) #(505 'GETTOKEN' 174) #(505 'GLOBAL' 175) #(505 'GRANT' 176) #(505 'GRANTED' 177) #(505 'GROUP' 178) #(505 'GROUPING' 179) #(505 'GROUPS' 180) #(505 'HANDLER' 181) #(505 'HASH' 182) #(505 'HASHES' 183) #(505 'HAVING' 184) #(505 'HEADLINE' 185) #(505 'HOLD' 186) #(505 'HYPOTHETICAL' 187) #(505 'ICU_LOCALE' 188) #(505 'ICU_RULES' 189) #(505 'IDENTITY' 190) #(505 'IF' 191) #(505 'ILIKE' 192) #(505 'IMMEDIATE' 193) #(505 'IMMUTABLE' 194) #(505 'IMPLICIT' 195) #(505 'IMPORT' 196) #(505 'IN' 197) #(505 'INCLUDE' 198) #(505 'INCLUDING' 199) #(505 'INCREMENT' 200) #(505 'INDEX' 201) #(505 'INDEXES' 202) #(505 'INDEX_CLEANUP' 203) #(505 'INHERIT' 204) #(505 'INHERITS' 205) #(505 'INIT' 206) #(505 'INITCOND' 207) #(505 'INITIALLY' 208) #(505 'INLINE' 209) #(505 'INNER' 210) #(505 'INOUT' 211) #(505 'INPUT' 212) #(505 'INSENSITIVE' 213) #(505 'INSERT' 214) #(505 'INSTEAD' 215) #(505 'INTERNALLENGTH' 216) #(505 'INTERSECT' 217) #(505 'INTERVAL' 218) #(505 'INTO' 219) #(505 'INVOKER' 220) #(505 'IS' 221) #(505 'ISOLATION' 222) #(505 'IS_TEMPLATE' 223) #(505 'JOIN' 224) #(505 'JSON' 225) #(505 'KEY' 226) #(505 'LABEL' 227) #(505 'LANGUAGE' 228) #(505 'LARGE' 229) #(505 'LAST' 230) #(505 'LATERAL' 231) #(505 'LC_COLLATE' 232) #(505 'LC_CTYPE' 233) #(505 'LEADING' 234) #(505 'LEAKPROOF' 235) #(505 'LEFT' 236) #(505 'LEFTARG' 237) #(505 'LEVEL' 238) #(505 'LEXIZE' 239) #(505 'LEXTYPES' 240) #(505 'LIKE' 241) #(505 'LIMIT' 242) #(505 'LIST' 243) #(505 'LISTEN' 244) #(505 'LOAD' 245) #(505 'LOCAL' 246) #(505 'LOCALE' 247) #(505 'LOCALE_PROVIDER' 248) #(505 'LOCATION' 249) #(505 'LOCK' 250) #(505 'LOCKED' 251) #(505 'LOGGED' 252) #(505 'LOGIN' 253) #(505 'MAIN' 254) #(505 'MAPPING' 255) #(505 'MATCH' 256) #(505 'MATCHED' 257) #(505 'MATERIALIZED' 258) #(505 'MAXVALUE' 259) #(505 'MERGE' 260) #(505 'MERGES' 261) #(505 'METHOD' 262) #(505 'MFINALFUNC' 263) #(505 'MFINALFUNC_EXTRA' 264) #(505 'MFINALFUNC_MODIFY' 265) #(505 'MINITCOND' 266) #(505 'MINVALUE' 267) #(505 'MINVFUNC' 268) #(505 'MODE' 269) #(505 'MODULUS' 270) #(505 'MOVE' 271) #(505 'MSFUNC' 272) #(505 'MSSPACE' 273) #(505 'MSTYPE' 274) #(505 'MULTIRANGE_TYPE_NAME' 275) #(505 'NATURAL' 276) #(505 'NEGATOR' 277) #(505 'NEW' 278) #(505 'NEXT' 279) #(505 'NO' 280) #(505 'NOBYPASSRLS' 281) #(505 'NOCREATEDB' 282) #(505 'NOCREATEROLE' 283) #(505 'NOINHERIT' 284) #(505 'NOLOGIN' 285) #(505 'NONE' 286) #(505 'NOREPLICATION' 287) #(505 'NOSUPERUSER' 288) #(505 'NOT' 289) #(505 'NOTHING' 290) #(505 'NOTIFY' 291) #(505 'NOWAIT' 292) #(505 'NULL' 293) #(505 'NULLS' 294) #(505 'OBJECT' 295) #(505 'OF' 296) #(505 'OFF' 297) #(505 'OFFSET' 298) #(505 'OID' 299) #(505 'OIDS' 300) #(505 'OLD' 301) #(505 'ON' 302) #(505 'ONLY' 303) #(505 'ONLY_DATABASE_STATS' 304) #(505 'OPERATOR' 305) #(505 'OPTION' 306) #(505 'OPTIONS' 307) #(505 'OR' 308) #(505 'ORDER' 309) #(505 'ORDINALITY' 310) #(505 'OTHERS' 311) #(505 'OUT' 312) #(505 'OUTER' 313) #(505 'OUTPUT' 314) #(505 'OVER' 315) #(505 'OVERRIDING' 316) #(505 'OWNED' 317) #(505 'OWNER' 318) #(505 'PARALLEL' 319) #(505 'PARAMETER' 320) #(505 'PARSER' 321) #(505 'PARTIAL' 322) #(505 'PARTITION' 323) #(505 'PASSEDBYVALUE' 324) #(505 'PASSWORD' 325) #(505 'PERMISSIVE' 326) #(505 'PLACING' 327) #(505 'PLAIN' 328) #(505 'PLANS' 329) #(505 'POLICY' 330) #(505 'PRECEDING' 331) #(505 'PRECISION' 332) #(505 'PREFERRED' 333) #(505 'PREPARE' 334) #(505 'PREPARED' 335) #(505 'PRESERVE' 336) #(505 'PRIMARY' 337) #(505 'PRIOR' 338) #(505 'PRIVILEGES' 339) #(505 'PROCEDURAL' 340) #(505 'PROCEDURE' 341) #(505 'PROCEDURES' 342) #(505 'PROCESS_MAIN' 343) #(505 'PROCESS_TOAST' 344) #(505 'PROGRAM' 345) #(505 'PROVIDER' 346) #(505 'PUBLIC' 347) #(505 'PUBLICATION' 348) #(505 'RANGE' 349) #(505 'READ' 350) #(505 'READ_ONLY' 351) #(505 'READ_WRITE' 352) #(505 'REASSIGN' 353) #(505 'RECEIVE' 354) #(505 'RECURSIVE' 355) #(505 'REFERENCES' 356) #(505 'REFERENCING' 357) #(505 'REFRESH' 358) #(505 'REINDEX' 359) #(505 'RELATIVE' 360) #(505 'RELEASE' 361) #(505 'REMAINDER' 362) #(505 'RENAME' 363) #(505 'REPEATABLE' 364) #(505 'REPLACE' 365) #(505 'REPLICA' 366) #(505 'REPLICATION' 367) #(505 'RESET' 368) #(505 'RESTART' 369) #(505 'RESTRICT' 370) #(505 'RESTRICTED' 371) #(505 'RESTRICTIVE' 372) #(505 'RETURNING' 373) #(505 'RETURNS' 374) #(505 'REVOKE' 375) #(505 'RIGHT' 376) #(505 'RIGHTARG' 377) #(505 'ROLE' 378) #(505 'ROLLBACK' 379) #(505 'ROLLUP' 380) #(505 'ROUTINE' 381) #(505 'ROUTINES' 382) #(505 'ROW' 383) #(505 'ROWS' 384) #(505 'RULE' 385) #(505 'RULES' 386) #(505 'SAFE' 387) #(505 'SAVEPOINT' 388) #(505 'SCHEMA' 389) #(505 'SCHEMAS' 390) #(505 'SCROLL' 391) #(505 'SEARCH' 392) #(505 'SECURITY' 393) #(505 'SELECT' 394) #(505 'SEND' 395) #(505 'SEQUENCE' 396) #(505 'SEQUENCES' 397) #(505 'SERIALFUNC' 398) #(505 'SERIALIZABLE' 399) #(505 'SERVER' 400) #(505 'SESSION' 401) #(505 'SESSION_USER' 402) #(505 'SET' 403) #(505 'SETS' 404) #(505 'SETTINGS' 405) #(505 'SFUNC' 406) #(505 'SHARE' 407) #(505 'SHAREABLE' 408) #(505 'SHOW' 409) #(505 'SIMPLE' 410) #(505 'SKIP' 411) #(505 'SKIP_DATABASE_STATS' 412) #(505 'SKIP_LOCKED' 413) #(505 'SNAPSHOT' 414) #(505 'SORTOP' 415) #(505 'SQL' 416) #(505 'SSPACE' 417) #(505 'STABLE' 418) #(505 'START' 419) #(505 'STATEMENT' 420) #(505 'STATISTICS' 421) #(505 'STDIN' 422) #(505 'STDOUT' 423) #(505 'STORAGE' 424) #(505 'STORED' 425) #(505 'STRATEGY' 426) #(505 'STRICT' 427) #(505 'STYPE' 428) #(505 'SUBSCRIPT' 429) #(505 'SUBSCRIPTION' 430) #(505 'SUBTYPE' 431) #(505 'SUBTYPE_DIFF' 432) #(505 'SUBTYPE_OPCLASS' 433) #(505 'SUMMARY' 434) #(505 'SUPERUSER' 435) #(505 'SUPPORT' 436) #(505 'SYSID' 437) #(505 'SYSTEM' 438) #(505 'TABLE' 439) #(505 'TABLES' 440) #(505 'TABLESAMPLE' 441) #(505 'TABLESPACE' 442) #(505 'TEMP' 443) #(505 'TEMPLATE' 444) #(505 'TEMPORARY' 445) #(505 'TEXT' 446) #(505 'THEN' 447) #(505 'TIES' 448) #(505 'TIME' 449) #(505 'TIMESTAMP' 450) #(505 'TIMING' 451) #(505 'TO' 452) #(505 'TRAILING' 453) #(505 'TRANSACTION' 454) #(505 'TRANSFORM' 455) #(505 'TRIGGER' 456) #(505 'TRUE' 457) #(505 'TRUNCATE' 458) #(505 'TRUSTED' 459) #(505 'TYPE' 460) #(505 'TYPES' 461) #(505 'TYPMOD_IN' 462) #(505 'TYPMOD_OUT' 463) #(505 'UNBOUNDED' 464) #(505 'UNCOMMITTED' 465) #(505 'UNION' 466) #(505 'UNIQUE' 467) #(505 'UNLISTEN' 468) #(505 'UNLOGGED' 469) #(505 'UNSAFE' 470) #(505 'UNTIL' 471) #(505 'UPDATE' 472) #(505 'USAGE' 473) #(505 'USER' 474) #(505 'USING' 475) #(505 'VACUUM' 476) #(505 'VALID' 477) #(505 'VALIDATE' 478) #(505 'VALIDATOR' 479) #(505 'VALUE' 480) #(505 'VALUES' 481) #(505 'VARIABLE' 482) #(505 'VARIADIC' 483) #(505 'VARYING' 484) #(505 'VERBOSE' 485) #(505 'VERSION' 486) #(505 'VIEW' 487) #(505 'VOLATILE' 488) #(505 'WAL' 489) #(505 'WHEN' 490) #(505 'WHERE' 491) #(505 'WINDOW' 492) #(505 'WITH' 493) #(505 'WITHIN' 494) #(505 'WITHOUT' 495) #(505 'WORK' 496) #(505 'WRAPPER' 497) #(505 'WRITE' 498) #(505 'XML' 499) #(505 'YAML' 500) #(505 'ZONE' 501))
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
	^ 1839
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
	^ 1840
]

{ #category : #generated }
PsqlScanner >> errorTokenId [
	^ 1841
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
