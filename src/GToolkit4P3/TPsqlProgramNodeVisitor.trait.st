Trait {
	#name : #TPsqlProgramNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAbbreviatedGrantOrRevoke: anAbbreviatedGrantOrRevoke [
	^ self visitProgram: anAbbreviatedGrantOrRevoke
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAbortCommand: anAbortCommand [
	^ self visitCommand: anAbortCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAggregateExpression: anAggregateExpression [
	^ self visitExpression: anAggregateExpression
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAggregateFilter: anAggregateFilter [
	^ self visitProgram: anAggregateFilter
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAggregateSignature: anAggregateSignature [
	^ self visitProgram: anAggregateSignature
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterAggregateCommand: anAlterAggregateCommand [
	^ self visitCommand: anAlterAggregateCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterCollationCommand: anAlterCollationCommand [
	^ self visitCommand: anAlterCollationCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterConversionCommand: anAlterConversionCommand [
	^ self visitCommand: anAlterConversionCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterDatabaseCommand: anAlterDatabaseCommand [
	^ self visitCommand: anAlterDatabaseCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterDatabaseOption: anAlterDatabaseOption [
	^ self visitProgram: anAlterDatabaseOption
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterDefaultPrivilegesCommand: anAlterDefaultPrivilegesCommand [
	^ self visitCommand: anAlterDefaultPrivilegesCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterDomainCommand: anAlterDomainCommand [
	^ self visitCommand: anAlterDomainCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterEventTriggerCommand: anAlterEventTriggerCommand [
	^ self visitCommand: anAlterEventTriggerCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterExtensionCommand: anAlterExtensionCommand [
	^ self visitCommand: anAlterExtensionCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterForeignDataWrapperCommand: anAlterForeignDataWrapperCommand [
	^ self visitCommand: anAlterForeignDataWrapperCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterForeignTableAction: anAlterForeignTableAction [
	^ self visitProgram: anAlterForeignTableAction
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterForeignTableCommand: anAlterForeignTableCommand [
	^ self visitCommand: anAlterForeignTableCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterFunctionAction: anAlterFunctionAction [
	^ self visitProgram: anAlterFunctionAction
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterFunctionCommand: anAlterFunctionCommand [
	^ self visitCommand: anAlterFunctionCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterGroupCommand: anAlterGroupCommand [
	^ self visitCommand: anAlterGroupCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterIndexCommand: anAlterIndexCommand [
	^ self visitCommand: anAlterIndexCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterLanguageCommand: anAlterLanguageCommand [
	^ self visitCommand: anAlterLanguageCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterLargeObjectCommand: anAlterLargeObjectCommand [
	^ self visitCommand: anAlterLargeObjectCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterMaterializedViewAction: anAlterMaterializedViewAction [
	^ self visitProgram: anAlterMaterializedViewAction
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterMaterializedViewCommand: anAlterMaterializedViewCommand [
	^ self visitCommand: anAlterMaterializedViewCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterOperatorClassCommand: anAlterOperatorClassCommand [
	^ self visitCommand: anAlterOperatorClassCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterOperatorCommand: anAlterOperatorCommand [
	^ self visitCommand: anAlterOperatorCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterOperatorFamilyCommand: anAlterOperatorFamilyCommand [
	^ self visitCommand: anAlterOperatorFamilyCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterPolicyCommand: anAlterPolicyCommand [
	^ self visitCommand: anAlterPolicyCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterProcedureAction: anAlterProcedureAction [
	^ self visitProgram: anAlterProcedureAction
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterProcedureCommand: anAlterProcedureCommand [
	^ self visitCommand: anAlterProcedureCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterPublicationCommand: anAlterPublicationCommand [
	^ self visitCommand: anAlterPublicationCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterRoleCommand: anAlterRoleCommand [
	^ self visitCommand: anAlterRoleCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterRoutineCommand: anAlterRoutineCommand [
	^ self visitCommand: anAlterRoutineCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterRuleCommand: anAlterRuleCommand [
	^ self visitCommand: anAlterRuleCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterSchemaCommand: anAlterSchemaCommand [
	^ self visitCommand: anAlterSchemaCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterSequenceCommand: anAlterSequenceCommand [
	^ self visitCommand: anAlterSequenceCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterServerCommand: anAlterServerCommand [
	^ self visitCommand: anAlterServerCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterStatisticsCommand: anAlterStatisticsCommand [
	^ self visitCommand: anAlterStatisticsCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterSubscriptionCommand: anAlterSubscriptionCommand [
	^ self visitCommand: anAlterSubscriptionCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterSystemCommand: anAlterSystemCommand [
	^ self visitCommand: anAlterSystemCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterTableAction: anAlterTableAction [
	^ self visitProgram: anAlterTableAction
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterTableCommand: anAlterTableCommand [
	^ self visitCommand: anAlterTableCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterTablespaceCommand: anAlterTablespaceCommand [
	^ self visitCommand: anAlterTablespaceCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterTextSearchConfigurationCommand: anAlterTextSearchConfigurationCommand [
	^ self visitCommand: anAlterTextSearchConfigurationCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterTextSearchDictionaryCommand: anAlterTextSearchDictionaryCommand [
	^ self visitCommand: anAlterTextSearchDictionaryCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterTextSearchParserCommand: anAlterTextSearchParserCommand [
	^ self visitCommand: anAlterTextSearchParserCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterTextSearchTemplateCommand: anAlterTextSearchTemplateCommand [
	^ self visitCommand: anAlterTextSearchTemplateCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterTriggerCommand: anAlterTriggerCommand [
	^ self visitCommand: anAlterTriggerCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterTypeAction: anAlterTypeAction [
	^ self visitProgram: anAlterTypeAction
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterTypeCommand: anAlterTypeCommand [
	^ self visitCommand: anAlterTypeCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterUserCommand: anAlterUserCommand [
	^ self visitCommand: anAlterUserCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterUserMappingCommand: anAlterUserMappingCommand [
	^ self visitCommand: anAlterUserMappingCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAlterViewCommand: anAlterViewCommand [
	^ self visitCommand: anAlterViewCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAnalyzeCommand: anAnalyzeCommand [
	^ self visitCommand: anAnalyzeCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitAnalyzeOption: anAnalyzeOption [
	^ self visitProgram: anAnalyzeOption
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitArrayExpression: anArrayExpression [
	^ self visitExpression: anArrayExpression
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitArrayTypeExpression: anArrayTypeExpression [
	^ self visitExpression: anArrayTypeExpression
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitBeginCommand: aBeginCommand [
	^ self visitCommand: aBeginCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitBetweenExpression: aBetweenExpression [
	^ self visitExpression: aBetweenExpression
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitBinaryExpression: aBinaryExpression [
	^ self visitExpression: aBinaryExpression
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitBoolean: aBoolean [
	^ self visitExpression: aBoolean
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCallCommand: aCallCommand [
	^ self visitCommand: aCallCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCaseExpression: aCaseExpression [
	^ self visitExpression: aCaseExpression
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCastExpression: aCastExpression [
	^ self visitExpression: aCastExpression
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCharacterTypeExpression: aCharacterTypeExpression [
	^ self visitExpression: aCharacterTypeExpression
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCheckpointCommand: aCheckpointCommand [
	^ self visitCommand: aCheckpointCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCloseCommand: aCloseCommand [
	^ self visitCommand: aCloseCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitClusterCommand: aClusterCommand [
	^ self visitCommand: aClusterCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitClusterOption: aClusterOption [
	^ self visitProgram: aClusterOption
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCollateExpression: aCollateExpression [
	^ self visitExpression: aCollateExpression
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitColumnConstraint: aColumnConstraint [
	^ self visitProgram: aColumnConstraint
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitColumnDefinition: aColumnDefinition [
	^ self visitProgram: aColumnDefinition
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCommand: aCommand [
	^ self visitProgram: aCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCommentCommand: aCommentCommand [
	^ self visitCommand: aCommentCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCommitCommand: aCommitCommand [
	^ self visitCommand: aCommitCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCommitPreparedCommand: aCommitPreparedCommand [
	^ self visitCommand: aCommitPreparedCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitConflictAction: aConflictAction [
	^ self visitProgram: aConflictAction
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitConflictTarget: aConflictTarget [
	^ self visitProgram: aConflictTarget
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCopyCommand: aCopyCommand [
	^ self visitCommand: aCopyCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateAccessMethodCommand: aCreateAccessMethodCommand [
	^ self visitCommand: aCreateAccessMethodCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateAggregateCommand: aCreateAggregateCommand [
	^ self visitCommand: aCreateAggregateCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateCastCommand: aCreateCastCommand [
	^ self visitCommand: aCreateCastCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateCollationCommand: aCreateCollationCommand [
	^ self visitCommand: aCreateCollationCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateConversionCommand: aCreateConversionCommand [
	^ self visitCommand: aCreateConversionCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateDatabaseCommand: aCreateDatabaseCommand [
	^ self visitCommand: aCreateDatabaseCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateDomainCommand: aCreateDomainCommand [
	^ self visitCommand: aCreateDomainCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateEventTriggerCommand: aCreateEventTriggerCommand [
	^ self visitCommand: aCreateEventTriggerCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateExtensionCommand: aCreateExtensionCommand [
	^ self visitCommand: aCreateExtensionCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateForeignDataWrapperCommand: aCreateForeignDataWrapperCommand [
	^ self visitCommand: aCreateForeignDataWrapperCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateForeignTableCommand: aCreateForeignTableCommand [
	^ self visitCommand: aCreateForeignTableCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateFunctionCommand: aCreateFunctionCommand [
	^ self visitCommand: aCreateFunctionCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateGroupCommand: aCreateGroupCommand [
	^ self visitCommand: aCreateGroupCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateIndexCommand: aCreateIndexCommand [
	^ self visitCommand: aCreateIndexCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateLanguageCommand: aCreateLanguageCommand [
	^ self visitCommand: aCreateLanguageCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateMaterializedViewCommand: aCreateMaterializedViewCommand [
	^ self visitCommand: aCreateMaterializedViewCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateOperatorClassCommand: aCreateOperatorClassCommand [
	^ self visitCommand: aCreateOperatorClassCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateOperatorCommand: aCreateOperatorCommand [
	^ self visitCommand: aCreateOperatorCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateOperatorFamilyCommand: aCreateOperatorFamilyCommand [
	^ self visitCommand: aCreateOperatorFamilyCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreatePolicyCommand: aCreatePolicyCommand [
	^ self visitCommand: aCreatePolicyCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateProcedureCommand: aCreateProcedureCommand [
	^ self visitCommand: aCreateProcedureCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreatePublicationCommand: aCreatePublicationCommand [
	^ self visitCommand: aCreatePublicationCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateRoleCommand: aCreateRoleCommand [
	^ self visitCommand: aCreateRoleCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateRuleCommand: aCreateRuleCommand [
	^ self visitCommand: aCreateRuleCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateSchemaCommand: aCreateSchemaCommand [
	^ self visitCommand: aCreateSchemaCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateSequenceCommand: aCreateSequenceCommand [
	^ self visitCommand: aCreateSequenceCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateServerCommand: aCreateServerCommand [
	^ self visitCommand: aCreateServerCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateStatisticsCommand: aCreateStatisticsCommand [
	^ self visitCommand: aCreateStatisticsCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateSubscriptionCommand: aCreateSubscriptionCommand [
	^ self visitCommand: aCreateSubscriptionCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateTableAsCommand: aCreateTableAsCommand [
	^ self visitCommand: aCreateTableAsCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateTableCommand: aCreateTableCommand [
	^ self visitCommand: aCreateTableCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateTableLikeConstraint: aCreateTableLikeConstraint [
	^ self visitProgram: aCreateTableLikeConstraint
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateTablespaceCommand: aCreateTablespaceCommand [
	^ self visitCommand: aCreateTablespaceCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateTextSearchConfigurationCommand: aCreateTextSearchConfigurationCommand [
	^ self visitCommand: aCreateTextSearchConfigurationCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateTextSearchDictionaryCommand: aCreateTextSearchDictionaryCommand [
	^ self visitCommand: aCreateTextSearchDictionaryCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateTextSearchParserCommand: aCreateTextSearchParserCommand [
	^ self visitCommand: aCreateTextSearchParserCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateTextSearchTemplateCommand: aCreateTextSearchTemplateCommand [
	^ self visitCommand: aCreateTextSearchTemplateCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateTransformCommand: aCreateTransformCommand [
	^ self visitCommand: aCreateTransformCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateTriggerCommand: aCreateTriggerCommand [
	^ self visitCommand: aCreateTriggerCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateTypeCommand: aCreateTypeCommand [
	^ self visitCommand: aCreateTypeCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateUserCommand: aCreateUserCommand [
	^ self visitCommand: aCreateUserCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateUserMappingCommand: aCreateUserMappingCommand [
	^ self visitCommand: aCreateUserMappingCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitCreateViewCommand: aCreateViewCommand [
	^ self visitCommand: aCreateViewCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDeallocateCommand: aDeallocateCommand [
	^ self visitCommand: aDeallocateCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDeclareCommand: aDeclareCommand [
	^ self visitCommand: aDeclareCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDeleteCommand: aDeleteCommand [
	^ self visitCommand: aDeleteCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDiscardCommand: aDiscardCommand [
	^ self visitCommand: aDiscardCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDoCommand: aDoCommand [
	^ self visitCommand: aDoCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDomainConstraint: aDomainConstraint [
	^ self visitProgram: aDomainConstraint
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDoubleTypeExpression: aDoubleTypeExpression [
	^ self visitExpression: aDoubleTypeExpression
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropAccessMethodCommand: aDropAccessMethodCommand [
	^ self visitCommand: aDropAccessMethodCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropAggregateCommand: aDropAggregateCommand [
	^ self visitCommand: aDropAggregateCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropCastCommand: aDropCastCommand [
	^ self visitCommand: aDropCastCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropCollationCommand: aDropCollationCommand [
	^ self visitCommand: aDropCollationCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropConversionCommand: aDropConversionCommand [
	^ self visitCommand: aDropConversionCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropDatabaseCommand: aDropDatabaseCommand [
	^ self visitCommand: aDropDatabaseCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropDomainCommand: aDropDomainCommand [
	^ self visitCommand: aDropDomainCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropEventTriggerCommand: aDropEventTriggerCommand [
	^ self visitCommand: aDropEventTriggerCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropExtensionCommand: aDropExtensionCommand [
	^ self visitCommand: aDropExtensionCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropForeignDataWrapperCommand: aDropForeignDataWrapperCommand [
	^ self visitCommand: aDropForeignDataWrapperCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropForeignTableCommand: aDropForeignTableCommand [
	^ self visitCommand: aDropForeignTableCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropFunctionCommand: aDropFunctionCommand [
	^ self visitCommand: aDropFunctionCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropGroupCommand: aDropGroupCommand [
	^ self visitCommand: aDropGroupCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropIndexCommand: aDropIndexCommand [
	^ self visitCommand: aDropIndexCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropLanguageCommand: aDropLanguageCommand [
	^ self visitCommand: aDropLanguageCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropMaterializedViewCommand: aDropMaterializedViewCommand [
	^ self visitCommand: aDropMaterializedViewCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropOperatorClassCommand: aDropOperatorClassCommand [
	^ self visitCommand: aDropOperatorClassCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropOperatorCommand: aDropOperatorCommand [
	^ self visitCommand: aDropOperatorCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropOperatorFamilyCommand: aDropOperatorFamilyCommand [
	^ self visitCommand: aDropOperatorFamilyCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropOwnedCommand: aDropOwnedCommand [
	^ self visitCommand: aDropOwnedCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropPolicyCommand: aDropPolicyCommand [
	^ self visitCommand: aDropPolicyCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropProcedureCommand: aDropProcedureCommand [
	^ self visitCommand: aDropProcedureCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropPublicationCommand: aDropPublicationCommand [
	^ self visitCommand: aDropPublicationCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropRoleCommand: aDropRoleCommand [
	^ self visitCommand: aDropRoleCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropRoutineCommand: aDropRoutineCommand [
	^ self visitCommand: aDropRoutineCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropRuleCommand: aDropRuleCommand [
	^ self visitCommand: aDropRuleCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropSchemaCommand: aDropSchemaCommand [
	^ self visitCommand: aDropSchemaCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropSequenceCommand: aDropSequenceCommand [
	^ self visitCommand: aDropSequenceCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropServerCommand: aDropServerCommand [
	^ self visitCommand: aDropServerCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropStatisticsCommand: aDropStatisticsCommand [
	^ self visitCommand: aDropStatisticsCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropSubscriptionCommand: aDropSubscriptionCommand [
	^ self visitCommand: aDropSubscriptionCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropTableCommand: aDropTableCommand [
	^ self visitCommand: aDropTableCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropTablespaceCommand: aDropTablespaceCommand [
	^ self visitCommand: aDropTablespaceCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropTextSearchConfigurationCommand: aDropTextSearchConfigurationCommand [
	^ self visitCommand: aDropTextSearchConfigurationCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropTextSearchDictionaryCommand: aDropTextSearchDictionaryCommand [
	^ self visitCommand: aDropTextSearchDictionaryCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropTextSearchParserCommand: aDropTextSearchParserCommand [
	^ self visitCommand: aDropTextSearchParserCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropTextSearchTemplateCommand: aDropTextSearchTemplateCommand [
	^ self visitCommand: aDropTextSearchTemplateCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropTransformCommand: aDropTransformCommand [
	^ self visitCommand: aDropTransformCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropTriggerCommand: aDropTriggerCommand [
	^ self visitCommand: aDropTriggerCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropTypeCommand: aDropTypeCommand [
	^ self visitCommand: aDropTypeCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropUserCommand: aDropUserCommand [
	^ self visitCommand: aDropUserCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropUserMappingCommand: aDropUserMappingCommand [
	^ self visitCommand: aDropUserMappingCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitDropViewCommand: aDropViewCommand [
	^ self visitCommand: aDropViewCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitEndCommand: anEndCommand [
	^ self visitCommand: anEndCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitExcludeElement: anExcludeElement [
	^ self visitProgram: anExcludeElement
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitExecuteCommand: anExecuteCommand [
	^ self visitCommand: anExecuteCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitExplainCommand: anExplainCommand [
	^ self visitCommand: anExplainCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitExpression: anExpression [
	^ self visitProgram: anExpression
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitFetchCommand: aFetchCommand [
	^ self visitCommand: aFetchCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitFieldExpression: aFieldExpression [
	^ self visitExpression: aFieldExpression
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitFile: aFile [
	^ self visitProgram: aFile
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitFunctionCall: aFunctionCall [
	^ self visitExpression: aFunctionCall
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitGrantCommand: aGrantCommand [
	^ self visitCommand: aGrantCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitIdentifier: anIdentifier [
	^ self visitExpression: anIdentifier
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitImportForeignSchemaCommand: anImportForeignSchemaCommand [
	^ self visitCommand: anImportForeignSchemaCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitInsertCommand: anInsertCommand [
	^ self visitCommand: anInsertCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitListExpression: aListExpression [
	^ self visitExpression: aListExpression
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitListenCommand: aListenCommand [
	^ self visitCommand: aListenCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitLoadCommand: aLoadCommand [
	^ self visitCommand: aLoadCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitLockCommand: aLockCommand [
	^ self visitCommand: aLockCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitMemberObject: aMemberObject [
	^ self visitProgram: aMemberObject
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitMergeCommand: aMergeCommand [
	^ self visitCommand: aMergeCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitMergeDelete: aMergeDelete [
	^ self visitProgram: aMergeDelete
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitMergeInsert: aMergeInsert [
	^ self visitProgram: aMergeInsert
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitMergeUpdate: aMergeUpdate [
	^ self visitProgram: aMergeUpdate
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitMoveCommand: aMoveCommand [
	^ self visitCommand: aMoveCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitNotifyCommand: aNotifyCommand [
	^ self visitCommand: aNotifyCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitNumber: aNumber [
	^ self visitExpression: aNumber
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitOrderByClause: anOrderByClause [
	^ self visitProgram: anOrderByClause
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitPrepareCommand: aPrepareCommand [
	^ self visitCommand: aPrepareCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitPrepareTransactionCommand: aPrepareTransactionCommand [
	^ self visitCommand: aPrepareTransactionCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitProgram: aProgram [
	^ self visitSmaCCParseNode: aProgram
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitPublicationObject: aPublicationObject [
	^ self visitProgram: aPublicationObject
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitQualifiedName: aQualifiedName [
	^ self visitExpression: aQualifiedName
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitQueryExpression: aQueryExpression [
	^ self visitExpression: aQueryExpression
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitReassignOwnedCommand: aReassignOwnedCommand [
	^ self visitCommand: aReassignOwnedCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitReferentialAction: aReferentialAction [
	^ self visitProgram: aReferentialAction
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitRefreshMaterializedViewCommand: aRefreshMaterializedViewCommand [
	^ self visitCommand: aRefreshMaterializedViewCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitReindexCommand: aReindexCommand [
	^ self visitCommand: aReindexCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitReindexOption: aReindexOption [
	^ self visitProgram: aReindexOption
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitReleaseSavepointCommand: aReleaseSavepointCommand [
	^ self visitCommand: aReleaseSavepointCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitResetCommand: aResetCommand [
	^ self visitCommand: aResetCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitRevokeCommand: aRevokeCommand [
	^ self visitCommand: aRevokeCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitRollbackCommand: aRollbackCommand [
	^ self visitCommand: aRollbackCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitRollbackPreparedCommand: aRollbackPreparedCommand [
	^ self visitCommand: aRollbackPreparedCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitRollbackToSavepointCommand: aRollbackToSavepointCommand [
	^ self visitCommand: aRollbackToSavepointCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitSavepointCommand: aSavepointCommand [
	^ self visitCommand: aSavepointCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitScalarSubqueryExpression: aScalarSubqueryExpression [
	^ self visitExpression: aScalarSubqueryExpression
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitSecurityLabelCommand: aSecurityLabelCommand [
	^ self visitCommand: aSecurityLabelCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitSelectCommand: aSelectCommand [
	^ self visitProgram: aSelectCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitSelectIntoCommand: aSelectIntoCommand [
	^ self visitCommand: aSelectIntoCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitSetCommand: aSetCommand [
	^ self visitCommand: aSetCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitSetConstraintsCommand: aSetConstraintsCommand [
	^ self visitCommand: aSetConstraintsCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitSetRoleCommand: aSetRoleCommand [
	^ self visitCommand: aSetRoleCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitSetSessionAuthorizationCommand: aSetSessionAuthorizationCommand [
	^ self visitCommand: aSetSessionAuthorizationCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitSetTransactionCommand: aSetTransactionCommand [
	^ self visitCommand: aSetTransactionCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitShowCommand: aShowCommand [
	^ self visitCommand: aShowCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitStartTransactionCommand: aStartTransactionCommand [
	^ self visitCommand: aStartTransactionCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitString: aString [
	^ self visitExpression: aString
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitSubscriptExpression: aSubscriptExpression [
	^ self visitExpression: aSubscriptExpression
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitSubscriptRangeExpression: aSubscriptRangeExpression [
	^ self visitExpression: aSubscriptRangeExpression
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitTableAndColumns: aTableAndColumns [
	^ self visitProgram: aTableAndColumns
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitTableCommand: aTableCommand [
	^ self visitCommand: aTableCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitTableConstraint: aTableConstraint [
	^ self visitProgram: aTableConstraint
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitTransactionMode: aTransactionMode [
	^ self visitProgram: aTransactionMode
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitTruncateCommand: aTruncateCommand [
	^ self visitCommand: aTruncateCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitUnaryExpression: anUnaryExpression [
	^ self visitExpression: anUnaryExpression
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitUnlistenCommand: anUnlistenCommand [
	^ self visitCommand: anUnlistenCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitUpdateCommand: anUpdateCommand [
	^ self visitCommand: anUpdateCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitVacuumCommand: aVacuumCommand [
	^ self visitCommand: aVacuumCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitVacuumOption: aVacuumOption [
	^ self visitProgram: aVacuumOption
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitValuesCommand: aValuesCommand [
	^ self visitCommand: aValuesCommand
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitVaryingTypeExpression: aVaryingTypeExpression [
	^ self visitProgram: aVaryingTypeExpression
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitWhenClause: aWhenClause [
	^ self visitProgram: aWhenClause
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitWindowFunctionCall: aWindowFunctionCall [
	^ self visitExpression: aWindowFunctionCall
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitWithQuery: aWithQuery [
	^ self visitProgram: aWithQuery
]

{ #category : #generated }
TPsqlProgramNodeVisitor >> visitWithinGroup: aWithinGroup [
	^ self visitProgram: aWithinGroup
]
