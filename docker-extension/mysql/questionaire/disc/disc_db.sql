-- MySQL dump 10.13  Distrib 5.7.14, for osx10.11 (x86_64)
--
-- Host: localhost    Database: disc
-- ------------------------------------------------------
-- Server version	5.7.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chenshi_ans_dim_mapping`
--

DROP TABLE IF EXISTS `chenshi_ans_dim_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chenshi_ans_dim_mapping` (
  `is_positive` bit(1) DEFAULT NULL,
  `idx` int(11) DEFAULT NULL,
  `dim1` char(2) DEFAULT NULL,
  `dim2` char(2) DEFAULT NULL,
  `dim3` char(2) DEFAULT NULL,
  `dim4` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chenshi_ans_dim_mapping`
--

LOCK TABLES `chenshi_ans_dim_mapping` WRITE;
/*!40000 ALTER TABLE `chenshi_ans_dim_mapping` DISABLE KEYS */;
INSERT INTO `chenshi_ans_dim_mapping` VALUES ('',1,'S','I','C','N'),('',2,'I','C','D','N'),('',3,'N','D','S','I'),('',4,'C','S','N','I'),('',5,'N','C','N','S'),('',6,'D','S','N','N'),('',7,'N','S','D','I'),('',8,'D','I','N','N'),('',9,'I','S','D','C'),('',10,'D','C','N','S'),('',11,'I','S','N','D'),('',12,'N','D','C','S'),('',13,'D','I','S','N'),('',14,'C','D','I','S'),('',15,'S','N','C','N'),('',16,'I','N','N','D'),('',17,'C','S','N','D'),('',18,'I','S','N','D'),('',19,'C','D','I','S'),('',20,'D','C','N','I'),('',21,'S','N','D','C'),('',22,'I','N','D','S'),('',23,'I','C','D','N'),('',24,'D','S','I','C'),('\0',1,'S','N','C','D'),('\0',2,'I','C','D','S'),('\0',3,'C','D','N','I'),('\0',4,'N','S','D','I'),('\0',5,'I','C','D','S'),('\0',6,'D','S','I','C'),('\0',7,'C','N','D','I'),('\0',8,'N','N','S','C'),('\0',9,'I','S','D','N'),('\0',10,'D','N','I','S'),('\0',11,'I','S','C','D'),('\0',12,'I','D','N','S'),('\0',13,'N','I','S','C'),('\0',14,'C','N','I','N'),('\0',15,'N','N','C','D'),('\0',16,'N','S','C','D'),('\0',17,'N','S','I','D'),('\0',18,'N','N','C','D'),('\0',19,'N','D','I','S'),('\0',20,'D','N','S','I'),('\0',21,'I','S','D','C'),('\0',22,'I','C','D','S'),('\0',23,'I','N','D','S'),('\0',24,'D','S','I','C');
/*!40000 ALTER TABLE `chenshi_ans_dim_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chenshi_count_score_mapping`
--

DROP TABLE IF EXISTS `chenshi_count_score_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chenshi_count_score_mapping` (
  `dimension` varchar(4) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `raw_score` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chenshi_count_score_mapping`
--

LOCK TABLES `chenshi_count_score_mapping` WRITE;
/*!40000 ALTER TABLE `chenshi_count_score_mapping` DISABLE KEYS */;
INSERT INTO `chenshi_count_score_mapping` VALUES ('D',20,7.20),('D',19,7.05),('D',18,6.90),('D',17,6.75),('D',16,6.60),('D',15,6.05),('D',14,5.45),('D',13,4.85),('D',12,4.25),('D',11,3.97),('D',10,3.70),('D',9,3.10),('D',8,2.50),('D',7,1.95),('D',6,1.65),('D',5,1.35),('D',4,1.05),('D',3,0.75),('D',2,0.47),('D',1,0.20),('D',0,-0.70),('D',-1,-0.97),('D',-2,-1.25),('D',-3,-1.80),('D',-4,-2.35),('D',-5,-2.62),('D',-6,-2.90),('D',-7,-3.40),('D',-8,-3.67),('D',-9,-3.95),('D',-10,-4.50),('D',-11,-5.00),('D',-12,-5.27),('D',-13,-5.55),('D',-14,-6.20),('D',-15,-6.29),('D',-16,-6.38),('D',-17,-6.47),('D',-18,-6.56),('D',-19,-6.66),('D',-20,-6.75),('D',-21,-6.85),('I',17,7.00),('I',16,6.93),('I',15,6.87),('I',14,6.81),('I',13,6.75),('I',12,6.68),('I',11,6.62),('I',10,6.56),('I',9,6.50),('I',8,6.00),('I',7,4.90),('I',6,4.30),('I',5,3.75),('I',4,3.15),('I',3,2.55),('I',2,1.95),('I',1,1.40),('I',0,0.25),('I',-1,-0.60),('I',-2,-1.20),('I',-3,-1.80),('I',-4,-2.40),('I',-5,-2.95),('I',-6,-3.55),('I',-7,-4.10),('I',-8,-4.70),('I',-9,-5.30),('I',-10,-6.05),('I',-11,-6.13),('I',-12,-6.21),('I',-13,-6.29),('I',-14,-6.37),('I',-15,-6.45),('I',-16,-6.54),('I',-17,-6.63),('I',-18,-6.71),('I',-19,-6.80),('S',19,7.00),('S',18,6.93),('S',17,6.87),('S',16,6.81),('S',15,6.75),('S',14,6.68),('S',13,6.62),('S',12,6.56),('S',11,6.50),('S',10,6.00),('S',9,5.00),('S',8,4.50),('S',7,4.00),('S',6,3.75),('S',5,3.50),('S',4,3.00),('S',3,2.50),('S',2,2.00),('S',1,1.50),('S',0,1.00),('S',-1,0.45),('S',-2,-0.60),('S',-3,-1.15),('S',-4,-1.75),('S',-5,-2.30),('S',-6,-2.90),('S',-7,-3.45),('S',-8,-4.00),('S',-9,-4.60),('S',-10,-5.15),('S',-11,-5.70),('S',-12,-6.25),('S',-13,-6.32),('S',-14,-6.40),('S',-15,-6.48),('S',-16,-6.55),('S',-17,-6.63),('S',-18,-6.71),('S',-19,-6.80),('C',15,7.00),('C',14,6.93),('C',13,6.87),('C',12,6.81),('C',11,6.75),('C',10,6.68),('C',9,6.62),('C',8,6.56),('C',7,6.50),('C',6,6.00),('C',5,5.00),('C',4,4.50),('C',3,4.00),('C',2,3.45),('C',1,2.50),('C',0,2.00),('C',-1,1.95),('C',-2,0.45),('C',-3,-0.50),('C',-4,-1.05),('C',-5,-1.55),('C',-6,-2.05),('C',-7,-3.05),('C',-8,-3.55),('C',-9,-4.05),('C',-10,-4.70),('C',-11,-5.30),('C',-12,-6.05),('C',-13,-6.25),('C',-14,-6.45),('C',-15,-6.65),('C',-16,-6.85);
/*!40000 ALTER TABLE `chenshi_count_score_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chenshi_questions`
--

DROP TABLE IF EXISTS `chenshi_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chenshi_questions` (
  `question_number` int(11) DEFAULT NULL,
  `question_content` varchar(100) DEFAULT NULL,
  `line_number` int(11) DEFAULT NULL,
  `line_content` varchar(100) DEFAULT NULL,
  `most` char(2) DEFAULT NULL,
  `least` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chenshi_questions`
--

LOCK TABLES `chenshi_questions` WRITE;
/*!40000 ALTER TABLE `chenshi_questions` DISABLE KEYS */;
INSERT INTO `chenshi_questions` VALUES (1,'第1题',1,'同情他人','A','E'),(1,'第1题',2,'说服他人认同自己的观点','B','F'),(1,'第1题',3,'讲述自我成就时表现谦虚','C','G'),(1,'第1题',4,'提出有创新的想法','D','H'),(2,'第2题',1,'引人注意','A','E'),(2,'第2题',2,'与人合作以达成目标','B','F'),(2,'第2题',3,'为自己的权利挺身而出','C','G'),(2,'第2题',4,'与人交往时显得随和','D','H'),(3,'第3题',1,'知道在何时该承认失败','A','E'),(3,'第3题',2,'尝试新经验','B','F'),(3,'第3题',3,'对朋友忠诚','C','G'),(3,'第3题',4,'在别人眼中是有趣的人','D','H'),(4,'第4题',1,'以开明的态度倾听新观念','A','E'),(4,'第4题',2,'随时愿意为他人牺牲','B','F'),(4,'第4题',3,'有达成目标的决心','C','G'),(4,'第4题',4,'关注自己在他人面前的表现','D','H'),(5,'第5题',1,'别人喜欢有我为伴','A','E'),(5,'第5题',2,'竭力完成精确的细节','B','F'),(5,'第5题',3,'会为自己的看法和意见辩护','C','G'),(5,'第5题',4,'保持冷静与温和','D','H'),(6,'第6题',1,'保持竞争优势','A','E'),(6,'第6题',2,'愿花时间考虑他人的需求','B','F'),(6,'第6题',3,'对人生持乐观的态度','C','G'),(6,'第6题',4,'尽量与他人保持友好关系','D','H'),(7,'第7题',1,'在必要时做精确的解说','A','E'),(7,'第7题',2,'始终遵守规定','B','F'),(7,'第7题',3,'能掌握自己的人生','C','G'),(7,'第7题',4,'做任何事皆能从中找到乐趣','D','H'),(8,'第8题',1,'必要时随时可以冒险','A','E'),(8,'第8题',2,'能以鼓舞的方式与人沟通','B','F'),(8,'第8题',3,'接受现实','C','G'),(8,'第8题',4,'乐于维持现状','D','H'),(9,'第9题',1,'喜欢与他人相处','A','E'),(9,'第9题',2,'接受他人的错误','B','F'),(9,'第9题',3,'对自己的能力有把握','C','G'),(9,'第9题',4,'避免正面冲突的场面','D','H'),(10,'第10题',1,'善于把握机会','A','E'),(10,'第10题',2,'愿意接受新观念','B','F'),(10,'第10题',3,'尽可能表现友善真诚','C','G'),(10,'第10题',4,'有自制力','D','H'),(11,'第11题',1,'善于向他人表达想法','A','E'),(11,'第11题',2,'保持自律','B','F'),(11,'第11题',3,'尽可能遵循传统','C','G'),(11,'第11题',4,'坚持自己所做的决定','D','H'),(12,'第12题',1,'呈现专业的形象','A','E'),(12,'第12题',2,'不害怕冒犯他人','B','F'),(12,'第12题',3,'尽可能避免伤人','C','G'),(12,'第12题',4,'乐在工作','D','H'),(13,'第13题',1,'情势需要时可掌控全局','A','E'),(13,'第13题',2,'众人注目的焦点','B','F'),(13,'第13题',3,'乐于助人','C','G'),(13,'第13题',4,'避免没有必要的风险','D','H'),(14,'第14题',1,'小心不出一丝差错','A','E'),(14,'第14题',2,'拒绝接受挫折','B','F'),(14,'第14题',3,'能说服别人接受自己的观点','C','G'),(14,'第14题',4,'乐于提出善意的解释','D','H'),(15,'第15题',1,'自愿帮助他人','A','E'),(15,'第15题',2,'有逻辑性','B','F'),(15,'第15题',3,'必要时愿意妥协解决问题','C','G'),(15,'第15题',4,'以积极创新的方式处理问题','D','H'),(16,'第16题',1,'期待事情有最好的结果','A','E'),(16,'第16题',2,'同情他人的困境','B','F'),(16,'第16题',3,'遭遇困境亦能保持冷静','C','G'),(16,'第16题',4,'要求高标准','D','H'),(17,'第17题',1,'维持一套自我约束的标准','A','E'),(17,'第17题',2,'愿意原谅他人','B','F'),(17,'第17题',3,'确定他人能了解你的观点','C','G'),(17,'第17题',4,'做事有始有终','D','H'),(18,'第18题',1,'说服别人遵守标准','A','E'),(18,'第18题',2,'仁慈体贴','B','F'),(18,'第18题',3,'知道在何时该接受挫败','C','G'),(18,'第18题',4,'强而有力的个性','D','H'),(19,'第19题',1,'尊重他人','A','E'),(19,'第19题',2,'愿意尝试新的问题解决方式','B','F'),(19,'第19题',3,'和他人在一起显得自信','C','G'),(19,'第19题',4,'经常会考虑他人的观点','D','H'),(20,'第20题',1,'必要时会挺身面对他人','A','E'),(20,'第20题',2,'易适应新环境','B','F'),(20,'第20题',3,'以冷静轻松的态度面对人生','C','G'),(20,'第20题',4,'营造愉悦气氛','D','H'),(21,'第21题',1,'信任别人','A','E'),(21,'第21题',2,'对自己在生命中的角色感到满意','B','F'),(21,'第21题',3,'以积极的态度面对问题','C','G'),(21,'第21题',4,'尽量避免冲突','D','H'),(22,'第22题',1,'受人喜爱','A','E'),(22,'第22题',2,'见识广泛','B','F'),(22,'第22题',3,'充满热情与活力的面对问题','C','G'),(22,'第22题',4,'能接受他人的失误','D','H'),(23,'第23题',1,'被认为是好同伴','A','E'),(23,'第23题',2,'确定工作的正确性','B','F'),(23,'第23题',3,'坦言对自己重要的事','C','G'),(23,'第23题',4,'谨慎自制','D','H'),(24,'第24题',1,'尽量快速完成工作','A','E'),(24,'第24题',2,'态度友善','B','F'),(24,'第24题',3,'交友广泛','C','G'),(24,'第24题',4,'处理问题有条不紊','D','H');
/*!40000 ALTER TABLE `chenshi_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chenshi_result_comment`
--

DROP TABLE IF EXISTS `chenshi_result_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chenshi_result_comment` (
  `tp` varchar(20) DEFAULT NULL,
  `tp_name` varchar(40) DEFAULT NULL,
  `work_style` varchar(300) DEFAULT NULL,
  `leader_style` varchar(300) DEFAULT NULL,
  `team_style` varchar(300) DEFAULT NULL,
  `environment` varchar(300) DEFAULT NULL,
  `limitations` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chenshi_result_comment`
--

LOCK TABLES `chenshi_result_comment` WRITE;
/*!40000 ALTER TABLE `chenshi_result_comment` DISABLE KEYS */;
INSERT INTO `chenshi_result_comment` VALUES ('D','创建者','通常关注成就与结果，直接，果断，能量充沛，行为独特，非常追求新挑战与新机遇。具有很强的自我力量，喜欢刺激，常常投入到不经深思的冒险中。具有很强的成就欲望，深具抱负心并富有竞争力。为了达成目的，会给人和环境提出要求。','能够勾画“蓝图”并充满激情地去推进实施。最怕受到控制与利用，在压力下可能会显得非常直率而缺乏沟通艺术。通常不会过多关注人际关系与情感需求。对于他人来说，会发现很难去打破其天生谨慎、怀疑的表象。','非常典型的高“支配”特征，通常被形容为“独断”。这是一种非常典型的结合了“独断”与“制约”两种特点的行为特征，因为并没有其他第二个因素给予平衡。单纯的“支配”特征使其容易表现出盛气凌人，甚至专横的态度。','比起需要紧密关系结合的工作情境来说，更适合于结构化的、正式的工作情境。由于非常自信且具有竞争力，及时在信息缺乏的情势下，仍然能够迅速做出决策并实施计划。即使在他人看来极度困难的任务，也可能做得“如鱼得水”。','强烈的支配行为特征，有时候可能显得过于武断权威；好争论，或过于盛气凌人；不喜欢常规，喜欢冒险甚至可能行动过急。'),('DI','总结者','通常具有非常明确的工作目标，并能信心坚定地去达成这些目标。勇于接受挑战，也激励他人。是非常强烈的个人主义者，富于梦想，能量充沛又直接主动。很容易发脾气，尤其是感受到被超越时，因此总是不断向前。因为是典型的任务取向者，看上去可能会显得冷酷或迟钝。','无论在个人权力还是社会影响方面，都追求维持自己的“控制”与“支配”，喜欢被真正地予以尊重。对自己和周围的人都有较高的标准，对他人很有影响力，能激励他人去实现目标。容易表现出非常独断支配的一面，但根据情境要求的不同，也能体现出直接的和社会化的行为表象。','社会交际与说服沟通的能力非常强，通常极具个人魅力；但是在面临压力或困难的情况下，倾向于采取一种更加直接、专横的表达方式。这种外向且行动快速的风格有时可能让他人受不了；尤其是当其感觉无所畏惧的时候，更加倾向于毫无顾忌地表达的观点，而不是采取某种委婉间接的方式。','“挑战”是对其适合环境的最好描述。在别人感觉有压力或困难的情境下却能够倍受激励。乐意为了成功与获得赞誉承担几乎任何的工作，这种风格很难在其他类型的人中被发现。非常适合承担销售类型的工作，思考行动迅速，愿意直面挑战，并且可以利用自己独断与说服能力去激励他人接受某个方案或产品，是非常有说服力的谈判者。','可能因为其外向的态度会显得富有攻击性，易发怒，耐不住性子；很可能会显得尖刻、固执己见、“说风就是雨”。'),('DIS','主导者','独立自主，需要行动自由，且行动快速敏捷，对于生活有着明确的目标与意志。对于目标的达成将采取踏实、谨慎的态度。通常具有社交与开放的一面，但是在压力情境下或困境中，其内在的坚持与紧迫性将随之呈现。','通常具有先见之明，而且善于社交，所以有惊人的驱动力。精力充沛，又善于交往，能激励他人伴随任务前进。能坚定地让他人接受自己的想法。可能会经常遭遇冲突，但却毫不屈服。往往有宏观性的目标，却可能忽视细节。','在团队中采用开放社交的态度。平易近人，在一般场合下都能应付自如。通常竭尽全力去维持自我的独立意识、形象与观点。','善于承担需要主动发起或主导的任务或项目，这个能力通常在其他类型的人中很少见。极具责任感，内在强烈的独立意识促使其深具效率。做事的耐心与对目标的执着，确保了结果达成；与此同时，也能在达成最后决策前，考虑他人的建议或其他选择。','因为其外向的态度会显得富有攻击性，易发怒，耐不住性子；很可能会显得尖刻、固执己见、“说风就是雨”。'),('DIC','守法者','生性喜欢人，但这并不意味着顺从。是非常社会性的个体，但也关注具体细节。希望事情顺理成章，也可能会独自完成项目以确保准确。可能会因缺乏深思熟虑而鲁莽行事，但是却很少犹豫不决。始终被最终结果所激励，希望快速实现结果。自我控制力强且具有抱负心，但是在一些非正式场合，或其所熟悉的情境中，也会表现出一定的社交行为特征。','通常精力充沛，善于关注他人并推动任务完成，非常强调“速度”与“紧迫感”。其行为特征深深根植于动态与急迫的态度中。区别于其他类似的外向行为特征的个体是，仍然保持有相当程度的“次序感”与“同理心”。','团队风格会随情境的不同而变化。在熟悉的、非正式的场合中，会展现出友好、平易近人的态度；通常来说开放且富有热情。如果情境相对正式或规章制度比较严格，更多显示出一种直接、坚定的态度，积极主动、果断、自控，其社交友好的一面通常被隐藏。在压力下甚至可能采取尖刻、生硬的态度。','可以根据情境要求的不同，展现出热情开放的一面，或者直接果断的一面。从管理者的角度出发，可以基于工作的要求，主动将这种行为类型的个体进行适当的环境匹配，以求获得更好的绩效表现。','因为其外向的态度会显得富有攻击性，易发怒，耐不住性子；很可能会显得尖刻、固执己见、“说风就是雨”。'),('DS','达成者','具有坚定的信念，富于客观性，而且善于分析，显示出专注与实用的风格，所以在很多事情上会成功。其动力来自于内在而不是外在。对待工作或任务有始有终，通常一心一意直到达成目标。虽希望尽量在合理的时间段内完成所赋予的任务，但仍然能关注前期规划。','其行为特征结合了“支配”与“稳健”这两个看起来对立的行为特征因素。平静、沉着以及任务导向的特点使其能够成为好的领导。因其对于目标专心一致的努力工作，也激发他人为了共同的目标而努力。但有时过于关注任务而忽略了他人的感受，这使其可能看起来缺少人情味。','可以非常独立，但也会喜欢合作，可能是外向性格人群中最顺从的人。一方面，高“支配”性代表了制约以及怀疑，倾向于内敛保留；另一方面，高“稳健”性代表了开放的个性，喜欢维持一种融洽与互信的关系。通常表现出冷静、沉着、客观的一面；但如果能够感觉到轻松与自在的氛围，也将显示出其平易近人、友好的一面。','由于有极度的韧性与决断力，一旦确定目标，必有始有终，无论怎样的反对和抵制。能够在充满多样性问题和意外干扰，且存在限期完成工作的压力的情境中较好的完成任务。','通常低调，不轻易改变自己的态度或方向；相比较其他“支配”因子明显的人，显得更加不确定，或“焦虑”。在符合其性格特征的情境下，会更多地显示出谨慎、深思熟虑的一面；而在压力的情境下，则会显示出急迫与苛求的一面。'),('DC','挑战者','有完美注意倾向，追求精准与精确。通常善于创造性地思考问题。因为善于解决问题，所以能够在很短时间内完成重大任务。习惯于克制情绪，避免情绪变化对工作的影响。','总是要求成就与效率，同时又非常关注细节与精确性。例如，观察并指出他人的错误或疏漏，有时候会显得过于吹毛求疵。正是这种“效率”与“精确”的组合，再加上一点强硬的态度，使其具备细致思考与果断型领导的特征。','喜欢独自工作，讨厌受到限制。任务导向，更看重行为结果，而不是人际关系。常以怀疑的态度审视事与物，带有强硬色彩与生硬态度的风格，从不畏惧直接发表自己的观点或看法。在处理人际关系与情感方面，大概是最不在行的。通常比较独立、甚至显得与世隔绝，一般倾向于保留自己的意见。当与人的交流沟通非常重要时，倾向于采取简短、直接且实际的方式。','勤奋且富有能力，是乐观与信念的结合体，因此在面对困难任务时，显得非常有效率。','喜欢直面冲突，有时显得顽固且尖刻；常有敌意的表现，其任务导向的态度使其不会过多考虑他人情感的因素。'),('I','沟通者','通常充满热情和乐观，有着显著超于常人的交流技巧，善于通过影响他人来实现目标。喜欢在人群中，因此不喜欢独自工作。喜欢被社会所承认，害怕不被接受。通常精力充沛，但是在实际工作中却可能会粗心并缺乏组织性。','信任他人，深具说服力且健谈；对待生活或工作充满乐观，善于传递思想与观念，并影响他人。善于鼓励他人，是优秀的说服者，完全以人际关系为导向。也可以适应不同的情境要求，尝试去理解他人的观点与建议。','带有典型的“影响”特征，在没有其他行为因子的平衡下，将展现出乐群、外向、善于交流的行为风格。通常很容易与他人建立关系并侃侃而谈。重视互动与交流，并期望与他人建立积极正面的关系。乐于鼓励别人，但有时候却会发展为奉承。','在社交能力方面表现突出。周围的人往往会被那种明显的自信，以及对于他人表现出的热情与互动所吸引并被打动，因此适合在士气比较低落的环境中工作，鼓舞团队士气，或从事销售和宣传类的工作。','可能过于关注大众或人际的关系而忽略了实际结果的重要性；可能不重视细节，而只是空喊方向；因为其活跃的性格，很可能不能仔细聆听。'),('ID','劝说者','具有非常明确的工作或生活目标，并且信心坚定地去达成这些目标。通常以一种友好的方式工作，但却会为了目标而努力超过他人并突出自己的观点。经常被认为是自负的，既重视权威也要威望，喜欢有变化性的富有挑战的工作，但是也可能因为忙碌而紧张。','通常会表现出非常独断支配的一面。无论在个人权力还是社会影响方面，都追求维持自己的“控制”与“支配”，喜欢被真正地予以尊重，也能获得不同类型人的尊重与钦佩。','有非常强的社会交际与说服沟通的能力，极具个人魅力；通常喜欢社交，对人特别感兴趣，当面临压力或困难的情况下，倾向于采取一种更加直接、专横的做法。这种外向且行动快速的风格有时可能让他人受不了；尤其是当感觉无所畏惧的时候，更加倾向于毫无顾忌地表达的观点，而不是采取委婉间接的方式。','适合富有“挑战”性的工作。在他人可能感觉压力或困难的情境下，却能够倍受激励。通常乐意为了成功与获得赞誉承担几乎任何的工作，这种风格很难在其他行为类型中被发现。非常适合承担销售类型的工作，思考行动迅速，愿意直面挑战，可以利用独断与说服能力去激励他人接受某个方案或产品。','很可能说得多而做得少，因为说得多也很易于暴露其弱点；在压力下，会显示出其刻薄无理的一面。'),('IDS','变革者','对于生活有着明确的目标与意志。非常投入地去完成工作，同时对自己的局限也了如指掌，知道在必要的时候寻求帮助。对于目标的达成采取踏实、谨慎的态度。通常具有社交与开放的一面，但是在压力情境下或困境中，其内在的坚持与紧迫性将随之呈现。','平易近人，渴望被欢迎与被承认，同时具有“影响”因子的人格魅力与“支配”因子的果断性。','通常善于社交，亲切友善，容易相信他人，喜欢改变环境并成为领导者。会不停地工作、社交，喜欢在团队中起带头的作用，并能通过较好的社交技巧实现目标。','能承担主动发起或主导的任务或项目，这个能力通常在其他类型的人中很少见。极具个人责任感，内在强烈的独立意识促使其深具效率。做事的耐心与对目标的执着，确保可以达成结果。与此同时，也能在达成最后决策前，考虑他人的建议或其他选择。','很可能说得多而做得少，因为说得多也很易于暴露其弱点；在压力下，会显示出其刻薄无理的一面。'),('IDC','领导者','非常重视任务完成，追求目标的良好实现，希望结果准确，因此在压力下会倾向表现出盛气凌人和攻击性。自我控制能力强，有抱负心。具有良好的沟通技巧，但可能需要培养聆听的技能。','友好和善，喜欢被人簇拥，善于将人们集合起来形成团队或组织，强调“速度”与“紧迫感”，但“稳健”因素表现较低，其行为特征深深根植于动态与急迫的态度中。但同时保持有相当程度的“次序感”与“同理心”，这使得其不会显得那么冲动、武断。','通常来说开放且富有热情。在人际的交流沟通方面，其风格通常随情境的不同而变化。在熟悉的，或非正式的场合中，会展现出友好、平易近人的态度；如果情境相对正式或规章制度比较严格，会更多显示出一种直接、坚定的态度，果断且自控，其社交友好的一面往往被隐藏；在压力情景下，将更多地展示出其积极主动的一面，甚至可能采取尖刻、生硬的态度。','其能力特征是可以基于情境变化的。可以根据情境的要求不同，展现出热情开放的一面，或者直接果断的一面。从管理者的角度出发，可以基于工作的要求，主动进行适当的环境匹配，以求获得更好的绩效表现。','很可能说得多而做得少，因为说得多也很易于暴露其弱点；在压力下，会显示出其刻薄无理的一面。'),('IS','建议者','具有较好的沟通与理解能力。“影响”与“稳健”因子相互平衡，可以满足其很好地充当“支持”者的角色。相比较纯粹的“稳健”者来说，较少关注实用性，显得少许“浮”了一点。','倾向于以情感为载体与他人进行互动。通常深具说服力，但是，其“稳健”的行为因子也预示着如果情境需要，也可以采取相对被动开放的姿态，以倾听或尝试接受他人的建议，而不会将自己的想法强加于人。','平易近人、热情且友善，善于倾听也乐于随时提供帮助。是团队合作的最佳人选；乐于助人，且善于倾听理解。在人际互动中，其交流沟通能力可能是最出色的，能够很轻易地融入团队，是天生的团队参与者。面对冲突是容易采取回避妥协的办法。','善于关怀，同情和理解身边的人，是很好的倾听者，极富人情味的朋友，通常在平和的环境里表现最出色，而在需要互动与说服的情境下也能自如应对。总体来说，在大多数社会情境里都能找到平衡。','很可能缺少“持久性”；也可能是缺乏自我约束与纪律的；喜欢社交更甚于实际的工作，因此本身对于无效率也会采取容忍的态度。'),('ISC','管理者','通常精力充沛，非常在意自己的工作质量，期望得到赞誉，但不是很有抱负。具有高超的沟通技巧，善于关怀和体察他人，不会“武断”或“固执”。通过自身的说服能力以及理性化的表达，总是可以达成自己的目的。害怕被拒绝、批评和失去安全感，所以可能会过多地在意他人的想法。','通常被看作是低“支配”欲望者，但这并不表示缺乏领导能力；希望成为团队的一员，一旦权威被确认，就有能力成为支配式的领导者。','倾向于与他人建立良好持久的关系，是团队合作的好人选。通常能够很好地与他人合作，并关注他人意见的表达。其三个显著因子都传递着“沟通”的信息。“影响”代表着外向友好的态度；“稳健”代表着耐心并乐于倾听；而“服从”则 代表着总是可以理性地看待问题，提出令人信服且合情合理的建议。','在工作环境要求不断变化的环境中，能够积极地影响和有效调动各种不同的人。在销售某个产品或推广某些理念的时候，能让别人心悦诚服的接受。','很可能缺少“持久性”；也可能是缺乏自我约束与纪律的；喜欢社交更甚于实际的工作，本身对于无效率也会采取容忍的态度。'),('IC','评估者','喜欢评价，关注细节，富有创意。对所要完成的任务总是表现出极大的热爱与乐观，而这也影响了周围的人。对于事物的热爱总是基于对目标达成的评价上。在轻松的、自然的或自己所熟悉的情境下会表现的活跃、兴奋与外向冲动，在正式与结构化要求较高的情境下会表现的精确、细致与循规蹈矩。','会利用特定的关注去观察和鉴赏他人的工作，以促使公开交流渠道的形成，习惯于用任务的完成来鼓励其他人。','通常善于观察细节，包括人的独特价值。在人际的交流沟通方面，其行为模式通常依赖于不同的情境。在非正式的场合，通常表现为自信与外向；在正式的工作、商业场合，或者在压力的气氛下（例如面试、谈判），其自信外向的一面可能会被一种更加内敛谨慎的态度所取代。','在需要自己承担一个有争议的职位或采取这样的“立场”是表现出色，与人交往的情境中要求在没有可以参考的协议或惯例的情况下调动和影响别人。','有可能是一个梦想主义者，一旦无法达成理想，反而会自我否定；有时候会被轻易激怒而显得过于尖酸刻薄。'),('S','规划者','通常耐心，循规蹈矩。在行为上持续可靠，对待任务和工作耐心稳健直到完成。正因为如此，也更善于处理纷繁复杂的琐事。需要时间来适应变化，不愿意抛弃“老一套”，更喜欢循序渐进的改变。一旦下定决心，就会坚持到底，甚至会非常顽固。','忠诚可靠，值得信赖，天生性格内敛，通常需要依靠他人指点与领导。一旦成为领导会非常重视事前制定周详的计划和标准的流程，善于自我控制并谦恭有礼，能兼顾工作与人际关系，在工作和生活各个方面给与别人关心和帮助。','生性稳定，喜欢保持周围人际关系的稳定性。期待他人能够主动发起互动的要求，善于维持一段既有的人际关系，而不是去开创新的关系。喜欢帮助他人，并能与很多不同个性的人相处融洽，耐心、冷静、平易近人。深具同理心，愿意接纳他人的观点，且重视正面的人际互动，是良好的倾听者，团队活动的参与者。','希望能有充裕的时间思考问题，喜欢有计划、按部就班的进行工作，善于处理纷繁负责、细致琐碎的事务，能稳定而有保障的环境中充分发挥自己的力量。','通常拒绝改变，尤其是突变；需要较长的时间来适应变化；其个性中有好嫉妒的成分，对批评与指责很敏感；在工作上也很难确立优先的位置。'),('SD','达成者','通常冷静、沉着、客观。对待工作或任务有始有终，通常一心一意直到达成目标。尽量在合理的时 间段内完成所赋予的任务，但仍然关注前期规划。在符合其性格特征的情境下，将更多地显示出谨慎、深思熟虑的一面；而在压力的情境下，则会显示出急迫与苛求的一面。','结合了“支配”与“稳健”两种特点的人，在现实中出现这种组合的情况几率较小。通常富于客观性，而且善于分析。工作的动力来自于内在而不是外在，更关注任务却可能过于忽视考虑他人，可能看起来缺少人情味。信念坚定，在很多事情上会成功。平静、沉着以及任务导向的特点使其能够成为好的领导。','可以非常独立，但也会喜欢合作。一方面，高“支配”性代表了制约以及怀疑，倾向于内敛保留；另一方面，高“稳健”性代表了开放的个性，喜欢与他人维持一种融洽与互信的关系。通常比较冷静客观，但如果能够感觉到轻松自在的氛围，也能表现出出其平易近人、友好的一面。','是最具活力的“稳健”者；通常压力承受力良好，实事求是，但也不愿轻易冒险。能在日常工作变化不大，结构高度完善并且可以预知的情境下较好的开展工作。','有时候会显得固执，不轻易屈服；有时可能会拒绝与人合作，对于自我的个人生活也通常有所保留。'),('SCD','探索者','通常有耐性、控制力、实事求是，为达目的而坚持不懈。习惯于先分析是否能够达到目标，然后才会坚定去实施。其深思熟虑和耐性可以避免很多不必要的风险与冒失行为。强调“结果”与“效率”，喜欢与事实、复杂的程序或系统开展工作。倾向于对工作与生活都采取同样的标准，追求“效率”与“质量”并重。','目标导向，非常值得信赖。会仔细制定工作计划，充满进取心。关注于实际理性的一面而更胜于关系情感的一面。通常很难以直接表达或者展示自己的内心、情感和想法。','不会将人际关系作为关注的重点。就事论事，通常采用一种被动的态度——“你问我答”。如果外界的情境产生压力或困难，希望能更多地介入以直接影响，但仍然只是会就事论事，轻易不会涉及到个人或者情感的方面。但总体来讲体贴而谦逊有礼，虽然总是有选择性地结交朋友，可与大多数人均关系良好；必要的时候，也能够立场分明。','通常压力承受力良好，实事求是，但也不愿轻易冒险。会根据情境的不同进行自我行为的调适，压力相对较小的时候，能够以放松的状态完成工作；在对抗与困难的情境下，则能更多展示出果断与控制的行为特征以应对工作要求。','有时候会显得固执，不轻易屈服；体有可能会拒绝与他人合作，对于自我的个人生活也通常有所保留。'),('SI','建议者','其能力优势在于沟通与理解。个性稳健且对他人具有影响力，能够很好地充当“支持”者的角色。但相对于比较纯粹的“稳健”个性的人来说，较少关注实用性，而显得少许“浮”了一点。','“影响”与“稳健”都是属于人际关系导向的行为因子，非常易于被他人接近，倾向于以情感为载体与他人进行互动。婉转幽默，友善且具同情心，深具说服力，但是如果情境需要，也可以采取相对被动开放的姿态，以倾听或尝试接受他人的建议。是天生的“良师益友”或“咨询顾问”。','通常善于关怀，同情和理解身边的人，不会将自己的想法强加于人，面对冲突通常回避妥协。需要获得关注与称赞，是天生的团队参与者。在人际互动中非常出色，能够很轻易地融入社交的氛围中，行为举止妥帖适度，很容易与陌生人建立起互动。','善于在在熟悉的领域内专注干事务、观点、理念或是设备等方面的工作。如，涉及专业背景的问题解决、管理运行设备、搜集事实、或其他书记性或操作性的工作。但需要互动与说服的情境下也能自如应对。','可能缺乏自我的激励与约束性；可能为了保持安全感而缺乏主动性，害怕尝试新的事物。'),('SIC','倡导者','通常是稳定的、社交性的人，温和，而且值得信赖。不管是在工作中还是在家庭中，都会为积极的人际关系而努力。强调细节，一旦下定决心，就很难被改变。希望获得互相支持，归属感很强。善于辨证地看待问题，通常也是不错的调解者。','“支配”欲望的表现较低，友好且乐于接受他人的建议，通常不是很具抱负心。但如果职责明确并被工作情境所要求，同样可以表现出领导者要求具备的行为特征，但并不包含 “武断”与“固执”。深具同理心，通过自身的说服能力以及理性化的表达，总是可以达成目的。','倾向于与他人建立良好持久的关系，是团队合作的融合剂。通常能够很好地与他人合作，并关注他人意见的表达。其三个显著因子都传递着“沟通”的信息。“影响”代表着外向友好的态度；“稳健”代表着耐心并乐于倾听；而“服从”则代表着总是可以理性地看待问题，提出令人信服且合情合理的建议。','在比较平和稳定的工作环境中能够充分发挥自己优势，从事搜集信息等比较细致或操作性的工作。','可能缺乏自我的激励与约束性；为了避免产生不安全感，可能不具主动性且害怕尝试新的事物。'),('SC','调解者','非常敏感，不能很好地应对批评，因此对于自己的工作与任务有着极高的标准与要求，工作中一丝不苟，竭尽全力确保任务结果的高品质。理性冷静，对于事物有着自己的理解与诠释，通常保留自己的情绪与意见，除非被要求，否则很少公开自己的想法。因为需要在明确了解自己的处境后才能行动。','通常是天生的“外交家”，态度从容且行为优雅。生性和善、关心别人，可被依赖，且追求准确与次序，一般会仔细地思考问题，权衡决定对于他人的影响，基于数据与事实去影响他人。','内心非常重视友谊与人情关系，但是却往往被冷漠与内敛的表象所掩盖。一般情况下很难与他人进行互动，尤其是在不熟悉的情境下。为了能够更有效地与他人进行沟通，需要以一种更加直接与开放的态度去发起或控制人际之间的互动。','融合了精确性以及对任务有始有终的耐心态度。正因为对于质量与效率的兴趣与追求，通常具有某些特殊的专业技能与才干。能够在安全感稳定且具有复杂的系统与程序的环境中的环境中，发挥优势，从事技术工作。通常适合于类似财务、编程或者工程技术类的职业。','有可能是利己主义者；也可能在内心深处看待事物上存在负面的想法，因此显得尖刻；害怕变化与冲突。'),('C','逻辑思维者','通常是精确的，善于分析的；总是要求实事求是，严谨精确。最怕被批评，所以会会反复加工信息、分析问题，通过不懈努力以达到完美。通常具有很强的抱负与可能“不切实际”的理想，但是，由于缺乏果断性并且不愿意直面冲突场景，一般难于直接达成目的。','自我责任意识很强，且严肃认真；对人对己都采取高标准。抱负心强，实事求是，有很高的自我评价能力，但一般却很少表达出来，显得平静而沉默。','通常被动、沉默谨慎、在他人看来显得冷漠孤独。内敛的性格，加上怀疑的天性，使得其很难构建并维持一种亲密的人际关系。除非绝对必要，通常不主动与他人分享关于自己的信息或者任何想法。','由于是一个非常自立自主的人，具有非常结构性的思维模式，对于诸如组织整理信息、处理需要极其细致态度的工作、或者在非常复杂的系统中进行分析判断等情况，会显示出独特的优势。','需要明确的活动或人际的界限；很容易受到过程或方法的局限，经常会陷入细节的泥沼中；通常不善于表达情感，容易逃避妥协而不是直面问题。'),('CD','设计者','通常以任务为导向，对问题非常敏感。善于用创造性的、坚定的、分析的方式来有效解决问题，不接受“权宜之计”。希望正确地、有控制地做好每一件事，同时避免失败。通常以怀疑的态度审视事与物，除非绝对必要，轻易不会表达自己的观点或见解。常常认为自己是唯一能正确行事的人，一般不主动寻求帮助。','态度比较强硬，总是被成就与效率所激励，又非常关注细节与精确性。容易观察到并指出他人的错误或疏漏，有时候会显得过于吹毛求疵。因为擅长管理技巧，能够激发改变和进步。','坚持以任务为导向，带有强硬色彩与生硬态度的风格，从不畏惧直接发表自己的观点或看法。不会将人际的交流沟通作为待人处事的重要因素加以考虑。显得独立，甚至与世隔绝，一般倾向于保留自己的意见。在处理人际关系与情感方面，大概是最不在行的。如果与人的交流沟通是非常重要的，也倾向于简短、直接、实际的风格。','善于完成需要精确度、严谨性和关注细节的工作的，能够介绍困难任务的挑战，但倾向于避免事务上的麻烦。','可能很难被接近；对自己有着极高的要求，在行为或言语上可能体现出尖酸刻薄；通常很难释怀，容易被激怒。'),('CDS','思考者','善于分析与逻辑思考，喜欢以事实、复杂的程序或系统开展工作，倾向于对工作与生活都采取同样的标准，即追求“效率”与“质量”并重。对于自己的个人生活有着明确的目标，这种深思熟虑、耐性、关注细节的特征，可以帮助其避免不必要的风险与冒失的行为。','对自己及他人有很高的要求，沉着而值得被信赖。决策前倾向于反复评估与思考。一旦决策被执行，也会要求效率与质量并重。通常关注于实际理性的一面而更胜于关系情感的一面，因此一般很难以直接表达或者展示内心、情感或者想法。','不会将人际关系作为关注的重点，而可能仅仅就事论事，通常采用一种被动团队合作模式。如果外界的情境产生压力或困难，可能会希望更多地介入以直接影响，但是仍然只是会就事论事，轻易不会涉及到个人或者情感的方面。','是“完美主义者”与“主导者”的结合；需要给予广阔的发展空间、远大的抱负愿景和切实事务工作。对于这样的工作任务，通常可以做到充分准备和有效驾驭，并且能做到条理分明、次序井然。','可能很难让他人接近；对自己有着极高的要求，在行为或言语上可能体现出尖酸刻薄；通常很难释怀，容易被激怒。'),('CI','评估者','喜欢评价，关注细节，富有创意。对所要完成的任务总是表现出极大的热爱与乐观，而这也影响了周围的人。对于事物的热爱总是基于对目标达成的评价上。在自己所熟悉的情境下会表现得活跃、兴奋与外向冲动；而在正式与结构化要求较高的情境下会表现得精确、细致与循规蹈矩。','会利用特定的关注去观察和鉴赏他人的工作，以促使公开交流渠道的形成，习惯于用任务的完成来鼓励其他人。','通常善于观察细节，包括人的独特价值。在人际的交流沟通方面，其行为模式通常依赖于不同的情境。在非正式的场合，通常表现为自信与外向；在正式的工作、商业场合，或者在压力的气氛下（例如面试、谈判），其自信外向的一面可能会被一种更加内敛谨慎的态度所取代。','适合从事对关注细节和严谨性要求较高的工作，可以确保精确无误地达到标准。例如从事运用规则，搜集事实，检查详细规定等工作。但工作中需要避免事务上的麻烦。','情绪情感丰富，起伏较大，且有时自怜自哀；可能过度解读某些事物而显得有点苛刻；同时，还可能自我意识很弱。'),('CIS','折中者','典型的人际关系取向者，强调正确与忠诚。通常友好，热情、随意、健谈，能够很好地与他人合作，并关注他人意见的表达。不是很具抱负心，但对批评非常敏感，因为很在意自己的工作质量。','通常表现为低“支配”欲望，抱负水平不高，外向且态度友好。总是可以理性地看待问题，提出令人信服且合情合理的建议。并能通过自身的说服能力以及理性化的表达，最终达成目的。也有耐心倾听他人的意见，不会有“武断”和“固执”的表现。','主要目标就是和团队共同去完成目标，同时保持稳定和谐的环境。愿意竭尽所能去创建或维持良好的工作氛围。是团队合作的融合剂，友好且乐于接受他人的建议，倾向于与他人建立良好持久的关系。','以客观事实为导向且注重人际关系；通常压力感较低，不愿意冒险，是天生的教书育人的“良师”。','情绪情感丰富，起伏较大，且有时自怜自哀；可能过度解读某些事物而显得有点苛刻；同时，可能自我意识很弱。'),('CS','完美主义者','天生的学者，通常次序井然且条理清楚，强调精确性，注重细节并沉稳坚定。善于系统思考和分析，自我意识强。对于自己的工作与任务有着极高的标准与要求，通常也竭尽全力确保任务结果的高品质。无论是在生活中还是工作中，都倾向于按部就班，遵守既定的流程。也非常有责任心，工作中一丝不苟，有着极高的标准，可被信赖。','理性冷静，对于事物有着自己的理解与诠释，通常保留自己的情绪与意见，除非被要求，否则很少公开自己的想法，主要以自身的行动为示范领导下属。','一般情况下很难与他人进行互动，尤其是在不熟悉的情境下，需要在明确了解自己的处境后才能行动。内心非常重视友谊与人情关系，但是却往往被其冷漠与内敛的表象所掩盖。为了能够更有效地与他人进行沟通，需要以一种更加直接与开放的态度去发起或控制人际之间的互动。行事老练，会很小心地规避冲突，所以很少有意引发矛盾。','融合了精确性以及对任务有始有终的耐心态度，追求次序、质量和效率，这使使其在技术领域有卓越优势，往往具有某些特殊的专业技能与才干。能在具有复杂的系统与程序的环境中自由发挥，适合于类似财务、编程或者工程技术类的职业。','易于感受到挫折与气馁；在压力下，通常带有负面的或“灾难化”的想法，有可能时常经历内心的挣扎；虽然有着固执的一面却不愿直面表达。'),('N','无效','此测试结果无效，目前不能很好的显示受测者的风格。出现这种结果的原因可能是：受测者不理解测试的目的，不知道自己该做什么；或者是因为受测者曾经有意无意的修改过选项，试图控制测试结果。','此测试结果不能很好的显示受测者的风格，出现这种结果的原因可能因为以下几种情况：受测者不理解测试的目的，不知道自己该做什么；受测者目前情绪低落，存在士气问题，需要进行心理调整；受测者在前一份工作中有比较高的挫折感；受测者目前对自己的事业发展方向不够明确；受测者的个性八面玲珑，企图取悦所有的人，控制测试结果。','此测试结果无效，目前不能很好的显示受测者的风格。出现这种结果的原因可能是：受测者不理解测试的目的，不知道自己该做什么；或者是因为受测者曾经有意无意的修改过选项，试图控制测试结果。','此测试结果无效，目前不能很好的显示受测者的风格。出现这种结果的原因可能是：受测者不理解测试的目的，不知道自己该做什么；或者是因为受测者曾经有意无意的修改过选项，试图控制测试结果。','此测试结果无效，目前不能很好的显示受测者的风格。出现这种结果的原因可能是：受测者不理解测试的目的，不知道自己该做什么；或者是因为受测者曾经有意无意的修改过选项，试图控制测试结果。');
/*!40000 ALTER TABLE `chenshi_result_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chenshi_user_answers`
--

DROP TABLE IF EXISTS `chenshi_user_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chenshi_user_answers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `wechat_id` varchar(50) DEFAULT NULL,
  `answer1` varchar(4) DEFAULT NULL,
  `answer2` varchar(4) DEFAULT NULL,
  `answer3` varchar(4) DEFAULT NULL,
  `answer4` varchar(4) DEFAULT NULL,
  `answer5` varchar(4) DEFAULT NULL,
  `answer6` varchar(4) DEFAULT NULL,
  `answer7` varchar(4) DEFAULT NULL,
  `answer8` varchar(4) DEFAULT NULL,
  `answer9` varchar(4) DEFAULT NULL,
  `answer10` varchar(4) DEFAULT NULL,
  `answer11` varchar(4) DEFAULT NULL,
  `answer12` varchar(4) DEFAULT NULL,
  `answer13` varchar(4) DEFAULT NULL,
  `answer14` varchar(4) DEFAULT NULL,
  `answer15` varchar(4) DEFAULT NULL,
  `answer16` varchar(4) DEFAULT NULL,
  `answer17` varchar(4) DEFAULT NULL,
  `answer18` varchar(4) DEFAULT NULL,
  `answer19` varchar(4) DEFAULT NULL,
  `answer20` varchar(4) DEFAULT NULL,
  `answer21` varchar(4) DEFAULT NULL,
  `answer22` varchar(4) DEFAULT NULL,
  `answer23` varchar(4) DEFAULT NULL,
  `answer24` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chenshi_user_answers`
--

LOCK TABLES `chenshi_user_answers` WRITE;
/*!40000 ALTER TABLE `chenshi_user_answers` DISABLE KEYS */;
INSERT INTO `chenshi_user_answers` VALUES (1,'fake_wechat_id_1','CF','BE','CH','AH','BG','CH','AG','BH','CF','BE','BE','DF','AF','DF','DG','DE','CE','AG','AH','AH','CF','BG','AG','DF'),(2,'fake_wechat_id_2','DE','DG','CH','CF','BG','CE','AH','BE','CH','BE','AH','DF','AF','DE','DG','AH','DG','DG','AG','BG','BH','CH','AH','AG'),(3,'fake_wechat_id_3','CE','DE','CH','CH','DG','AH','BH','BE','CF','CH','BG','CF','AF','AH','BH','DF','DF','DF','AG','AF','CF','CH','BG','DG'),(4,'fake_wechat_id_4','CF','BG','CH','AH','DG','AH','BG','BE','BH','DG','BE','DG','CH','DG','DG','CE','DE','AC','AH','CH','BH','CF','DE','BG'),(5,'fake_wechat_id_5','DF','BE','AH','AH','CE','AG','CE','AF','CF','CE','BE','BH','AF','AH','DG','DF','DG','DF','BG','AH','CH','BH','BG','AF'),(6,'fake_wechat_id_6','BH','DE','CH','BH','AG','DE','BH','CF','AG','BE','DG','CH','AF','AH','CG','BG','CF','AF','CE','CF','BH','BF','CG','BG'),(7,'fake_wechat_id_7','DF','DG','BH','CF','DG','CE','CE','BH','CF','AF','AG','AF','AF','CF','BG','CF','DE','AH','AG','AH','AG','CF','DF','AG'),(8,'fake_wechat_id_8','AF','BG','CH','AF','DG','DE','BG','BF','BH','DE','AH','CH','CE','DF','DF','AG','DG','BH','DG','CE','CH','CF','AG','DG'),(9,'fake_wechat_id_9','BE','BD','BD','AC','AC','AC','CD','AB','CD','AB','AB','CD','AC','CD','BD','CD','AD','BD','AB','BD','BC','CD','AC','AD'),(10,'fake_wechat_id_10','DG','BG','CG','DF','DG','CE','BE','CE','DG','DE','DE','DG','CF','CF','AG','AH','DE','BH','DG','AH','DF','DE','CF','CE'),(11,'fake_wechat_id_11','BE','BE','BH','CH','DE','CF','DF','BE','CF','BG','AG','DG','DF','CF','DG','CE','DF','CF','AG','CH','CH','CF','DG','DG'),(12,'fake_wechat_id_12','DF','DG','BH','AH','DG','DI','AD','B','CF','DG','AG','A','AF','CF','DG','CE','DG','CH','CH','CH','CF','CE','DG','DE');
/*!40000 ALTER TABLE `chenshi_user_answers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-16 10:41:20
