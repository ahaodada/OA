/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.1.49-community : Database - ouroa
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`powermanager` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `powermanager`;

/*Table structure for table `act_evt_log` */

DROP TABLE IF EXISTS `act_evt_log`;

CREATE TABLE `act_evt_log` (
  `LOG_NR_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_STAMP_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DATA_` longblob,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp NULL DEFAULT NULL,
  `IS_PROCESSED_` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`LOG_NR_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_evt_log` */

/*Table structure for table `act_ge_bytearray` */

DROP TABLE IF EXISTS `act_ge_bytearray`;

CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_bytearray` */

insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('10003',1,'var-var',NULL,'��\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0123t\0123t\0123t\0123t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('10005',1,'hist.var-var',NULL,'��\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0123t\0123t\0123t\0123t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('10015',1,'var-var',NULL,'��\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0123t\0123t\0123t\0123t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('10017',1,'hist.var-var',NULL,'��\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0123t\0123t\0123t\0123t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('12503',1,'var-var',NULL,'��\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0abct\0123t\0123t\0123t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('12505',1,'hist.var-var',NULL,'��\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0abct\0123t\0123t\0123t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('15',1,'var-var',NULL,'��\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xppt\0123t\0123t\0213t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('15003',1,'var-var',NULL,'��\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0abct\0123t\0123t\0123t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('15005',1,'hist.var-var',NULL,'��\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0abct\0123t\0123t\0123t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('15015',1,'shenhe.bpmn','15014','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"borrow\" name=\"My process\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <userTask id=\"usertask1\" name=\"申请起草\" activiti:assignee=\"${user}\"></userTask>\n    <userTask id=\"usertask2\" name=\"经理审核\" activiti:assignee=\"${user}\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <sequenceFlow id=\"flow2\" sourceRef=\"usertask1\" targetRef=\"usertask2\"></sequenceFlow>\n    <sequenceFlow id=\"flow3\" sourceRef=\"usertask2\" targetRef=\"endevent1\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_myProcess\">\n    <bpmndi:BPMNPlane bpmnElement=\"borrow\" id=\"BPMNPlane_myProcess\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"390.0\" y=\"60.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"390.0\" y=\"350.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"355.0\" y=\"140.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"355.0\" y=\"250.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"407.0\" y=\"95.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"407.0\" y=\"140.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"407.0\" y=\"195.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"407.0\" y=\"250.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"407.0\" y=\"305.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"407.0\" y=\"350.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('17',1,'hist.var-var',NULL,'��\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xppt\0123t\0123t\0213t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('2',1,'shenhe.bpmn','1','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"borrow\" name=\"My process\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <userTask id=\"usertask1\" name=\"申请起草\" activiti:assignee=\"${user}\"></userTask>\n    <userTask id=\"usertask2\" name=\"经理审核\" activiti:assignee=\"${user}\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <sequenceFlow id=\"flow2\" sourceRef=\"usertask1\" targetRef=\"usertask2\"></sequenceFlow>\n    <sequenceFlow id=\"flow3\" sourceRef=\"usertask2\" targetRef=\"endevent1\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_myProcess\">\n    <bpmndi:BPMNPlane bpmnElement=\"borrow\" id=\"BPMNPlane_myProcess\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"390.0\" y=\"60.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"390.0\" y=\"350.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"355.0\" y=\"140.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"355.0\" y=\"250.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"407.0\" y=\"95.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"407.0\" y=\"140.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"407.0\" y=\"195.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"407.0\" y=\"250.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"407.0\" y=\"305.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"407.0\" y=\"350.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('25006',1,'leave.bpmn','25005','<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\r\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:tns=\"http://www.activiti.org/testm1512639392727\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" expressionLanguage=\"http://www.w3.org/1999/XPath\" id=\"m1512639392727\" name=\"\" targetNamespace=\"http://www.activiti.org/testm1512639392727\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\">\r\n  <process id=\"leave\" isClosed=\"false\" isExecutable=\"true\" processType=\"None\">\r\n    <startEvent id=\"_2\" name=\"StartEvent\"/>\r\n    <endEvent id=\"_3\" name=\"EndEvent\"/>\r\n    <userTask activiti:assignee=\"${user}\" activiti:exclusive=\"true\" id=\"_4\" name=\"请假单\"/>\r\n    <userTask activiti:assignee=\"${user}\" activiti:exclusive=\"true\" id=\"_5\" name=\"部门经理\"/>\r\n    <userTask activiti:assignee=\"${user}\" activiti:exclusive=\"true\" id=\"_6\" name=\"总经理\"/>\r\n    <sequenceFlow id=\"_7\" sourceRef=\"_2\" targetRef=\"_4\"/>\r\n    <sequenceFlow id=\"_8\" sourceRef=\"_4\" targetRef=\"_5\"/>\r\n    <sequenceFlow id=\"_9\" sourceRef=\"_5\" targetRef=\"_6\"/>\r\n    <sequenceFlow id=\"_10\" sourceRef=\"_6\" targetRef=\"_3\"/>\r\n  </process>\r\n  <bpmndi:BPMNDiagram documentation=\"background=#FFFFFF;count=1;horizontalcount=1;orientation=0;width=842.4;height=1195.2;imageableWidth=832.4;imageableHeight=1185.2;imageableX=5.0;imageableY=5.0\" id=\"Diagram-_1\" name=\"New Diagram\">\r\n    <bpmndi:BPMNPlane bpmnElement=\"leave\">\r\n      <bpmndi:BPMNShape bpmnElement=\"_2\" id=\"Shape-_2\">\r\n        <dc:Bounds height=\"32.0\" width=\"32.0\" x=\"280.0\" y=\"110.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds height=\"32.0\" width=\"32.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_3\" id=\"Shape-_3\">\r\n        <dc:Bounds height=\"32.0\" width=\"32.0\" x=\"250.0\" y=\"710.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds height=\"32.0\" width=\"32.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_4\" id=\"Shape-_4\">\r\n        <dc:Bounds height=\"55.0\" width=\"85.0\" x=\"235.0\" y=\"230.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds height=\"55.0\" width=\"85.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_5\" id=\"Shape-_5\">\r\n        <dc:Bounds height=\"55.0\" width=\"85.0\" x=\"305.0\" y=\"360.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds height=\"55.0\" width=\"85.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_6\" id=\"Shape-_6\">\r\n        <dc:Bounds height=\"55.0\" width=\"85.0\" x=\"275.0\" y=\"510.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds height=\"55.0\" width=\"85.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_7\" id=\"BPMNEdge__7\" sourceElement=\"_2\" targetElement=\"_4\">\r\n        <di:waypoint x=\"296.0\" y=\"142.0\"/>\r\n        <di:waypoint x=\"296.0\" y=\"230.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds height=\"0.0\" width=\"0.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_8\" id=\"BPMNEdge__8\" sourceElement=\"_4\" targetElement=\"_5\">\r\n        <di:waypoint x=\"312.5\" y=\"285.0\"/>\r\n        <di:waypoint x=\"312.5\" y=\"360.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds height=\"0.0\" width=\"0.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_9\" id=\"BPMNEdge__9\" sourceElement=\"_5\" targetElement=\"_6\">\r\n        <di:waypoint x=\"332.5\" y=\"415.0\"/>\r\n        <di:waypoint x=\"332.5\" y=\"510.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds height=\"0.0\" width=\"0.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_10\" id=\"BPMNEdge__10\" sourceElement=\"_6\" targetElement=\"_3\">\r\n        <di:waypoint x=\"278.5\" y=\"565.0\"/>\r\n        <di:waypoint x=\"278.5\" y=\"716.0125078222809\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds height=\"0.0\" width=\"0.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>\r\n',0);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('25011',1,'var-var',NULL,'��\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0123t\0	100万年t\0123t\0重建太阳系t\0leave',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('25013',1,'hist.var-var',NULL,'��\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0123t\0	100万年t\0123t\0重建太阳系t\0leave',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('25023',1,'var-var',NULL,'��\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0123t\0100天t\0123t\0产假t\0leave',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('25025',1,'hist.var-var',NULL,'��\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0123t\0100天t\0123t\0产假t\0leave',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('2503',1,'var-var',NULL,'��\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xppt\0123t\0123t\0123t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('2505',1,'hist.var-var',NULL,'��\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xppt\0123t\0123t\0123t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('27505',1,'hist.var-var',NULL,'��\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0qwet\0	100万年t\0abct\0重建太阳系t\0leave',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('30005',1,'hist.var-var',NULL,'��\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0qwet\0100万t\0abct\0拯救津巴布韦t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('40005',1,'hist.var-var',NULL,'��\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0qwet\0	100万年t\0abct\0重建太阳系t\0leave',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('42505',1,'hist.var-var',NULL,'��\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0qwet\0	100万年t\0abct\0重建太阳系t\0leave',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('45005',1,'hist.var-var',NULL,'��\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0qwet\0	100万年t\0abct\0重建太阳系t\0leave',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('47505',1,'hist.var-var',NULL,'��\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0qwet\0	100万年t\0abct\0重建太阳系t\0leave',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('50003',1,'var-var',NULL,'��\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0qqt\0	100万年t\0abct\0重建太阳系t\0leave',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('50005',1,'hist.var-var',NULL,'��\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0qqt\0	100万年t\0abct\0重建太阳系t\0leave',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('50018',1,'hist.var-var',NULL,'��\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0qwet\0100万t\0abct\0拯救津巴布韦t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('5003',1,'var-var',NULL,'��\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xppt\0123t\0123t\0123t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('5005',1,'hist.var-var',NULL,'��\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xppt\0123t\0123t\0123t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('7',1,'var-var',NULL,'��\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xppt\0123t\0123t\0123t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('7503',1,'var-var',NULL,'��\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xppt\0123t\0123t\0123t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('7505',1,'hist.var-var',NULL,'��\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xppt\0123t\0123t\0123t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('9',1,'hist.var-var',NULL,'��\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xppt\0123t\0123t\0123t\0borrow',NULL);

/*Table structure for table `act_ge_property` */

DROP TABLE IF EXISTS `act_ge_property`;

CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_property` */

insert  into `act_ge_property`(`NAME_`,`VALUE_`,`REV_`) values ('next.dbid','52501',22);
insert  into `act_ge_property`(`NAME_`,`VALUE_`,`REV_`) values ('schema.history','create(5.18.0.0)',1);
insert  into `act_ge_property`(`NAME_`,`VALUE_`,`REV_`) values ('schema.version','5.18.0.0',1);

/*Table structure for table `act_hi_actinst` */

DROP TABLE IF EXISTS `act_hi_actinst`;

CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_actinst` */

insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('10002','borrow:1:4','10001','10001','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-12-10 20:20:22','2017-12-10 20:20:22',10,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('10007','borrow:1:4','10001','10001','usertask1','10008',NULL,'申请起草','userTask','123','2017-12-10 20:20:22','2017-12-10 20:20:23',1002,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('10011','borrow:1:4','10001','10001','usertask2','10012',NULL,'经理审核','userTask','123','2017-12-10 20:20:23',NULL,NULL,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('10014','borrow:1:4','10013','10013','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-12-10 20:20:42','2017-12-10 20:20:42',1,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('10019','borrow:1:4','10013','10013','usertask1','10020',NULL,'申请起草','userTask','123','2017-12-10 20:20:42','2017-12-10 20:20:42',661,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('10023','borrow:1:4','10013','10013','usertask2','10024',NULL,'经理审核','userTask','123','2017-12-10 20:20:42',NULL,NULL,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('11','borrow:1:4','5','5','usertask1','12',NULL,'申请起草','userTask',NULL,'2017-12-10 19:57:33',NULL,NULL,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('12502','borrow:1:4','12501','12501','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-12-10 20:27:47','2017-12-10 20:27:47',10,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('12507','borrow:1:4','12501','12501','usertask1','12508',NULL,'申请起草','userTask','abc','2017-12-10 20:27:47','2017-12-10 20:27:48',1120,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('12512','borrow:1:4','12501','12501','usertask2','12513',NULL,'经理审核','userTask','abc','2017-12-10 20:27:48',NULL,NULL,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('14','borrow:1:4','13','13','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-12-10 19:58:41','2017-12-10 19:58:41',0,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('15002','borrow:1:4','15001','15001','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-12-10 20:36:09','2017-12-10 20:36:09',9,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('15007','borrow:1:4','15001','15001','usertask1','15008',NULL,'申请起草','userTask','abc','2017-12-10 20:36:09','2017-12-10 20:36:09',355,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('15012','borrow:1:4','15001','15001','usertask2','15013',NULL,'经理审核','userTask','abc','2017-12-10 20:36:09',NULL,NULL,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('19','borrow:1:4','13','13','usertask1','20',NULL,'申请起草','userTask',NULL,'2017-12-10 19:58:41',NULL,NULL,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('25010','leave:1:25008','25009','25009','_2',NULL,NULL,'StartEvent','startEvent',NULL,'2017-12-11 12:08:49','2017-12-11 12:08:49',8,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('25015','leave:1:25008','25009','25009','_4','25016',NULL,'请假单','userTask','123','2017-12-11 12:08:49','2017-12-11 12:08:50',1068,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('25019','leave:1:25008','25009','25009','_5','25020',NULL,'部门经理','userTask','123','2017-12-11 12:08:50',NULL,NULL,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('2502','borrow:1:4','2501','2501','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-12-10 20:00:52','2017-12-10 20:00:52',7,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('25022','leave:1:25008','25021','25021','_2',NULL,NULL,'StartEvent','startEvent',NULL,'2017-12-11 12:09:16','2017-12-11 12:09:16',0,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('25027','leave:1:25008','25021','25021','_4','25028',NULL,'请假单','userTask','123','2017-12-11 12:09:16','2017-12-11 12:09:16',115,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('25031','leave:1:25008','25021','25021','_5','25032',NULL,'部门经理','userTask','123','2017-12-11 12:09:16',NULL,NULL,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('2507','borrow:1:4','2501','2501','usertask1','2508',NULL,'申请起草','userTask',NULL,'2017-12-10 20:00:52','2017-12-10 20:00:52',227,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('2511','borrow:1:4','2501','2501','usertask2','2512',NULL,'经理审核','userTask',NULL,'2017-12-10 20:00:52',NULL,NULL,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('27502','leave:1:25008','27501','27501','_2',NULL,NULL,'StartEvent','startEvent',NULL,'2017-12-11 14:24:43','2017-12-11 14:24:43',14,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('27507','leave:1:25008','27501','27501','_4','27508',NULL,'请假单','userTask','qwe','2017-12-11 14:24:43','2017-12-11 14:24:44',1029,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('27512','leave:1:25008','27501','27501','_5','27513',NULL,'部门经理','userTask','qwe','2017-12-11 14:24:44','2017-12-11 15:39:05',4461972,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('30002','borrow:2:15017','30001','30001','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-12-11 14:34:48','2017-12-11 14:34:48',8,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('30007','borrow:2:15017','30001','30001','usertask1','30008',NULL,'申请起草','userTask','qwe','2017-12-11 14:34:48','2017-12-11 14:34:48',165,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('30012','borrow:2:15017','30001','30001','usertask2','30013',NULL,'经理审核','userTask','qwe','2017-12-11 14:34:48','2017-12-11 15:42:01',4033143,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('32501','leave:1:25008','27501','27501','_6','32502',NULL,'总经理','userTask','qwe','2017-12-11 15:39:06','2017-12-11 15:44:40',334875,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('35001','borrow:2:15017','30001','30001','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-12-11 15:42:01','2017-12-11 15:42:01',0,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('37501','leave:1:25008','27501','27501','_3',NULL,NULL,'EndEvent','endEvent',NULL,'2017-12-11 15:44:40','2017-12-11 15:44:40',0,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('40002','leave:1:25008','40001','40001','_2',NULL,NULL,'StartEvent','startEvent',NULL,'2017-12-11 15:47:13','2017-12-11 15:47:13',23,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('40007','leave:1:25008','40001','40001','_4','40008',NULL,'请假单','userTask','qwe','2017-12-11 15:47:13','2017-12-11 15:47:13',740,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('40012','leave:1:25008','40001','40001','_5','40013',NULL,'部门经理','userTask','qwe','2017-12-11 15:47:13','2017-12-11 15:47:58',45217,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('40014','leave:1:25008','40001','40001','_6','40015',NULL,'总经理','userTask','qwe','2017-12-11 15:47:58','2017-12-11 15:48:32',34302,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('40016','leave:1:25008','40001','40001','_3',NULL,NULL,'EndEvent','endEvent',NULL,'2017-12-11 15:48:32','2017-12-11 15:48:32',0,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('42502','leave:1:25008','42501','42501','_2',NULL,NULL,'StartEvent','startEvent',NULL,'2017-12-12 10:01:22','2017-12-12 10:01:22',9,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('42507','leave:1:25008','42501','42501','_4','42508',NULL,'请假单','userTask','qwe','2017-12-12 10:01:22','2017-12-12 10:01:22',691,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('42512','leave:1:25008','42501','42501','_5','42513',NULL,'部门经理','userTask','qwe','2017-12-12 10:01:22','2017-12-12 10:01:53',31369,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('42514','leave:1:25008','42501','42501','_6','42515',NULL,'总经理','userTask','asd','2017-12-12 10:01:53','2017-12-12 10:02:23',30893,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('42517','leave:1:25008','42501','42501','_3',NULL,NULL,'EndEvent','endEvent',NULL,'2017-12-12 10:02:23','2017-12-12 10:02:23',0,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('45002','leave:1:25008','45001','45001','_2',NULL,NULL,'StartEvent','startEvent',NULL,'2017-12-12 12:05:35','2017-12-12 12:05:35',11,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('45007','leave:1:25008','45001','45001','_4','45008',NULL,'请假单','userTask','qwe','2017-12-12 12:05:35','2017-12-12 12:05:35',746,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('45012','leave:1:25008','45001','45001','_5','45013',NULL,'部门经理','userTask','qwe','2017-12-12 12:05:35','2017-12-12 12:06:04',29445,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('45014','leave:1:25008','45001','45001','_6','45015',NULL,'总经理','userTask','asd','2017-12-12 12:06:04','2017-12-12 12:06:37',33741,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('45017','leave:1:25008','45001','45001','_3',NULL,NULL,'EndEvent','endEvent',NULL,'2017-12-12 12:06:37','2017-12-12 12:06:37',0,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('47502','leave:1:25008','47501','47501','_2',NULL,NULL,'StartEvent','startEvent',NULL,'2017-12-12 15:07:41','2017-12-12 15:07:41',20,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('47507','leave:1:25008','47501','47501','_4','47508',NULL,'请假单','userTask','qwe','2017-12-12 15:07:41','2017-12-12 15:07:41',341,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('47512','leave:1:25008','47501','47501','_5','47513',NULL,'部门经理','userTask','qwe','2017-12-12 15:07:41','2017-12-12 15:09:01',80826,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('47514','leave:1:25008','47501','47501','_6','47515',NULL,'总经理','userTask','qwe','2017-12-12 15:09:01','2017-12-12 15:09:07',6541,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('47516','leave:1:25008','47501','47501','_3',NULL,NULL,'EndEvent','endEvent',NULL,'2017-12-12 15:09:07','2017-12-12 15:09:07',0,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('50002','leave:1:25008','50001','50001','_2',NULL,NULL,'StartEvent','startEvent',NULL,'2017-12-13 00:37:39','2017-12-13 00:37:39',32,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('50007','leave:1:25008','50001','50001','_4','50008',NULL,'请假单','userTask','qq','2017-12-13 00:37:39','2017-12-13 00:37:39',553,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('50012','leave:1:25008','50001','50001','_5','50013',NULL,'部门经理','userTask','qq','2017-12-13 00:37:39',NULL,NULL,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('50015','borrow:2:15017','50014','50014','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-12-13 00:37:55','2017-12-13 00:37:55',1,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('5002','borrow:1:4','5001','5001','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-12-10 20:06:38','2017-12-10 20:06:38',8,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('50020','borrow:2:15017','50014','50014','usertask1','50021',NULL,'申请起草','userTask','qwe','2017-12-13 00:37:55','2017-12-13 00:37:55',880,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('50025','borrow:2:15017','50014','50014','usertask2','50026',NULL,'经理审核','userTask','qwe','2017-12-13 00:37:55','2017-12-13 00:38:55',60386,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('50027','borrow:2:15017','50014','50014','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-12-13 00:38:55','2017-12-13 00:38:55',0,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('5007','borrow:1:4','5001','5001','usertask1','5008',NULL,'申请起草','userTask',NULL,'2017-12-10 20:06:38','2017-12-10 20:06:38',884,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('5011','borrow:1:4','5001','5001','usertask2','5012',NULL,'经理审核','userTask',NULL,'2017-12-10 20:06:38',NULL,NULL,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('6','borrow:1:4','5','5','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-12-10 19:57:33','2017-12-10 19:57:33',14,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('7502','borrow:1:4','7501','7501','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-12-10 20:08:30','2017-12-10 20:08:30',10,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('7507','borrow:1:4','7501','7501','usertask1','7508',NULL,'申请起草','userTask',NULL,'2017-12-10 20:08:30','2017-12-10 20:08:30',850,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('7511','borrow:1:4','7501','7501','usertask2','7512',NULL,'经理审核','userTask',NULL,'2017-12-10 20:08:30',NULL,NULL,'');

/*Table structure for table `act_hi_attachment` */

DROP TABLE IF EXISTS `act_hi_attachment`;

CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_attachment` */

/*Table structure for table `act_hi_comment` */

DROP TABLE IF EXISTS `act_hi_comment`;

CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_comment` */

insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('10010','event','2017-12-10 20:20:22',NULL,'10008',NULL,'AddUserLink','123_|_owner',NULL);
insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('10022','event','2017-12-10 20:20:42',NULL,'10020',NULL,'AddUserLink','123_|_owner',NULL);
insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('12511','event','2017-12-10 20:27:48',NULL,'12508',NULL,'AddUserLink','123_|_owner',NULL);
insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('15011','event','2017-12-10 20:36:09',NULL,'15008',NULL,'AddUserLink','123_|_owner',NULL);
insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('25018','event','2017-12-11 12:08:50',NULL,'25016',NULL,'AddUserLink','123_|_owner',NULL);
insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('25030','event','2017-12-11 12:09:16',NULL,'25028',NULL,'AddUserLink','123_|_owner',NULL);
insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('2510','event','2017-12-10 20:00:52',NULL,'2508',NULL,'AddUserLink','123_|_owner',NULL);
insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('27511','event','2017-12-11 14:24:43',NULL,'27508',NULL,'AddUserLink','abc_|_owner',NULL);
insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('30011','event','2017-12-11 14:34:48',NULL,'30008',NULL,'AddUserLink','abc_|_owner',NULL);
insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('40011','event','2017-12-11 15:47:13',NULL,'40008',NULL,'AddUserLink','abc_|_owner',NULL);
insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('42511','event','2017-12-12 10:01:22',NULL,'42508',NULL,'AddUserLink','abc_|_owner',NULL);
insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('45011','event','2017-12-12 12:05:35',NULL,'45008',NULL,'AddUserLink','abc_|_owner',NULL);
insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('47511','event','2017-12-12 15:07:41',NULL,'47508',NULL,'AddUserLink','abc_|_owner',NULL);
insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('50011','event','2017-12-13 00:37:39',NULL,'50008',NULL,'AddUserLink','abc_|_owner',NULL);
insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('50024','event','2017-12-13 00:37:55',NULL,'50021',NULL,'AddUserLink','abc_|_owner',NULL);
insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('5010','event','2017-12-10 20:06:38',NULL,'5008',NULL,'AddUserLink','123_|_owner',NULL);
insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('7510','event','2017-12-10 20:08:30',NULL,'7508',NULL,'AddUserLink','123_|_owner',NULL);

/*Table structure for table `act_hi_detail` */

DROP TABLE IF EXISTS `act_hi_detail`;

CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_detail` */

/*Table structure for table `act_hi_identitylink` */

DROP TABLE IF EXISTS `act_hi_identitylink`;

CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_identitylink` */

insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('10009',NULL,'participant','123',NULL,'10001');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('10021',NULL,'participant','123',NULL,'10013');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('12509',NULL,'participant','abc',NULL,'12501');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('12510',NULL,'participant','123',NULL,'12501');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('15009',NULL,'participant','abc',NULL,'15001');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('15010',NULL,'participant','123',NULL,'15001');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('25017',NULL,'participant','123',NULL,'25009');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('25029',NULL,'participant','123',NULL,'25021');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('2509',NULL,'participant','123',NULL,'2501');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('27509',NULL,'participant','qwe',NULL,'27501');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('27510',NULL,'participant','abc',NULL,'27501');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('30009',NULL,'participant','qwe',NULL,'30001');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('30010',NULL,'participant','abc',NULL,'30001');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('40009',NULL,'participant','qwe',NULL,'40001');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('40010',NULL,'participant','abc',NULL,'40001');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('42509',NULL,'participant','qwe',NULL,'42501');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('42510',NULL,'participant','abc',NULL,'42501');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('42516',NULL,'participant','asd',NULL,'42501');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('45009',NULL,'participant','qwe',NULL,'45001');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('45010',NULL,'participant','abc',NULL,'45001');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('45016',NULL,'participant','asd',NULL,'45001');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('47509',NULL,'participant','qwe',NULL,'47501');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('47510',NULL,'participant','abc',NULL,'47501');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('50009',NULL,'participant','qq',NULL,'50001');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('50010',NULL,'participant','abc',NULL,'50001');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('50022',NULL,'participant','qwe',NULL,'50014');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('50023',NULL,'participant','abc',NULL,'50014');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('5009',NULL,'participant','123',NULL,'5001');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('7509',NULL,'participant','123',NULL,'7501');

/*Table structure for table `act_hi_procinst` */

DROP TABLE IF EXISTS `act_hi_procinst`;

CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_procinst` */

insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('10001','10001',NULL,'borrow:1:4','2017-12-10 20:20:22',NULL,NULL,NULL,'startevent1',NULL,NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('10013','10013',NULL,'borrow:1:4','2017-12-10 20:20:42',NULL,NULL,NULL,'startevent1',NULL,NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('12501','12501',NULL,'borrow:1:4','2017-12-10 20:27:47',NULL,NULL,NULL,'startevent1',NULL,NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('13','13',NULL,'borrow:1:4','2017-12-10 19:58:41',NULL,NULL,NULL,'startevent1',NULL,NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('15001','15001',NULL,'borrow:1:4','2017-12-10 20:36:09',NULL,NULL,NULL,'startevent1',NULL,NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('25009','25009',NULL,'leave:1:25008','2017-12-11 12:08:49',NULL,NULL,NULL,'_2',NULL,NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('2501','2501',NULL,'borrow:1:4','2017-12-10 20:00:52',NULL,NULL,NULL,'startevent1',NULL,NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('25021','25021',NULL,'leave:1:25008','2017-12-11 12:09:16',NULL,NULL,NULL,'_2',NULL,NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('27501','27501',NULL,'leave:1:25008','2017-12-11 14:24:43','2017-12-11 15:44:40',4797898,NULL,'_2','_3',NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('30001','30001',NULL,'borrow:2:15017','2017-12-11 14:34:48','2017-12-11 15:42:01',4033200,NULL,'startevent1','endevent1',NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('40001','40001',NULL,'leave:1:25008','2017-12-11 15:47:13','2017-12-11 15:48:32',79305,NULL,'_2','_3',NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('42501','42501',NULL,'leave:1:25008','2017-12-12 10:01:22','2017-12-12 10:02:23',61895,NULL,'_2','_3',NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('45001','45001',NULL,'leave:1:25008','2017-12-12 12:05:35','2017-12-12 12:06:37',62742,NULL,'_2','_3',NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('47501','47501',NULL,'leave:1:25008','2017-12-12 15:07:41','2017-12-12 15:09:07',86544,NULL,'_2','_3',NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('5','5',NULL,'borrow:1:4','2017-12-10 19:57:33',NULL,NULL,NULL,'startevent1',NULL,NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('50001','50001',NULL,'leave:1:25008','2017-12-13 00:37:39',NULL,NULL,NULL,'_2',NULL,NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('5001','5001',NULL,'borrow:1:4','2017-12-10 20:06:38',NULL,NULL,NULL,'startevent1',NULL,NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('50014','50014',NULL,'borrow:2:15017','2017-12-13 00:37:55','2017-12-13 00:38:55',60389,NULL,'startevent1','endevent1',NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('7501','7501',NULL,'borrow:1:4','2017-12-10 20:08:30',NULL,NULL,NULL,'startevent1',NULL,NULL,NULL,'',NULL);

/*Table structure for table `act_hi_taskinst` */

DROP TABLE IF EXISTS `act_hi_taskinst`;

CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `CLAIM_TIME_` datetime DEFAULT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_TASK_INST_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_taskinst` */

insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('10008','borrow:1:4','usertask1','10001','10001','申请起草',NULL,NULL,'123','123','2017-12-10 20:20:22',NULL,'2017-12-10 20:20:22',990,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('10012','borrow:1:4','usertask2','10001','10001','经理审核',NULL,NULL,NULL,'123','2017-12-10 20:20:23',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('10020','borrow:1:4','usertask1','10013','10013','申请起草',NULL,NULL,'123','123','2017-12-10 20:20:42',NULL,'2017-12-10 20:20:42',655,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('10024','borrow:1:4','usertask2','10013','10013','经理审核',NULL,NULL,NULL,'123','2017-12-10 20:20:42',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('12','borrow:1:4','usertask1','5','5','申请起草',NULL,NULL,NULL,NULL,'2017-12-10 19:57:33',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('12508','borrow:1:4','usertask1','12501','12501','申请起草',NULL,NULL,'123','abc','2017-12-10 20:27:47',NULL,'2017-12-10 20:27:48',1107,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('12513','borrow:1:4','usertask2','12501','12501','经理审核',NULL,NULL,NULL,'abc','2017-12-10 20:27:48',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('15008','borrow:1:4','usertask1','15001','15001','申请起草',NULL,NULL,'123','abc','2017-12-10 20:36:09',NULL,'2017-12-10 20:36:09',335,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('15013','borrow:1:4','usertask2','15001','15001','经理审核',NULL,NULL,NULL,'abc','2017-12-10 20:36:09',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('20','borrow:1:4','usertask1','13','13','申请起草',NULL,NULL,NULL,NULL,'2017-12-10 19:58:41',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('25016','leave:1:25008','_4','25009','25009','请假单',NULL,NULL,'123','123','2017-12-11 12:08:49',NULL,'2017-12-11 12:08:50',1061,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('25020','leave:1:25008','_5','25009','25009','部门经理',NULL,NULL,NULL,'123','2017-12-11 12:08:50',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('25028','leave:1:25008','_4','25021','25021','请假单',NULL,NULL,'123','123','2017-12-11 12:09:16',NULL,'2017-12-11 12:09:16',112,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('25032','leave:1:25008','_5','25021','25021','部门经理',NULL,NULL,NULL,'123','2017-12-11 12:09:16',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('2508','borrow:1:4','usertask1','2501','2501','申请起草',NULL,NULL,'123',NULL,'2017-12-10 20:00:52',NULL,'2017-12-10 20:00:52',212,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('2512','borrow:1:4','usertask2','2501','2501','经理审核',NULL,NULL,NULL,NULL,'2017-12-10 20:00:52',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('27508','leave:1:25008','_4','27501','27501','请假单',NULL,NULL,'abc','qwe','2017-12-11 14:24:43',NULL,'2017-12-11 14:24:44',1020,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('27513','leave:1:25008','_5','27501','27501','部门经理',NULL,NULL,NULL,'qwe','2017-12-11 14:24:44',NULL,'2017-12-11 15:39:05',4461892,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('30008','borrow:2:15017','usertask1','30001','30001','申请起草',NULL,NULL,'abc','qwe','2017-12-11 14:34:48',NULL,'2017-12-11 14:34:48',153,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('30013','borrow:2:15017','usertask2','30001','30001','经理审核',NULL,NULL,NULL,'qwe','2017-12-11 14:34:48',NULL,'2017-12-11 15:42:01',4033127,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('32502','leave:1:25008','_6','27501','27501','总经理',NULL,NULL,NULL,'qwe','2017-12-11 15:39:06',NULL,'2017-12-11 15:44:40',334848,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('40008','leave:1:25008','_4','40001','40001','请假单',NULL,NULL,'abc','qwe','2017-12-11 15:47:13',NULL,'2017-12-11 15:47:13',730,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('40013','leave:1:25008','_5','40001','40001','部门经理',NULL,NULL,NULL,'qwe','2017-12-11 15:47:13',NULL,'2017-12-11 15:47:58',45212,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('40015','leave:1:25008','_6','40001','40001','总经理',NULL,NULL,NULL,'qwe','2017-12-11 15:47:58',NULL,'2017-12-11 15:48:32',34297,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('42508','leave:1:25008','_4','42501','42501','请假单',NULL,NULL,'abc','qwe','2017-12-12 10:01:22',NULL,'2017-12-12 10:01:22',686,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('42513','leave:1:25008','_5','42501','42501','部门经理',NULL,NULL,NULL,'qwe','2017-12-12 10:01:22',NULL,'2017-12-12 10:01:53',31366,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('42515','leave:1:25008','_6','42501','42501','总经理',NULL,NULL,NULL,'asd','2017-12-12 10:01:53',NULL,'2017-12-12 10:02:23',30891,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('45008','leave:1:25008','_4','45001','45001','请假单',NULL,NULL,'abc','qwe','2017-12-12 12:05:35',NULL,'2017-12-12 12:05:35',738,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('45013','leave:1:25008','_5','45001','45001','部门经理',NULL,NULL,NULL,'qwe','2017-12-12 12:05:35',NULL,'2017-12-12 12:06:04',29442,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('45015','leave:1:25008','_6','45001','45001','总经理',NULL,NULL,NULL,'asd','2017-12-12 12:06:04',NULL,'2017-12-12 12:06:37',33739,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('47508','leave:1:25008','_4','47501','47501','请假单',NULL,NULL,'abc','qwe','2017-12-12 15:07:41',NULL,'2017-12-12 15:07:41',331,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('47513','leave:1:25008','_5','47501','47501','部门经理',NULL,NULL,NULL,'qwe','2017-12-12 15:07:41',NULL,'2017-12-12 15:09:01',80822,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('47515','leave:1:25008','_6','47501','47501','总经理',NULL,NULL,NULL,'qwe','2017-12-12 15:09:01',NULL,'2017-12-12 15:09:07',6538,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('50008','leave:1:25008','_4','50001','50001','请假单',NULL,NULL,'abc','qq','2017-12-13 00:37:39',NULL,'2017-12-13 00:37:39',538,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('50013','leave:1:25008','_5','50001','50001','部门经理',NULL,NULL,NULL,'qq','2017-12-13 00:37:39',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('50021','borrow:2:15017','usertask1','50014','50014','申请起草',NULL,NULL,'abc','qwe','2017-12-13 00:37:55',NULL,'2017-12-13 00:37:55',875,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('50026','borrow:2:15017','usertask2','50014','50014','经理审核',NULL,NULL,NULL,'qwe','2017-12-13 00:37:55',NULL,'2017-12-13 00:38:55',60382,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('5008','borrow:1:4','usertask1','5001','5001','申请起草',NULL,NULL,'123',NULL,'2017-12-10 20:06:38',NULL,'2017-12-10 20:06:38',866,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('5012','borrow:1:4','usertask2','5001','5001','经理审核',NULL,NULL,NULL,NULL,'2017-12-10 20:06:38',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('7508','borrow:1:4','usertask1','7501','7501','申请起草',NULL,NULL,'123',NULL,'2017-12-10 20:08:30',NULL,'2017-12-10 20:08:30',822,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('7512','borrow:1:4','usertask2','7501','7501','经理审核',NULL,NULL,NULL,NULL,'2017-12-10 20:08:30',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');

/*Table structure for table `act_hi_varinst` */

DROP TABLE IF EXISTS `act_hi_varinst`;

CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`),
  KEY `ACT_IDX_HI_PROCVAR_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_varinst` */

insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('10','5','5',NULL,'user','null',0,NULL,NULL,NULL,NULL,NULL,'2017-12-10 19:57:33','2017-12-10 19:57:33');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('10004','10001','10001',NULL,'var','serializable',1,'10005',NULL,NULL,NULL,NULL,'2017-12-10 20:20:22','2017-12-10 20:20:22');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('10006','10001','10001',NULL,'user','string',1,NULL,NULL,NULL,'123',NULL,'2017-12-10 20:20:22','2017-12-10 20:20:22');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('10016','10013','10013',NULL,'var','serializable',1,'10017',NULL,NULL,NULL,NULL,'2017-12-10 20:20:42','2017-12-10 20:20:42');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('10018','10013','10013',NULL,'user','string',1,NULL,NULL,NULL,'123',NULL,'2017-12-10 20:20:42','2017-12-10 20:20:42');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('12504','12501','12501',NULL,'var','serializable',1,'12505',NULL,NULL,NULL,NULL,'2017-12-10 20:27:47','2017-12-10 20:27:48');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('12506','12501','12501',NULL,'user','string',1,NULL,NULL,NULL,'abc',NULL,'2017-12-10 20:27:47','2017-12-10 20:27:48');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('15004','15001','15001',NULL,'var','serializable',1,'15005',NULL,NULL,NULL,NULL,'2017-12-10 20:36:09','2017-12-10 20:36:09');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('15006','15001','15001',NULL,'user','string',1,NULL,NULL,NULL,'abc',NULL,'2017-12-10 20:36:09','2017-12-10 20:36:09');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('16','13','13',NULL,'var','serializable',0,'17',NULL,NULL,NULL,NULL,'2017-12-10 19:58:41','2017-12-10 19:58:41');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('18','13','13',NULL,'user','null',0,NULL,NULL,NULL,NULL,NULL,'2017-12-10 19:58:41','2017-12-10 19:58:41');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('25012','25009','25009',NULL,'var','serializable',1,'25013',NULL,NULL,NULL,NULL,'2017-12-11 12:08:49','2017-12-11 12:08:50');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('25014','25009','25009',NULL,'user','string',1,NULL,NULL,NULL,'123',NULL,'2017-12-11 12:08:49','2017-12-11 12:08:50');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('25024','25021','25021',NULL,'var','serializable',1,'25025',NULL,NULL,NULL,NULL,'2017-12-11 12:09:16','2017-12-11 12:09:16');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('25026','25021','25021',NULL,'user','string',1,NULL,NULL,NULL,'123',NULL,'2017-12-11 12:09:16','2017-12-11 12:09:16');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('2504','2501','2501',NULL,'var','serializable',1,'2505',NULL,NULL,NULL,NULL,'2017-12-10 20:00:52','2017-12-10 20:00:52');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('2506','2501','2501',NULL,'user','null',1,NULL,NULL,NULL,NULL,NULL,'2017-12-10 20:00:52','2017-12-10 20:00:52');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('27504','27501','27501',NULL,'var','serializable',3,'27505',NULL,NULL,NULL,NULL,'2017-12-11 14:24:43','2017-12-11 15:44:40');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('27506','27501','27501',NULL,'user','string',3,NULL,NULL,NULL,'qwe',NULL,'2017-12-11 14:24:43','2017-12-11 15:44:40');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('30004','30001','30001',NULL,'var','serializable',2,'30005',NULL,NULL,NULL,NULL,'2017-12-11 14:34:48','2017-12-11 15:42:01');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('30006','30001','30001',NULL,'user','string',2,NULL,NULL,NULL,'qwe',NULL,'2017-12-11 14:34:48','2017-12-11 15:42:01');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('40004','40001','40001',NULL,'var','serializable',3,'40005',NULL,NULL,NULL,NULL,'2017-12-11 15:47:13','2017-12-11 15:48:32');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('40006','40001','40001',NULL,'user','string',3,NULL,NULL,NULL,'qwe',NULL,'2017-12-11 15:47:13','2017-12-11 15:48:32');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('42504','42501','42501',NULL,'var','serializable',3,'42505',NULL,NULL,NULL,NULL,'2017-12-12 10:01:22','2017-12-12 10:02:23');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('42506','42501','42501',NULL,'user','string',3,NULL,NULL,NULL,'zxc',NULL,'2017-12-12 10:01:22','2017-12-12 10:02:23');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('45004','45001','45001',NULL,'var','serializable',3,'45005',NULL,NULL,NULL,NULL,'2017-12-12 12:05:35','2017-12-12 12:06:37');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('45006','45001','45001',NULL,'user','string',3,NULL,NULL,NULL,'qwe',NULL,'2017-12-12 12:05:35','2017-12-12 12:06:37');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('47504','47501','47501',NULL,'var','serializable',3,'47505',NULL,NULL,NULL,NULL,'2017-12-12 15:07:41','2017-12-12 15:09:07');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('47506','47501','47501',NULL,'user','string',3,NULL,NULL,NULL,'qwe',NULL,'2017-12-12 15:07:41','2017-12-12 15:09:07');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('50004','50001','50001',NULL,'var','serializable',1,'50005',NULL,NULL,NULL,NULL,'2017-12-13 00:37:39','2017-12-13 00:37:39');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('50006','50001','50001',NULL,'user','string',1,NULL,NULL,NULL,'qq',NULL,'2017-12-13 00:37:39','2017-12-13 00:37:39');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('50017','50014','50014',NULL,'var','serializable',2,'50018',NULL,NULL,NULL,NULL,'2017-12-13 00:37:55','2017-12-13 00:38:55');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('50019','50014','50014',NULL,'user','string',2,NULL,NULL,NULL,'qwe',NULL,'2017-12-13 00:37:55','2017-12-13 00:38:55');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('5004','5001','5001',NULL,'var','serializable',1,'5005',NULL,NULL,NULL,NULL,'2017-12-10 20:06:38','2017-12-10 20:06:38');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('5006','5001','5001',NULL,'user','null',1,NULL,NULL,NULL,NULL,NULL,'2017-12-10 20:06:38','2017-12-10 20:06:38');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('7504','7501','7501',NULL,'var','serializable',1,'7505',NULL,NULL,NULL,NULL,'2017-12-10 20:08:30','2017-12-10 20:08:30');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('7506','7501','7501',NULL,'user','null',1,NULL,NULL,NULL,NULL,NULL,'2017-12-10 20:08:30','2017-12-10 20:08:30');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('8','5','5',NULL,'var','serializable',0,'9',NULL,NULL,NULL,NULL,'2017-12-10 19:57:33','2017-12-10 19:57:33');

/*Table structure for table `act_id_group` */

DROP TABLE IF EXISTS `act_id_group`;

CREATE TABLE `act_id_group` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_group` */

/*Table structure for table `act_id_info` */

DROP TABLE IF EXISTS `act_id_info`;

CREATE TABLE `act_id_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_info` */

insert  into `act_id_info`(`ID_`,`REV_`,`USER_ID_`,`TYPE_`,`KEY_`,`VALUE_`,`PASSWORD_`,`PARENT_ID_`) values ('',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `act_id_membership` */

DROP TABLE IF EXISTS `act_id_membership`;

CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_membership` */

/*Table structure for table `act_id_user` */

DROP TABLE IF EXISTS `act_id_user`;

CREATE TABLE `act_id_user` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_user` */

/*Table structure for table `act_re_deployment` */

DROP TABLE IF EXISTS `act_re_deployment`;

CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_deployment` */

insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`TENANT_ID_`,`DEPLOY_TIME_`) values ('1','借款','借钱审核','','2017-12-10 19:56:58');
insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`TENANT_ID_`,`DEPLOY_TIME_`) values ('15014','又是一年春好处','绝胜烟柳满皇都','','2017-12-10 20:44:24');
insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`TENANT_ID_`,`DEPLOY_TIME_`) values ('25005','正常的动态生成审批','请假审批','','2017-12-11 12:08:30');

/*Table structure for table `act_re_model` */

DROP TABLE IF EXISTS `act_re_model`;

CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_model` */

/*Table structure for table `act_re_procdef` */

DROP TABLE IF EXISTS `act_re_procdef`;

CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_procdef` */

insert  into `act_re_procdef`(`ID_`,`REV_`,`CATEGORY_`,`NAME_`,`KEY_`,`VERSION_`,`DEPLOYMENT_ID_`,`RESOURCE_NAME_`,`DGRM_RESOURCE_NAME_`,`DESCRIPTION_`,`HAS_START_FORM_KEY_`,`HAS_GRAPHICAL_NOTATION_`,`SUSPENSION_STATE_`,`TENANT_ID_`) values ('borrow:1:4',1,'http://www.activiti.org/test','My process','borrow',1,'1','shenhe.bpmn','shenhe.borrow.png',NULL,0,1,1,'');
insert  into `act_re_procdef`(`ID_`,`REV_`,`CATEGORY_`,`NAME_`,`KEY_`,`VERSION_`,`DEPLOYMENT_ID_`,`RESOURCE_NAME_`,`DGRM_RESOURCE_NAME_`,`DESCRIPTION_`,`HAS_START_FORM_KEY_`,`HAS_GRAPHICAL_NOTATION_`,`SUSPENSION_STATE_`,`TENANT_ID_`) values ('borrow:2:15017',1,'http://www.activiti.org/test','My process','borrow',2,'15014','shenhe.bpmn','shenhe.borrow.png',NULL,0,1,1,'');
insert  into `act_re_procdef`(`ID_`,`REV_`,`CATEGORY_`,`NAME_`,`KEY_`,`VERSION_`,`DEPLOYMENT_ID_`,`RESOURCE_NAME_`,`DGRM_RESOURCE_NAME_`,`DESCRIPTION_`,`HAS_START_FORM_KEY_`,`HAS_GRAPHICAL_NOTATION_`,`SUSPENSION_STATE_`,`TENANT_ID_`) values ('leave:1:25008',1,'http://www.activiti.org/testm1512639392727',NULL,'leave',1,'25005','leave.bpmn','leave.leave.png',NULL,0,1,1,'');

/*Table structure for table `act_ru_event_subscr` */

DROP TABLE IF EXISTS `act_ru_event_subscr`;

CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_event_subscr` */

/*Table structure for table `act_ru_execution` */

DROP TABLE IF EXISTS `act_ru_execution`;

CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_execution` */

insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`,`TENANT_ID_`,`NAME_`,`LOCK_TIME_`) values ('10001',2,'10001',NULL,NULL,'borrow:1:4',NULL,'usertask2',1,0,1,0,1,2,'',NULL,NULL);
insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`,`TENANT_ID_`,`NAME_`,`LOCK_TIME_`) values ('10013',2,'10013',NULL,NULL,'borrow:1:4',NULL,'usertask2',1,0,1,0,1,2,'',NULL,NULL);
insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`,`TENANT_ID_`,`NAME_`,`LOCK_TIME_`) values ('12501',2,'12501',NULL,NULL,'borrow:1:4',NULL,'usertask2',1,0,1,0,1,2,'',NULL,NULL);
insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`,`TENANT_ID_`,`NAME_`,`LOCK_TIME_`) values ('13',1,'13',NULL,NULL,'borrow:1:4',NULL,'usertask1',1,0,1,0,1,2,'',NULL,NULL);
insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`,`TENANT_ID_`,`NAME_`,`LOCK_TIME_`) values ('15001',2,'15001',NULL,NULL,'borrow:1:4',NULL,'usertask2',1,0,1,0,1,2,'',NULL,NULL);
insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`,`TENANT_ID_`,`NAME_`,`LOCK_TIME_`) values ('25009',2,'25009',NULL,NULL,'leave:1:25008',NULL,'_5',1,0,1,0,1,2,'',NULL,NULL);
insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`,`TENANT_ID_`,`NAME_`,`LOCK_TIME_`) values ('2501',2,'2501',NULL,NULL,'borrow:1:4',NULL,'usertask2',1,0,1,0,1,2,'',NULL,NULL);
insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`,`TENANT_ID_`,`NAME_`,`LOCK_TIME_`) values ('25021',2,'25021',NULL,NULL,'leave:1:25008',NULL,'_5',1,0,1,0,1,2,'',NULL,NULL);
insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`,`TENANT_ID_`,`NAME_`,`LOCK_TIME_`) values ('5',1,'5',NULL,NULL,'borrow:1:4',NULL,'usertask1',1,0,1,0,1,2,'',NULL,NULL);
insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`,`TENANT_ID_`,`NAME_`,`LOCK_TIME_`) values ('50001',2,'50001',NULL,NULL,'leave:1:25008',NULL,'_5',1,0,1,0,1,2,'',NULL,NULL);
insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`,`TENANT_ID_`,`NAME_`,`LOCK_TIME_`) values ('5001',2,'5001',NULL,NULL,'borrow:1:4',NULL,'usertask2',1,0,1,0,1,2,'',NULL,NULL);
insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`,`TENANT_ID_`,`NAME_`,`LOCK_TIME_`) values ('7501',2,'7501',NULL,NULL,'borrow:1:4',NULL,'usertask2',1,0,1,0,1,2,'',NULL,NULL);

/*Table structure for table `act_ru_identitylink` */

DROP TABLE IF EXISTS `act_ru_identitylink`;

CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_identitylink` */

insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('10009',1,NULL,'participant','123',NULL,'10001',NULL);
insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('10021',1,NULL,'participant','123',NULL,'10013',NULL);
insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('12509',1,NULL,'participant','abc',NULL,'12501',NULL);
insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('12510',1,NULL,'participant','123',NULL,'12501',NULL);
insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('15009',1,NULL,'participant','abc',NULL,'15001',NULL);
insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('15010',1,NULL,'participant','123',NULL,'15001',NULL);
insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('25017',1,NULL,'participant','123',NULL,'25009',NULL);
insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('25029',1,NULL,'participant','123',NULL,'25021',NULL);
insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('2509',1,NULL,'participant','123',NULL,'2501',NULL);
insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('50009',1,NULL,'participant','qq',NULL,'50001',NULL);
insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('50010',1,NULL,'participant','abc',NULL,'50001',NULL);
insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('5009',1,NULL,'participant','123',NULL,'5001',NULL);
insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('7509',1,NULL,'participant','123',NULL,'7501',NULL);

/*Table structure for table `act_ru_job` */

DROP TABLE IF EXISTS `act_ru_job`;

CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_job` */

/*Table structure for table `act_ru_task` */

DROP TABLE IF EXISTS `act_ru_task`;

CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `DUE_DATE_` datetime DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_task` */

insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`) values ('10012',1,'10001','10001','borrow:1:4','经理审核',NULL,NULL,'usertask2',NULL,'123',NULL,50,'2017-12-10 20:20:23',NULL,NULL,1,'',NULL);
insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`) values ('10024',1,'10013','10013','borrow:1:4','经理审核',NULL,NULL,'usertask2',NULL,'123',NULL,50,'2017-12-10 20:20:42',NULL,NULL,1,'',NULL);
insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`) values ('12',1,'5','5','borrow:1:4','申请起草',NULL,NULL,'usertask1',NULL,NULL,NULL,50,'2017-12-10 19:57:33',NULL,NULL,1,'',NULL);
insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`) values ('12513',1,'12501','12501','borrow:1:4','经理审核',NULL,NULL,'usertask2',NULL,'abc',NULL,50,'2017-12-10 20:27:48',NULL,NULL,1,'',NULL);
insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`) values ('15013',1,'15001','15001','borrow:1:4','经理审核',NULL,NULL,'usertask2',NULL,'abc',NULL,50,'2017-12-10 20:36:09',NULL,NULL,1,'',NULL);
insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`) values ('20',1,'13','13','borrow:1:4','申请起草',NULL,NULL,'usertask1',NULL,NULL,NULL,50,'2017-12-10 19:58:41',NULL,NULL,1,'',NULL);
insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`) values ('25020',1,'25009','25009','leave:1:25008','部门经理',NULL,NULL,'_5',NULL,'123',NULL,50,'2017-12-11 12:08:50',NULL,NULL,1,'',NULL);
insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`) values ('25032',1,'25021','25021','leave:1:25008','部门经理',NULL,NULL,'_5',NULL,'123',NULL,50,'2017-12-11 12:09:16',NULL,NULL,1,'',NULL);
insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`) values ('2512',1,'2501','2501','borrow:1:4','经理审核',NULL,NULL,'usertask2',NULL,NULL,NULL,50,'2017-12-10 20:00:52',NULL,NULL,1,'',NULL);
insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`) values ('50013',1,'50001','50001','leave:1:25008','部门经理',NULL,NULL,'_5',NULL,'qq',NULL,50,'2017-12-13 00:37:39',NULL,NULL,1,'',NULL);
insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`) values ('5012',1,'5001','5001','borrow:1:4','经理审核',NULL,NULL,'usertask2',NULL,NULL,NULL,50,'2017-12-10 20:06:38',NULL,NULL,1,'',NULL);
insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`) values ('7512',1,'7501','7501','borrow:1:4','经理审核',NULL,NULL,'usertask2',NULL,NULL,NULL,50,'2017-12-10 20:08:30',NULL,NULL,1,'',NULL);

/*Table structure for table `act_ru_variable` */

DROP TABLE IF EXISTS `act_ru_variable`;

CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_variable` */

insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('10',1,'null','user','5','5',NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('10004',1,'serializable','var','10001','10001',NULL,'10003',NULL,NULL,NULL,NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('10006',1,'string','user','10001','10001',NULL,NULL,NULL,NULL,'123',NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('10016',1,'serializable','var','10013','10013',NULL,'10015',NULL,NULL,NULL,NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('10018',1,'string','user','10013','10013',NULL,NULL,NULL,NULL,'123',NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('12504',1,'serializable','var','12501','12501',NULL,'12503',NULL,NULL,NULL,NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('12506',1,'string','user','12501','12501',NULL,NULL,NULL,NULL,'abc',NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('15004',1,'serializable','var','15001','15001',NULL,'15003',NULL,NULL,NULL,NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('15006',1,'string','user','15001','15001',NULL,NULL,NULL,NULL,'abc',NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('16',1,'serializable','var','13','13',NULL,'15',NULL,NULL,NULL,NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('18',1,'null','user','13','13',NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('25012',1,'serializable','var','25009','25009',NULL,'25011',NULL,NULL,NULL,NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('25014',1,'string','user','25009','25009',NULL,NULL,NULL,NULL,'123',NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('25024',1,'serializable','var','25021','25021',NULL,'25023',NULL,NULL,NULL,NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('25026',1,'string','user','25021','25021',NULL,NULL,NULL,NULL,'123',NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('2504',1,'serializable','var','2501','2501',NULL,'2503',NULL,NULL,NULL,NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('2506',1,'null','user','2501','2501',NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('50004',1,'serializable','var','50001','50001',NULL,'50003',NULL,NULL,NULL,NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('50006',1,'string','user','50001','50001',NULL,NULL,NULL,NULL,'qq',NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('5004',1,'serializable','var','5001','5001',NULL,'5003',NULL,NULL,NULL,NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('5006',1,'null','user','5001','5001',NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('7504',1,'serializable','var','7501','7501',NULL,'7503',NULL,NULL,NULL,NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('7506',1,'null','user','7501','7501',NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('8',1,'serializable','var','5','5',NULL,'7',NULL,NULL,NULL,NULL);

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `menuid` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单id',
  `parentid` int(11) DEFAULT NULL COMMENT '父级菜单id',
  `menuname` varchar(50) NOT NULL COMMENT '菜单名称',
  `url` varchar(50) DEFAULT NULL COMMENT 'url地址',
  `perms` varchar(50) DEFAULT NULL COMMENT '参数',
  `type` smallint(3) NOT NULL COMMENT '类型',
  `icon` varchar(50) DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`menuid`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

/*Data for the table `menu` */

insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (1,8,'待办事项','/task/index.action','task:index',0,'');
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (2,8,'员工中心','/task/index.action','task:open',0,'');
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (3,NULL,'系统管理','/sys/','sys',0,'');
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (4,3,'用户管理','/sys/user/index.action','sys:user:index',0,'');
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (5,3,'角色管理','/sys/role/index.action','sys:role:index',0,'');
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (6,3,'菜单管理','/sys/menu/index.action','sys:menu:index',0,'');
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (7,3,'activiti 流程管理','/sys/activiti/index.action','sys:activiti:index',0,'');
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (8,NULL,'task 流程任务','/task/','task',0,'');
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (9,1,'待办事项列表页','/task/index.action','task:index',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (10,1,'查看待办事项详情','/task/view.action','task:view',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (11,1,'列出待办事项','/task/list.action','task:list',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (12,1,'待办事项审核','/task/doNext/Task','task:doNextTask',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (13,2,'编辑任务(请假,借款等)','/task/open.action','task:open',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (14,2,'开启任务','/task/doStart.action','task:doStart',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (15,4,'用户列表','/sys/user/findAllUser','sys:user:findAllUser',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (16,4,'表单页','/sys/user/form.action','sys:user:form',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (17,4,'删除用户','/sys/user/delete.action','sys:user:delete',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (18,4,'新增','/sys/user/addUser.action','sys:user:addUser',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (19,4,'修改','/sys/user/updateUser.action','sys:user:updateUser',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (20,4,'查找','/sys/user/findUser.action','sys:user:findUser',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (21,5,'表单页','/sys/role/form.action','sys:rolle:form',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (22,5,'查找','/sys/role/info.action','sys:role:info',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (23,5,'列表','/sys/role/findAllRole.action','sys:role:list',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (24,5,'新增','/sys/role/addRole.action','sys:role:add',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (25,5,'修改','/sys/role/updateRole.action','sys:role:edit',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (26,5,'删除','/sys/role/delete.action','sys:role:delete',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (27,6,'列表','/sys/menu/findAllMenu.action','sys:menu:list',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (28,6,'新增','/sys/menu/findAllMenu.action','sys:menu:add',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (29,6,'表单页','/sys/menu/form.action','sys:menu:form',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (30,6,'修改','/sys/menu/update.action','sys:menu:update',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (31,6,'查找','/sys/menu/info.action','sys:menu:info',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (32,6,'删除','/sys/menu/delelte.action','sys:menu:delete',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (33,7,'列表','/activiti/list.action','activiti:list',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (34,7,'发布','/activiti/deploy.action','activiti:deploy',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (35,7,'表单','/activiti/form.action','activiti:form',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (36,7,'删除','/sys/activiti/delete.action','sys:activiti:delete',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (37,4,'123','123','123',1,NULL);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `rolename` varchar(50) NOT NULL COMMENT '角色名称',
  `remark` varchar(50) NOT NULL COMMENT '角色说明',
  `createuserid` int(11) DEFAULT NULL COMMENT '创建者id',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`roleid`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`roleid`,`rolename`,`remark`,`createuserid`,`createtime`) values (1,'admin','系统管理员,拥有最高权限',1,'2017-12-09 22:31:05');
insert  into `role`(`roleid`,`rolename`,`remark`,`createuserid`,`createtime`) values (2,'coder','程序员',1,'2017-12-11 12:18:22');
insert  into `role`(`roleid`,`rolename`,`remark`,`createuserid`,`createtime`) values (3,'codermanager','程序开发部门经理',1,'2017-12-11 12:19:33');
insert  into `role`(`roleid`,`rolename`,`remark`,`createuserid`,`createtime`) values (4,'topmanager','总经理',1,'2017-12-11 12:20:10');
insert  into `role`(`roleid`,`rolename`,`remark`,`createuserid`,`createtime`) values (5,'financialexe','财务主管',1,'2017-12-11 14:38:43');
insert  into `role`(`roleid`,`rolename`,`remark`,`createuserid`,`createtime`) values (6,'manager','通用角色,经理主管级别',1,'2017-12-11 12:36:05');
insert  into `role`(`roleid`,`rolename`,`remark`,`createuserid`,`createtime`) values (7,'employee','普通员工,',1,'2017-12-11 14:22:22');
insert  into `role`(`roleid`,`rolename`,`remark`,`createuserid`,`createtime`) values (9,'111','111',1,'2018-01-04 16:17:52');
insert  into `role`(`roleid`,`rolename`,`remark`,`createuserid`,`createtime`) values (12,'haha','haha sha',123,'2017-12-12 21:04:33');
insert  into `role`(`roleid`,`rolename`,`remark`,`createuserid`,`createtime`) values (13,'xixi','xixisha',123,'2017-12-12 21:07:45');
insert  into `role`(`roleid`,`rolename`,`remark`,`createuserid`,`createtime`) values (14,'baoan','baoweililiang ',123,'2017-12-12 21:31:30');
insert  into `role`(`roleid`,`rolename`,`remark`,`createuserid`,`createtime`) values (15,'aaaaaaaaa','aaaaaaa',123,'2017-12-12 22:07:43');

/*Table structure for table `role_menu` */

DROP TABLE IF EXISTS `role_menu`;

CREATE TABLE `role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `roleid` int(11) NOT NULL DEFAULT '1' COMMENT '角色id',
  `menuid` int(11) NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=328 DEFAULT CHARSET=utf8;

/*Data for the table `role_menu` */

insert  into `role_menu`(`id`,`roleid`,`menuid`) values (236,1,36);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (235,1,35);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (234,1,34);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (233,1,33);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (232,1,7);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (231,1,32);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (230,1,31);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (229,1,30);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (228,1,29);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (227,1,28);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (226,1,27);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (225,1,6);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (224,1,26);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (223,1,25);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (222,1,24);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (221,1,23);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (220,1,22);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (219,1,21);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (218,1,5);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (217,1,20);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (216,1,19);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (215,1,18);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (214,1,17);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (213,1,16);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (212,1,15);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (211,1,4);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (210,1,3);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (327,15,36);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (326,15,35);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (325,15,34);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (324,15,33);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (323,15,7);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (322,15,32);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (321,15,31);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (320,15,30);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (319,15,29);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (318,15,28);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (317,15,27);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (316,15,6);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (315,15,26);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (314,15,25);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (313,15,24);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (312,15,23);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (311,15,22);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (310,15,21);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (309,15,5);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (308,15,20);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (307,15,19);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (306,15,18);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (305,15,17);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (304,15,16);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (303,15,15);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (302,15,4);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (301,15,3);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (300,14,14);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (299,14,13);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (298,14,2);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (297,14,8);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (296,13,12);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (295,13,11);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (294,13,10);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (293,13,9);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (292,13,1);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (291,13,8);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (97,5,8);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (98,5,1);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (99,5,9);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (100,5,10);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (101,4,3);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (102,4,4);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (103,4,15);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (104,4,16);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (105,4,17);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (106,4,18);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (107,4,19);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (108,4,20);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (109,10,3);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (110,10,4);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (111,10,15);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (112,10,16);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (113,10,17);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (114,10,18);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (115,10,19);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (116,10,20);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (117,11,3);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (118,11,4);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (119,11,15);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (120,11,16);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (121,11,17);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (122,11,18);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (123,11,19);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (124,11,20);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (125,11,5);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (126,11,21);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (127,11,22);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (128,11,23);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (129,11,24);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (130,11,25);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (131,11,26);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (132,11,6);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (133,11,27);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (134,11,28);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (135,11,29);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (136,11,30);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (137,11,31);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (138,11,32);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (139,11,7);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (140,11,33);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (141,11,34);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (142,11,35);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (143,11,36);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (144,6,8);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (145,6,1);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (146,6,9);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (147,6,10);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (148,6,11);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (149,6,12);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (150,6,2);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (151,6,13);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (152,6,14);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (182,9,13);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (181,9,2);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (180,9,11);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (179,9,1);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (178,9,8);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(55) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL,
  `email` varchar(55) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 0 禁用 1正常 默认1',
  `createuserid` int(11) NOT NULL COMMENT '创建者id',
  `mobile` varchar(11) DEFAULT NULL,
  `createtime` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`userid`,`username`,`password`,`email`,`status`,`createuserid`,`mobile`,`createtime`) values (1,'123','9c3b5c0672cd599ccf1019bddaa8089b','464',1,1,'17703548195','2017-11-15');
insert  into `user`(`userid`,`username`,`password`,`email`,`status`,`createuserid`,`mobile`,`createtime`) values (2,'abc','c1b78dca784fff2a7db1fd3f0b5a3b2c','21341241',1,1,'17703548195','2017-12-29');
insert  into `user`(`userid`,`username`,`password`,`email`,`status`,`createuserid`,`mobile`,`createtime`) values (4,'asd','8523dd698141c9d2c943ebf2b77c4e7f','232',1,1,'2341513','2017-12-07');
insert  into `user`(`userid`,`username`,`password`,`email`,`status`,`createuserid`,`mobile`,`createtime`) values (3,'qwe','1eab0552b4dfc365cdc1fa8d8be10179','2123',1,1,'2144','2017-12-13');
insert  into `user`(`userid`,`username`,`password`,`email`,`status`,`createuserid`,`mobile`,`createtime`) values (5,'zxc','32bbab3913e871b97ee23ca58077d5b1','2345424543',1,1,'546547','2017-12-20');
insert  into `user`(`userid`,`username`,`password`,`email`,`status`,`createuserid`,`mobile`,`createtime`) values (10,'111','111','111',1,1,'111','2017-12-14');
insert  into `user`(`userid`,`username`,`password`,`email`,`status`,`createuserid`,`mobile`,`createtime`) values (11,'zzz','zzz','zzz',1,1,'zzz','2017-12-12');
insert  into `user`(`userid`,`username`,`password`,`email`,`status`,`createuserid`,`mobile`,`createtime`) values (12,'aaa','aaa','aaa',0,1,'aaa','2017-12-12');
insert  into `user`(`userid`,`username`,`password`,`email`,`status`,`createuserid`,`mobile`,`createtime`) values (13,'bbb','bbb','bbb',1,1,'bbb','2017-12-12');
insert  into `user`(`userid`,`username`,`password`,`email`,`status`,`createuserid`,`mobile`,`createtime`) values (15,'qq','qq','qq',0,1,'qq','2017-12-12');
insert  into `user`(`userid`,`username`,`password`,`email`,`status`,`createuserid`,`mobile`,`createtime`) values (16,'aaa','aaa','aaa',0,1,'aaa','2017-12-12');
insert  into `user`(`userid`,`username`,`password`,`email`,`status`,`createuserid`,`mobile`,`createtime`) values (17,'ss','415c8165505270cd2fb815ec5663c73e','ss',0,1,'ss','2017-12-12');
insert  into `user`(`userid`,`username`,`password`,`email`,`status`,`createuserid`,`mobile`,`createtime`) values (18,'b','a91bbfa0bc81db464eb0db7ee35a6fc3','b',1,1,'b','2017-12-12');
insert  into `user`(`userid`,`username`,`password`,`email`,`status`,`createuserid`,`mobile`,`createtime`) values (19,'ff','7d000d3973106939ffd20aa770a54413','ff',0,1,'ff','2017-12-12');
insert  into `user`(`userid`,`username`,`password`,`email`,`status`,`createuserid`,`mobile`,`createtime`) values (20,'1','a38b872c85e9096dd2d97b5dbe482861','1',0,1,'1','2017-12-12');

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `roleid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

/*Data for the table `user_role` */

insert  into `user_role`(`id`,`userid`,`roleid`) values (1,1,1);
insert  into `user_role`(`id`,`userid`,`roleid`) values (2,2,2);
insert  into `user_role`(`id`,`userid`,`roleid`) values (3,3,6);
insert  into `user_role`(`id`,`userid`,`roleid`) values (4,4,6);
insert  into `user_role`(`id`,`userid`,`roleid`) values (5,5,6);
insert  into `user_role`(`id`,`userid`,`roleid`) values (6,2,7);
insert  into `user_role`(`id`,`userid`,`roleid`) values (38,15,7);
insert  into `user_role`(`id`,`userid`,`roleid`) values (37,15,6);
insert  into `user_role`(`id`,`userid`,`roleid`) values (36,15,4);
insert  into `user_role`(`id`,`userid`,`roleid`) values (35,15,3);
insert  into `user_role`(`id`,`userid`,`roleid`) values (34,15,2);
insert  into `user_role`(`id`,`userid`,`roleid`) values (32,13,7);
insert  into `user_role`(`id`,`userid`,`roleid`) values (33,13,9);
insert  into `user_role`(`id`,`userid`,`roleid`) values (39,15,9);
insert  into `user_role`(`id`,`userid`,`roleid`) values (40,18,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
