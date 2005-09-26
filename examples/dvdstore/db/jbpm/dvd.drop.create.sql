alter table JBPM_ACTION drop constraint FK_ACTION_EVENT;
alter table JBPM_ACTION drop constraint FK_ACTION_EXPTHDL;
alter table JBPM_ACTION drop constraint FK_ACTION_PROCDEF;
alter table JBPM_ACTION drop constraint FK_CRTETIMERACT_TA;
alter table JBPM_ACTION drop constraint FK_ACTION_ACTNDEL;
alter table JBPM_ACTION drop constraint FK_ACTION_REFACT;
alter table JBPM_BYTEARRAY drop constraint FK_BYTEARR_FILDEF;
alter table JBPM_BYTEBLOCK drop constraint FK_BYTEBLOCK_FILE;
alter table JBPM_COMMENT drop constraint FK_COMMENT_TOKEN;
alter table JBPM_COMMENT drop constraint FK_COMMENT_TSK;
alter table JBPM_DECISIONCONDITIONS drop constraint FK_DECCOND_DEC;
alter table JBPM_DELEGATION drop constraint FK_DELEGATION_PRCD;
alter table JBPM_EVENT drop constraint FK_EVENT_PROCDEF;
alter table JBPM_EVENT drop constraint FK_EVENT_NODE;
alter table JBPM_EVENT drop constraint FK_EVENT_TRANS;
alter table JBPM_EVENT drop constraint FK_EVENT_TASK;
alter table JBPM_ID_MEMBERSHIP drop constraint FK_ID_MEMSHIP_GRP;
alter table JBPM_ID_MEMBERSHIP drop constraint FK_ID_MEMSHIP_USR;
alter table JBPM_LOG drop constraint FK_LOG_SOURCENODE;
alter table JBPM_LOG drop constraint FK_LOG_TOKEN;
alter table JBPM_LOG drop constraint FK_LOG_OLDBYTES;
alter table JBPM_LOG drop constraint FK_LOG_NEWBYTES;
alter table JBPM_LOG drop constraint FK_LOG_CHILDTOKEN;
alter table JBPM_LOG drop constraint FK_LOG_DESTNODE;
alter table JBPM_LOG drop constraint FK_LOG_TASKINST;
alter table JBPM_LOG drop constraint FK_LOG_SWIMINST;
alter table JBPM_LOG drop constraint FK_LOG_PARENT;
alter table JBPM_LOG drop constraint FK_LOG_NODE;
alter table JBPM_LOG drop constraint FK_LOG_ACTION;
alter table JBPM_LOG drop constraint FK_LOG_VARINST;
alter table JBPM_LOG drop constraint FK_LOG_TRANSITION;
alter table JBPM_MODULEDEFINITION drop constraint FK_TSKDEF_START;
alter table JBPM_MODULEDEFINITION drop constraint FK_MODDEF_PROCDEF;
alter table JBPM_MODULEINSTANCE drop constraint FK_TASKMGTINST_TMD;
alter table JBPM_MODULEINSTANCE drop constraint FK_MODINST_PRCINST;
alter table JBPM_NODE drop constraint FK_PROCST_SBPRCDEF;
alter table JBPM_NODE drop constraint FK_NODE_PROCDEF;
alter table JBPM_NODE drop constraint FK_NODE_ACTION;
alter table JBPM_NODE drop constraint FK_DECISION_DELEG;
alter table JBPM_NODE drop constraint FK_NODE_SUPERSTATE;
alter table JBPM_POOLEDACTOR drop constraint FK_POOLEDACTOR_SLI;
alter table JBPM_PROCESSDEFINITION drop constraint FK_PROCDEF_STRTSTA;
alter table JBPM_PROCESSINSTANCE drop constraint FK_PROCIN_PROCDEF;
alter table JBPM_PROCESSINSTANCE drop constraint FK_PROCIN_ROOTTKN;
alter table JBPM_PROCESSINSTANCE drop constraint FK_PROCIN_SPROCTKN;
alter table JBPM_RUNTIMEACTION drop constraint FK_RTACTN_PROCINST;
alter table JBPM_RUNTIMEACTION drop constraint FK_RTACTN_ACTION;
alter table JBPM_SWIMLANE drop constraint FK_SWL_ASSDEL;
alter table JBPM_SWIMLANE drop constraint FK_SWL_TSKMGMTDEF;
alter table JBPM_SWIMLANEINSTANCE drop constraint FK_SWIMLANEINST_TM;
alter table JBPM_SWIMLANEINSTANCE drop constraint FK_SWIMLANEINST_SL;
alter table JBPM_TASK drop constraint FK_TSK_TSKCTRL;
alter table JBPM_TASK drop constraint FK_TASK_ASSDEL;
alter table JBPM_TASK drop constraint FK_TASK_TASKNODE;
alter table JBPM_TASK drop constraint FK_TASK_PROCDEF;
alter table JBPM_TASK drop constraint FK_TASK_STARTST;
alter table JBPM_TASK drop constraint FK_TASK_TASKMGTDEF;
alter table JBPM_TASK drop constraint FK_TASK_SWIMLANE;
alter table JBPM_TASKACTORPOOL drop constraint FK_TSKACTPOL_PLACT;
alter table JBPM_TASKACTORPOOL drop constraint FK_TASKACTPL_TSKI;
alter table JBPM_TASKCONTROLLER drop constraint FK_TSKCTRL_DELEG;
alter table JBPM_TASKINSTANCE drop constraint FK_TASKINST_TMINST;
alter table JBPM_TASKINSTANCE drop constraint FK_TASKINST_TOKEN;
alter table JBPM_TASKINSTANCE drop constraint FK_TASKINST_SLINST;
alter table JBPM_TASKINSTANCE drop constraint FK_TASKINST_TASK;
alter table JBPM_TIMER drop constraint FK_TIMER_TOKEN;
alter table JBPM_TIMER drop constraint FK_TIMER_PRINST;
alter table JBPM_TIMER drop constraint FK_TIMER_ACTION;
alter table JBPM_TIMER drop constraint FK_TIMER_TSKINST;
alter table JBPM_TOKEN drop constraint FK_TOKEN_PARENT;
alter table JBPM_TOKEN drop constraint FK_TOKEN_NODE;
alter table JBPM_TOKEN drop constraint FK_TOKEN_PROCINST;
alter table JBPM_TOKENVARIABLEMAP drop constraint FK_TKVARMAP_CTXT;
alter table JBPM_TOKENVARIABLEMAP drop constraint FK_TKVARMAP_TOKEN;
alter table JBPM_TRANSITION drop constraint FK_TRANSITION_TO;
alter table JBPM_TRANSITION drop constraint FK_TRANS_PROCDEF;
alter table JBPM_TRANSITION drop constraint FK_TRANSITION_FROM;
alter table JBPM_VARIABLEACCESS drop constraint FK_VARACC_TSKCTRL;
alter table JBPM_VARIABLEACCESS drop constraint FK_VARACC_SCRIPT;
alter table JBPM_VARIABLEACCESS drop constraint FK_VARACC_PROCST;
alter table JBPM_VARIABLEINSTANCE drop constraint FK_VARINST_TK;
alter table JBPM_VARIABLEINSTANCE drop constraint FK_VARINST_TKVARMP;
alter table JBPM_VARIABLEINSTANCE drop constraint FK_VARINST_PRCINST;
alter table JBPM_VARIABLEINSTANCE drop constraint FK_BYTEINST_ARRAY;
drop table JBPM_ACTION if exists;
drop table JBPM_BYTEARRAY if exists;
drop table JBPM_BYTEBLOCK if exists;
drop table JBPM_COMMENT if exists;
drop table JBPM_DECISIONCONDITIONS if exists;
drop table JBPM_DELEGATION if exists;
drop table JBPM_EVENT if exists;
drop table JBPM_EXCEPTIONHANDLER if exists;
drop table JBPM_ID_GROUP if exists;
drop table JBPM_ID_MEMBERSHIP if exists;
drop table JBPM_ID_PERMISSIONS if exists;
drop table JBPM_ID_USER if exists;
drop table JBPM_LOG if exists;
drop table JBPM_MODULEDEFINITION if exists;
drop table JBPM_MODULEINSTANCE if exists;
drop table JBPM_NODE if exists;
drop table JBPM_POOLEDACTOR if exists;
drop table JBPM_PROCESSDEFINITION if exists;
drop table JBPM_PROCESSINSTANCE if exists;
drop table JBPM_RUNTIMEACTION if exists;
drop table JBPM_SWIMLANE if exists;
drop table JBPM_SWIMLANEINSTANCE if exists;
drop table JBPM_TASK if exists;
drop table JBPM_TASKACTORPOOL if exists;
drop table JBPM_TASKCONTROLLER if exists;
drop table JBPM_TASKINSTANCE if exists;
drop table JBPM_TIMER if exists;
drop table JBPM_TOKEN if exists;
drop table JBPM_TOKENVARIABLEMAP if exists;
drop table JBPM_TRANSITION if exists;
drop table JBPM_VARIABLEACCESS if exists;
drop table JBPM_VARIABLEINSTANCE if exists;
create table JBPM_ACTION (ID_ bigint generated by default as identity (start with 1), class char(1) not null, NAME_ varchar(255), ISPROPAGATIONALLOWED_ bit, REFERENCEDACTION_ bigint, ACTIONDELEGATION_ bigint, EVENT_ bigint, PROCESSDEFINITION_ bigint, EXPRESSION_ varchar(4000), TIMERNAME_ varchar(255), DUEDATE_ varchar(255), REPEAT_ varchar(255), TRANSITIONNAME_ varchar(255), TIMERACTION_ bigint, EVENTINDEX_ integer, EXCEPTIONHANDLER_ bigint, EXCEPTIONHANDLERINDEX_ integer, primary key (ID_));
create table JBPM_BYTEARRAY (ID_ bigint generated by default as identity (start with 1), NAME_ varchar(255), FILEDEFINITION_ bigint, primary key (ID_));
create table JBPM_BYTEBLOCK (PROCESSFILE_ bigint not null, BYTES_ varbinary(1024), INDEX_ integer not null, primary key (PROCESSFILE_, INDEX_));
create table JBPM_COMMENT (ID_ bigint generated by default as identity (start with 1), ACTORID_ varchar(255), TIME_ timestamp, MESSAGE_ varchar(4000), TOKEN_ bigint, TASKINSTANCE_ bigint, TOKENINDEX_ integer, TASKINSTANCEINDEX_ integer, primary key (ID_));
create table JBPM_DECISIONCONDITIONS (DECISION_ bigint not null, TRANSITIONNAME_ varchar(255), EXPRESSION_ varchar(4000), INDEX_ integer not null, primary key (DECISION_, INDEX_));
create table JBPM_DELEGATION (ID_ bigint generated by default as identity (start with 1), CLASSNAME_ varchar(4000), CONFIGURATION_ varchar(4000), CONFIGTYPE_ varchar(255), PROCESSDEFINITION_ bigint, primary key (ID_));
create table JBPM_EVENT (ID_ bigint generated by default as identity (start with 1), EVENTTYPE_ varchar(255), TYPE_ char(1), GRAPHELEMENT_ bigint, PROCESSDEFINITION_ bigint, NODE_ bigint, TRANSITION_ bigint, TASK_ bigint, primary key (ID_));
create table JBPM_EXCEPTIONHANDLER (ID_ bigint generated by default as identity (start with 1), EXCEPTIONCLASSNAME_ varchar(4000), TYPE_ char(1), GRAPHELEMENT_ bigint, PROCESSDEFINITION_ bigint, GRAPHELEMENTINDEX_ integer, NODE_ bigint, TRANSITION_ bigint, TASK_ bigint, primary key (ID_));
create table JBPM_ID_GROUP (ID_ bigint generated by default as identity (start with 1), CLASS_ char(1) not null, NAME_ varchar(255), TYPE_ varchar(255), primary key (ID_));
create table JBPM_ID_MEMBERSHIP (ID_ bigint generated by default as identity (start with 1), CLASS_ char(1) not null, NAME_ varchar(255), ROLE_ varchar(255), USER_ bigint, GROUP_ bigint, primary key (ID_));
create table JBPM_ID_PERMISSIONS (ENTITY_ bigint not null, CLASS_ varchar(255), NAME_ varchar(255), ACTION_ varchar(255));
create table JBPM_ID_USER (ID_ bigint generated by default as identity (start with 1), CLASS_ char(1) not null, NAME_ varchar(255), EMAIL_ varchar(255), PASSWORD_ varchar(255), primary key (ID_));
create table JBPM_LOG (ID_ bigint generated by default as identity (start with 1), CLASS_ char(1) not null, INDEX_ integer, DATE_ timestamp, TOKEN_ bigint, PARENT_ bigint, MESSAGE_ varchar(4000), EXCEPTION_ varchar(4000), ACTION_ bigint, NODE_ bigint, ENTER_ timestamp, LEAVE_ timestamp, DURATION_ bigint, TRANSITION_ bigint, CHILD_ bigint, SOURCENODE_ bigint, DESTINATIONNODE_ bigint, VARIABLEINSTANCE_ bigint, OLDBYTEARRAY_ bigint, NEWBYTEARRAY_ bigint, OLDDATEVALUE_ timestamp, NEWDATEVALUE_ timestamp, OLDDOUBLEVALUE_ double, NEWDOUBLEVALUE_ double, OLDLONGIDCLASS_ varchar(255), OLDLONGIDVALUE_ bigint, NEWLONGIDCLASS_ varchar(255), NEWLONGIDVALUE_ bigint, OLDSTRINGIDCLASS_ varchar(255), OLDSTRINGIDVALUE_ varchar(255), NEWSTRINGIDCLASS_ varchar(255), NEWSTRINGIDVALUE_ varchar(255), OLDLONGVALUE_ bigint, NEWLONGVALUE_ bigint, OLDSTRINGVALUE_ varchar(4000), NEWSTRINGVALUE_ varchar(4000), TASKINSTANCE_ bigint, TASKACTORID_ varchar(255), TASKOLDACTORID_ varchar(255), SWIMLANEINSTANCE_ bigint, primary key (ID_));
create table JBPM_MODULEDEFINITION (ID_ bigint generated by default as identity (start with 1), CLASS_ char(1) not null, NAME_ varchar(4000), PROCESSDEFINITION_ bigint, STARTTASK_ bigint, primary key (ID_));
create table JBPM_MODULEINSTANCE (ID_ bigint generated by default as identity (start with 1), CLASS_ char(1) not null, PROCESSINSTANCE_ bigint, TASKMGMTDEFINITION_ bigint, NAME_ varchar(255), primary key (ID_));
create table JBPM_NODE (ID_ bigint generated by default as identity (start with 1), CLASS_ char(1) not null, NAME_ varchar(255), PROCESSDEFINITION_ bigint, ACTION_ bigint, SUPERSTATE_ bigint, SUBPROCESSDEFINITION_ bigint, DECISIONDELEGATION bigint, SIGNAL_ integer, CREATETASKS_ bit, NODECOLLECTIONINDEX_ integer, primary key (ID_));
create table JBPM_POOLEDACTOR (ID_ bigint generated by default as identity (start with 1), ACTORID_ varchar(255), SWIMLANEINSTANCE_ bigint, primary key (ID_));
create table JBPM_PROCESSDEFINITION (ID_ bigint generated by default as identity (start with 1), NAME_ varchar(255), VERSION_ integer, ISTERMINATIONIMPLICIT_ bit, STARTSTATE_ bigint, primary key (ID_));
create table JBPM_PROCESSINSTANCE (ID_ bigint generated by default as identity (start with 1), START_ timestamp, END_ timestamp, PROCESSDEFINITION_ bigint, ROOTTOKEN_ bigint, SUPERPROCESSTOKEN_ bigint, primary key (ID_));
create table JBPM_RUNTIMEACTION (ID_ bigint generated by default as identity (start with 1), EVENTTYPE_ varchar(255), TYPE_ char(1), GRAPHELEMENT_ bigint, PROCESSINSTANCE_ bigint, ACTION_ bigint, PROCESSINSTANCEINDEX_ integer, primary key (ID_));
create table JBPM_SWIMLANE (ID_ bigint generated by default as identity (start with 1), NAME_ varchar(255), ASSIGNMENTDELEGATION_ bigint, TASKMGMTDEFINITION_ bigint, primary key (ID_));
create table JBPM_SWIMLANEINSTANCE (ID_ bigint generated by default as identity (start with 1), NAME_ varchar(255), ACTORID_ varchar(255), SWIMLANE_ bigint, TASKMGMTINSTANCE_ bigint, primary key (ID_));
create table JBPM_TASK (ID_ bigint generated by default as identity (start with 1), NAME_ varchar(255), PROCESSDEFINITION_ bigint, DESCRIPTION_ varchar(4000), ISBLOCKING_ bit, DUEDATE_ varchar(255), TASKMGMTDEFINITION_ bigint, TASKNODE_ bigint, STARTSTATE_ bigint, ASSIGNMENTDELEGATION_ bigint, SWIMLANE_ bigint, TASKCONTROLLER_ bigint, primary key (ID_));
create table JBPM_TASKACTORPOOL (TASKINSTANCE_ bigint not null, POOLEDACTOR_ bigint not null, primary key (TASKINSTANCE_, POOLEDACTOR_));
create table JBPM_TASKCONTROLLER (ID_ bigint generated by default as identity (start with 1), TASKCONTROLLERDELEGATION_ bigint, primary key (ID_));
create table JBPM_TASKINSTANCE (ID_ bigint generated by default as identity (start with 1), NAME_ varchar(255), DESCRIPTION_ varchar(4000), ACTORID_ varchar(255), CREATE_ timestamp, START_ timestamp, END_ timestamp, DUEDATE_ timestamp, PRIORITY_ integer, ISCANCELLED_ bit, ISSIGNALLING_ bit, ISBLOCKING_ bit, TASK_ bigint, TOKEN_ bigint, SWIMLANINSTANCE_ bigint, TASKMGMTINSTANCE_ bigint, primary key (ID_));
create table JBPM_TIMER (ID_ bigint generated by default as identity (start with 1), NAME_ varchar(255), DUEDATE_ timestamp, REPEAT_ varchar(255), TRANSITIONNAME_ varchar(255), EXCEPTION_ varchar(4000), ACTION_ bigint, TOKEN_ bigint, PROCESSINSTANCE_ bigint, TASKINSTANCE_ bigint, GRAPHELEMENTTYPE_ varchar(255), GRAPHELEMENT_ bigint, primary key (ID_));
create table JBPM_TOKEN (ID_ bigint generated by default as identity (start with 1), NAME_ varchar(255), START_ timestamp, END_ timestamp, NODEENTER_ timestamp, NEXTLOGINDEX_ integer, ISABLETOREACTIVATEPARENT_ bit, ISTERMINATIONIMPLICIT_ bit, NODE_ bigint, PROCESSINSTANCE_ bigint, PARENT_ bigint, primary key (ID_));
create table JBPM_TOKENVARIABLEMAP (ID_ bigint generated by default as identity (start with 1), TOKEN_ bigint, CONTEXTINSTANCE_ bigint, primary key (ID_));
create table JBPM_TRANSITION (ID_ bigint generated by default as identity (start with 1), NAME_ varchar(255), PROCESSDEFINITION_ bigint, FROM_ bigint, TO_ bigint, FROMINDEX_ integer, primary key (ID_));
create table JBPM_VARIABLEACCESS (ID_ bigint generated by default as identity (start with 1), VARIABLENAME_ varchar(255), ACCESS_ varchar(255), MAPPEDNAME_ varchar(255), PROCESSSTATE_ bigint, SCRIPT_ bigint, TASKCONTROLLER_ bigint, INDEX_ integer, primary key (ID_));
create table JBPM_VARIABLEINSTANCE (ID_ bigint generated by default as identity (start with 1), CLASS_ char(1) not null, NAME_ varchar(255), CONVERTER_ char(1), TOKEN_ bigint, TOKENVARIABLEMAP_ bigint, PROCESSINSTANCE_ bigint, BYTEARRAYVALUE_ bigint, DATEVALUE_ timestamp, DOUBLEVALUE_ double, LONGIDCLASS_ varchar(255), LONGVALUE_ bigint, STRINGIDCLASS_ varchar(255), STRINGVALUE_ varchar(255), primary key (ID_));
alter table JBPM_ACTION add constraint FK_ACTION_EVENT foreign key (EVENT_) references JBPM_EVENT;
alter table JBPM_ACTION add constraint FK_ACTION_EXPTHDL foreign key (EXCEPTIONHANDLER_) references JBPM_EXCEPTIONHANDLER;
alter table JBPM_ACTION add constraint FK_ACTION_PROCDEF foreign key (PROCESSDEFINITION_) references JBPM_PROCESSDEFINITION;
alter table JBPM_ACTION add constraint FK_CRTETIMERACT_TA foreign key (TIMERACTION_) references JBPM_ACTION;
alter table JBPM_ACTION add constraint FK_ACTION_ACTNDEL foreign key (ACTIONDELEGATION_) references JBPM_DELEGATION;
alter table JBPM_ACTION add constraint FK_ACTION_REFACT foreign key (REFERENCEDACTION_) references JBPM_ACTION;
alter table JBPM_BYTEARRAY add constraint FK_BYTEARR_FILDEF foreign key (FILEDEFINITION_) references JBPM_MODULEDEFINITION;
alter table JBPM_BYTEBLOCK add constraint FK_BYTEBLOCK_FILE foreign key (PROCESSFILE_) references JBPM_BYTEARRAY;
alter table JBPM_COMMENT add constraint FK_COMMENT_TOKEN foreign key (TOKEN_) references JBPM_TOKEN;
alter table JBPM_COMMENT add constraint FK_COMMENT_TSK foreign key (TASKINSTANCE_) references JBPM_TASKINSTANCE;
alter table JBPM_DECISIONCONDITIONS add constraint FK_DECCOND_DEC foreign key (DECISION_) references JBPM_NODE;
alter table JBPM_DELEGATION add constraint FK_DELEGATION_PRCD foreign key (PROCESSDEFINITION_) references JBPM_PROCESSDEFINITION;
alter table JBPM_EVENT add constraint FK_EVENT_PROCDEF foreign key (PROCESSDEFINITION_) references JBPM_PROCESSDEFINITION;
alter table JBPM_EVENT add constraint FK_EVENT_NODE foreign key (NODE_) references JBPM_NODE;
alter table JBPM_EVENT add constraint FK_EVENT_TRANS foreign key (TRANSITION_) references JBPM_TRANSITION;
alter table JBPM_EVENT add constraint FK_EVENT_TASK foreign key (TASK_) references JBPM_TASK;
alter table JBPM_ID_MEMBERSHIP add constraint FK_ID_MEMSHIP_GRP foreign key (GROUP_) references JBPM_ID_GROUP;
alter table JBPM_ID_MEMBERSHIP add constraint FK_ID_MEMSHIP_USR foreign key (USER_) references JBPM_ID_USER;
alter table JBPM_LOG add constraint FK_LOG_SOURCENODE foreign key (SOURCENODE_) references JBPM_NODE;
alter table JBPM_LOG add constraint FK_LOG_TOKEN foreign key (TOKEN_) references JBPM_TOKEN;
alter table JBPM_LOG add constraint FK_LOG_OLDBYTES foreign key (OLDBYTEARRAY_) references JBPM_BYTEARRAY;
alter table JBPM_LOG add constraint FK_LOG_NEWBYTES foreign key (NEWBYTEARRAY_) references JBPM_BYTEARRAY;
alter table JBPM_LOG add constraint FK_LOG_CHILDTOKEN foreign key (CHILD_) references JBPM_TOKEN;
alter table JBPM_LOG add constraint FK_LOG_DESTNODE foreign key (DESTINATIONNODE_) references JBPM_NODE;
alter table JBPM_LOG add constraint FK_LOG_TASKINST foreign key (TASKINSTANCE_) references JBPM_TASKINSTANCE;
alter table JBPM_LOG add constraint FK_LOG_SWIMINST foreign key (SWIMLANEINSTANCE_) references JBPM_SWIMLANEINSTANCE;
alter table JBPM_LOG add constraint FK_LOG_PARENT foreign key (PARENT_) references JBPM_LOG;
alter table JBPM_LOG add constraint FK_LOG_NODE foreign key (NODE_) references JBPM_NODE;
alter table JBPM_LOG add constraint FK_LOG_ACTION foreign key (ACTION_) references JBPM_ACTION;
alter table JBPM_LOG add constraint FK_LOG_VARINST foreign key (VARIABLEINSTANCE_) references JBPM_VARIABLEINSTANCE;
alter table JBPM_LOG add constraint FK_LOG_TRANSITION foreign key (TRANSITION_) references JBPM_TRANSITION;
alter table JBPM_MODULEDEFINITION add constraint FK_TSKDEF_START foreign key (STARTTASK_) references JBPM_TASK;
alter table JBPM_MODULEDEFINITION add constraint FK_MODDEF_PROCDEF foreign key (PROCESSDEFINITION_) references JBPM_PROCESSDEFINITION;
alter table JBPM_MODULEINSTANCE add constraint FK_TASKMGTINST_TMD foreign key (TASKMGMTDEFINITION_) references JBPM_MODULEDEFINITION;
alter table JBPM_MODULEINSTANCE add constraint FK_MODINST_PRCINST foreign key (PROCESSINSTANCE_) references JBPM_PROCESSINSTANCE;
alter table JBPM_NODE add constraint FK_PROCST_SBPRCDEF foreign key (SUBPROCESSDEFINITION_) references JBPM_PROCESSDEFINITION;
alter table JBPM_NODE add constraint FK_NODE_PROCDEF foreign key (PROCESSDEFINITION_) references JBPM_PROCESSDEFINITION;
alter table JBPM_NODE add constraint FK_NODE_ACTION foreign key (ACTION_) references JBPM_ACTION;
alter table JBPM_NODE add constraint FK_DECISION_DELEG foreign key (DECISIONDELEGATION) references JBPM_DELEGATION;
alter table JBPM_NODE add constraint FK_NODE_SUPERSTATE foreign key (SUPERSTATE_) references JBPM_NODE;
create index IDX_PLDACTR_ACTID on JBPM_POOLEDACTOR (ACTORID_);
alter table JBPM_POOLEDACTOR add constraint FK_POOLEDACTOR_SLI foreign key (SWIMLANEINSTANCE_) references JBPM_SWIMLANEINSTANCE;
alter table JBPM_PROCESSDEFINITION add constraint FK_PROCDEF_STRTSTA foreign key (STARTSTATE_) references JBPM_NODE;
alter table JBPM_PROCESSINSTANCE add constraint FK_PROCIN_PROCDEF foreign key (PROCESSDEFINITION_) references JBPM_PROCESSDEFINITION;
alter table JBPM_PROCESSINSTANCE add constraint FK_PROCIN_ROOTTKN foreign key (ROOTTOKEN_) references JBPM_TOKEN;
alter table JBPM_PROCESSINSTANCE add constraint FK_PROCIN_SPROCTKN foreign key (SUPERPROCESSTOKEN_) references JBPM_TOKEN;
alter table JBPM_RUNTIMEACTION add constraint FK_RTACTN_PROCINST foreign key (PROCESSINSTANCE_) references JBPM_PROCESSINSTANCE;
alter table JBPM_RUNTIMEACTION add constraint FK_RTACTN_ACTION foreign key (ACTION_) references JBPM_ACTION;
alter table JBPM_SWIMLANE add constraint FK_SWL_ASSDEL foreign key (ASSIGNMENTDELEGATION_) references JBPM_DELEGATION;
alter table JBPM_SWIMLANE add constraint FK_SWL_TSKMGMTDEF foreign key (TASKMGMTDEFINITION_) references JBPM_MODULEDEFINITION;
alter table JBPM_SWIMLANEINSTANCE add constraint FK_SWIMLANEINST_TM foreign key (TASKMGMTINSTANCE_) references JBPM_MODULEINSTANCE;
alter table JBPM_SWIMLANEINSTANCE add constraint FK_SWIMLANEINST_SL foreign key (SWIMLANE_) references JBPM_SWIMLANE;
alter table JBPM_TASK add constraint FK_TSK_TSKCTRL foreign key (TASKCONTROLLER_) references JBPM_TASKCONTROLLER;
alter table JBPM_TASK add constraint FK_TASK_ASSDEL foreign key (ASSIGNMENTDELEGATION_) references JBPM_DELEGATION;
alter table JBPM_TASK add constraint FK_TASK_TASKNODE foreign key (TASKNODE_) references JBPM_NODE;
alter table JBPM_TASK add constraint FK_TASK_PROCDEF foreign key (PROCESSDEFINITION_) references JBPM_PROCESSDEFINITION;
alter table JBPM_TASK add constraint FK_TASK_STARTST foreign key (STARTSTATE_) references JBPM_NODE;
alter table JBPM_TASK add constraint FK_TASK_TASKMGTDEF foreign key (TASKMGMTDEFINITION_) references JBPM_MODULEDEFINITION;
alter table JBPM_TASK add constraint FK_TASK_SWIMLANE foreign key (SWIMLANE_) references JBPM_SWIMLANE;
alter table JBPM_TASKACTORPOOL add constraint FK_TSKACTPOL_PLACT foreign key (POOLEDACTOR_) references JBPM_POOLEDACTOR;
alter table JBPM_TASKACTORPOOL add constraint FK_TASKACTPL_TSKI foreign key (TASKINSTANCE_) references JBPM_TASKINSTANCE;
alter table JBPM_TASKCONTROLLER add constraint FK_TSKCTRL_DELEG foreign key (TASKCONTROLLERDELEGATION_) references JBPM_DELEGATION;
create index IDX_TASK_ACTORID on JBPM_TASKINSTANCE (ACTORID_);
alter table JBPM_TASKINSTANCE add constraint FK_TASKINST_TMINST foreign key (TASKMGMTINSTANCE_) references JBPM_MODULEINSTANCE;
alter table JBPM_TASKINSTANCE add constraint FK_TASKINST_TOKEN foreign key (TOKEN_) references JBPM_TOKEN;
alter table JBPM_TASKINSTANCE add constraint FK_TASKINST_SLINST foreign key (SWIMLANINSTANCE_) references JBPM_SWIMLANEINSTANCE;
alter table JBPM_TASKINSTANCE add constraint FK_TASKINST_TASK foreign key (TASK_) references JBPM_TASK;
alter table JBPM_TIMER add constraint FK_TIMER_TOKEN foreign key (TOKEN_) references JBPM_TOKEN;
alter table JBPM_TIMER add constraint FK_TIMER_PRINST foreign key (PROCESSINSTANCE_) references JBPM_PROCESSINSTANCE;
alter table JBPM_TIMER add constraint FK_TIMER_ACTION foreign key (ACTION_) references JBPM_ACTION;
alter table JBPM_TIMER add constraint FK_TIMER_TSKINST foreign key (TASKINSTANCE_) references JBPM_TASKINSTANCE;
alter table JBPM_TOKEN add constraint FK_TOKEN_PARENT foreign key (PARENT_) references JBPM_TOKEN;
alter table JBPM_TOKEN add constraint FK_TOKEN_NODE foreign key (NODE_) references JBPM_NODE;
alter table JBPM_TOKEN add constraint FK_TOKEN_PROCINST foreign key (PROCESSINSTANCE_) references JBPM_PROCESSINSTANCE;
alter table JBPM_TOKENVARIABLEMAP add constraint FK_TKVARMAP_CTXT foreign key (CONTEXTINSTANCE_) references JBPM_MODULEINSTANCE;
alter table JBPM_TOKENVARIABLEMAP add constraint FK_TKVARMAP_TOKEN foreign key (TOKEN_) references JBPM_TOKEN;
alter table JBPM_TRANSITION add constraint FK_TRANSITION_TO foreign key (TO_) references JBPM_NODE;
alter table JBPM_TRANSITION add constraint FK_TRANS_PROCDEF foreign key (PROCESSDEFINITION_) references JBPM_PROCESSDEFINITION;
alter table JBPM_TRANSITION add constraint FK_TRANSITION_FROM foreign key (FROM_) references JBPM_NODE;
alter table JBPM_VARIABLEACCESS add constraint FK_VARACC_TSKCTRL foreign key (TASKCONTROLLER_) references JBPM_TASKCONTROLLER;
alter table JBPM_VARIABLEACCESS add constraint FK_VARACC_SCRIPT foreign key (SCRIPT_) references JBPM_ACTION;
alter table JBPM_VARIABLEACCESS add constraint FK_VARACC_PROCST foreign key (PROCESSSTATE_) references JBPM_NODE;
alter table JBPM_VARIABLEINSTANCE add constraint FK_VARINST_TK foreign key (TOKEN_) references JBPM_TOKEN;
alter table JBPM_VARIABLEINSTANCE add constraint FK_VARINST_TKVARMP foreign key (TOKENVARIABLEMAP_) references JBPM_TOKENVARIABLEMAP;
alter table JBPM_VARIABLEINSTANCE add constraint FK_VARINST_PRCINST foreign key (PROCESSINSTANCE_) references JBPM_PROCESSINSTANCE;
alter table JBPM_VARIABLEINSTANCE add constraint FK_BYTEINST_ARRAY foreign key (BYTEARRAYVALUE_) references JBPM_BYTEARRAY;
