/* iWeb在线课堂项目必需的数据库结构 */

/* 约定俗成的规定：关键字用大写，非关键字用小写 */

#删除数据库iweb，如果它存在的话
/* drop database if exists iweb */
/* 丢弃 drop */
DROP DATABASE IF EXISTS iweb;

#重新创建数据库iweb
/* create database iweb charset=utf8 */
CREATE DATABASE iweb CHARSET=UTF8;

#进入数据库iweb
/* use iweb */
USE iweb;

#创建校区表
/* create table iw_campus(
	id  int  primary key  auto_increment,
	name  varchar,
	pic  varchar,
	address  varchar,
	phone  varchar,
	postcode  char,
	longitude  decimal,
	latitude  decimal
)
insert into iw_campus values (...)
 */
CREATE TABLE iw_campus(
	id  INT  PRIMARY KEY  AUTO_INCREMENT,     #编号(主键)(自动增长[整数型主键])
	name  VARCHAR(32),        #名称
	pic  VARCHAR(128),        #图片
	address  VARCHAR(64),     #地址
	phone  VARCHAR(32),       #电话
	postcode  CHAR(6),        #邮编
	longitude  DECIMAL(9,6),  #经度(共9位数，小数点后6位数)
	latitude  DECIMAL(8,6)    #纬度(共8位数，小数点后6位数)
);

#插入数据(22条记录)
INSERT INTO iw_campus VALUES (NULL,'北京中关村中心','img/campus/bjzgc.jpg','北京市海淀区北三环西路甲18号（大钟寺附近）中鼎大厦B座7层','010-62130963','100098',116.347527,39.972529);
INSERT INTO iw_campus VALUES (NULL,'北京天坛中心','img/campus/bjtt.jpg','北京市崇文区珠市口东大街6号珍贝大厦西侧3层达内科技','010-67028668','100050',116.417984,39.898658);
INSERT INTO iw_campus VALUES (NULL,'北京广渠门中心','img/campus/bjgqm.jpg','北京市东城区广渠门东广渠家园25号楼启达大厦一层','15321130620','100010',116.457211,39.897629);
INSERT INTO iw_campus VALUES (NULL,'北京北京清华园中心','img/campus/bjbjqh.jpg','北京市海淀区花园路小关街120号万盛商务会馆A区三层','010-82676916','100088',116.386429,39.984291);
INSERT INTO iw_campus VALUES (NULL,'北京万寿路中心','img/campus/bjwsl.jpg','北京市海淀区万寿路西街2号文博大厦二层达内科技','010-82761288','100081',116.300824,39.915776);
INSERT INTO iw_campus VALUES (NULL,'无锡商院','img/campus/wxic.jpg','无锡商业职业技术学院(九龙校区)','(0510)83270530','100079',120.179885,31.567127);
INSERT INTO iw_campus VALUES (NULL,'江南影视艺术职业学院','img/campus/jnys.jpg','江苏省无锡市惠山区藕塘职教园钱藕路2号','(0510)85551188','100089',120.182316,31.574378);
INSERT INTO iw_campus VALUES (NULL,'无锡技师学院(钱藕路)','img/campus/wxjs.jpg','江苏省无锡市惠山区钱藕路6号','(0510)83275612','100099',120.181706,31.581306);
INSERT INTO iw_campus VALUES (NULL,'江苏信息职业技术学院','img/campus/jsxx.jpg','江苏省无锡市惠山区钱藕路1号','(0510)85804253','100010',120.175267,31.575608);
INSERT INTO iw_campus VALUES (NULL,'江南大学(蠡湖校区)','img/campus/jndx.jpg','江苏省无锡市滨湖区蠡湖大道1800号','(0510)85913660','100011',120.277757,31.489746);
INSERT INTO iw_campus VALUES (NULL,'清华大学-美术学院','img/campus/qhms.jpg','北京市海淀区荷清路与清华东路交叉路口往西南约100米(清华大学学院-美术馆)','(010)62799005','100015',116.342774,40.005362);
INSERT INTO iw_campus VALUES (NULL,'北京大学','img/campus/bjdx.jpg','北京市海淀区颐和园路5号','(010)62752114','100055',116.316833,39.998877);
INSERT INTO iw_campus VALUES (NULL,'北京外国语大学','img/campus/bjwgy.jpg','北京市海淀区西三环北路2号','(010)88816200','100065',116.319536,39.961489);
INSERT INTO iw_campus VALUES (NULL,'中央财经大学(学院南路校区)','img/campus/zycj.jpg','北京市海淀区学院南路39号','(010)62288332','100066',116.349163,39.965211);
INSERT INTO iw_campus VALUES (NULL,'北京第二外国语学院','img/campus/bjdewgy.jpg','北京市朝阳区定福庄南里1号','(010)65778005','100067',116.5701,39.918528);
INSERT INTO iw_campus VALUES (NULL,'北京工业大学耿丹学院','img/campus/bjgy.jpg','北京市顺义区牛栏山镇牛富路牛山段3号','(010)60411788','100061',116.658646,40.221871);
INSERT INTO iw_campus VALUES (NULL,'中国农业大学(东校区)','img/campus/bjny.jpg','北京市海淀区清华东路17号','(010)62736942','100062',116.364154,40.010185);
INSERT INTO iw_campus VALUES (NULL,'北京科技职业学院(沙河校区)','img/campus/bjkj.jpg','北京市昌平区沙阳路18号','(010)69738080','100063',116.257172,40.123649);
INSERT INTO iw_campus VALUES (NULL,'北京工商大学(良乡校区)','img/campus/bjgs.jpg','北京市房山区良乡高教园区阳光南大街附近','(010)81353201','100064',116.173806,39.72606);
INSERT INTO iw_campus VALUES (NULL,'北京电子科技学院','img/campus/bjdz.jpg','北京市丰台区富丰路7号','(010)83635433','100069',116.286097,39.843926);
INSERT INTO iw_campus VALUES (NULL,'中国石油大学(北京)南校区-第三教学楼','img/campus/bjsy.jpg','府学路18号中国石油大学','(010)89733060','100070',116.252725,40.222048);
INSERT INTO iw_campus VALUES (NULL,'北京交通职业技术学院','img/campus/bjjt.jpg','北京市昌平区西关环岛西边1公里','(010)89707874','100077',116.210855,40.235024);


#创建讲师表
/* create table iw_teacher(...); */
CREATE TABLE iw_teacher(
	teacher_id  INT PRIMARY KEY AUTO_INCREMENT,  #编号
	teacher_name  VARCHAR(6),     #姓名
	pic  VARCHAR(128),            #图片
	skills  VARCHAR(32),          #擅长
	experience  VARCHAR(1024),    #经历
	style  VARCHAR(1024)          #风格
);
#插入数据(10条记录)
INSERT INTO iw_teacher VALUES(NULL,'成亮','img/teacher/cl.jpg','WEB全栈开发','10年互联网开发经验， 精通HTML5，CSS3，js，vue，angualr 等网页前端技术及 php后端 开发；先后就职于多家 IT 互联网公司，曾任某网络公司技术主管，服务机构有首都师范大学、中国联通、中国石油、国家图书馆、中国摄影协会等。','讲课诙谐幽默，深处浅出，深得学生喜爱。');
INSERT INTO iw_teacher VALUES(NULL,'李然','img/teacher/lr.jpg','高级网页设计','从事前端开发多年，参与 及主导研发过多个省级政府项目及海 外项目，参与 NEC，福特等大型企业 CRM 系统的研发。项目涉及金融，汽 车，电子等多个领域。于文思海辉专 职负责前端产品线培训时，积累了大 量的教学经验。','教学风格风趣幽默，细致严谨。善于以项目流程反推知识点讲解，深受学员好评。');
INSERT INTO iw_teacher VALUES(NULL,'张东','img/teacher/zd.jpg','JS高级编程','美国PMP认证高级项目经理，微软认证解决方案开发专家。先后在中软国际、中国搜索、太极计算机担任高级开发工程师，架构师，项目经理。曾担任中央外汇管理中心、中国石油、二炮工程研究院、首都国际机场技术咨询顾问。','一切从实际项目出发，快速入门，学以致用。讲课极富激情，语言表达精准，有感染力。案例丰富、直观，步骤细致，清晰。注重从学习到实际工作的快速转化。');
INSERT INTO iw_teacher VALUES(NULL,'程涛','img/teacher/ct.jpg','移动APP开发','曾就职于北京塞博维尔信息咨询公司，具备多年的互联网应用经验，精通PHP框架技术。在Web3.0前沿技术方面有着深入的研究，曾参与Shop EX核心模块开发。','感情充沛，富有激情，容易引起学生们的共鸣。授课时能旁征博引，使学生从诸多的材料中得出结论，并且启迪学生的想象能力。');
INSERT INTO iw_teacher VALUES(NULL,'纪盈鑫','img/teacher/jyx.jpg','前端框架开发','曾就职于东软集团。参与开发家乐福，津津会员卡等多款上线app。拥有外包和产品两种开发经历。已指导并帮助学员上架多个项目到AppStore。授课风趣幽默，亲和力强。教学耐心，循序渐进，课堂气氛活跃。善于结合生活中的实例，把艰涩难懂的知识点传授给学员。','授课风趣幽默，亲和力强。教学耐心，循序渐进，课堂气氛活跃。善于结合生活中的实例，把艰涩难懂的知识点传授给学员。');
INSERT INTO iw_teacher VALUES(NULL,'窦桂梅','img/teacher/dgm.jpg','窦桂梅与主题教学','立足讲台34年，把儿童成长当作最高荣誉，从“基于教材，超越教材；立足课堂，超越课堂；尊重教师，超越教师”三个超越的探索，到“语文立人”的主题教学的提出，“1+X课程”的整体建构，再到“成志教育”立德树人育人模式的构建与实践，在培养担当民族复兴大任的时代新人的道路上留下坚实脚印。她心系全国儿童和教师，通过清华附小互联网学校，向900个贫困县3800个远程教学站输送课程。新冠肺炎疫情防控期间，她带领团队273位教师，承担国家云课堂346节微课和“同上一堂课”816节电视直播课。','讲课深入bai浅出，条理清楚，层层剖析，环环du相扣，论证严密，结构严谨，用思维的逻辑力量吸引学生的注意力，用理智控制课堂教学进程。学生通过听教师的讲授，不仅学到知识，也受到思维的训练，还受到教师严谨的治学态度的熏陶和感染。虽然有的教师在课堂上不苟言笑，但内心却充满对知识的透彻理解和对人的理智能力发展的执著追求。');
INSERT INTO iw_teacher VALUES(NULL,'薛法根','img/teacher/xfg.jpg','呼唤智慧的语文教育','从教以来，潜心研究丝绸文化素质教育与小学语文教学，初步形成了“着眼整体发展、着力语言训练、着重内化进程”的教学思想和“教得轻松、学得扎实”的教学特色。1999年起，致力于小学语文组块教学研究，提出了“走向智慧、走向生活、走向综合、走向运用”的教学新理念，并初步形成了组块教学模式。曾先后在《人民教育》等报刊杂志上发表了《语文教学要着力提高学生的语文素质》、《呼唤智慧的语文教育》等100多篇论文。1995年被评为江苏省优秀教育工作者，1996年被评为苏州市“十杰”教师。','讲课情绪饱满，将对科学的热爱和追求融于对学生的关心、教导和期望之中，充满着对人的高度尊重的信赖。讲到动情之处，往往情绪高涨，慷慨激昂，滔滔不绝，扣人心弦，给人以震撼人心的力量，引起学生强烈的情感共鸣，师生之间在理解、沟通的前提下，共同营造出一种渴求知识、探索真理的热烈气氛。学生在这样的教师引导下，所获得的不仅仅是知识的训练价值，还包括人格、情感的陶冶价值。');
INSERT INTO iw_teacher VALUES(NULL,'于永正','img/teacher/yyz.jpg','于永正文集','于永正在语文教学上表现出来的创造力很大程度上得益于艺术教育。正如于永正所说："每学一段京剧唱腔，每唱一遍哪怕是很熟悉的唱段，都是一次感情上的洗礼，都会增加一次感情上的积淀，京剧使我懂得了爱，懂得了恨。京剧教会了我喜，教会了我怒，教会了我悲，教会了我乐。总之，京剧使我懂得了人世间最重要的一个字——情。感谢张老师教会我唱戏拉胡琴，引我走进艺术殿堂。正如爱因斯坦所说，知识和能力是有限的，而艺术给人带来的想象是无限的……"','讲课亲切自然，朴实无华，没有矫揉造作，也不刻意渲染，而是娓娓而谈，细细道来，师生之间在一种平等、协作、和谐的气氛下，进行默默的情感交流，将对知识的渴求和探索融于简朴、真实的教学情景之中，学生在静静的思考、默默的首肯中获得知识。教师讲课虽然声音不高，但神情自若，情真意切，犹如春雨渗入学生心田，润物细无声，它虽没有江海波澜的壮阔，却不乏山涧流水之清新，给人一种心旷神怡、恬静安宁的感受');
INSERT INTO iw_teacher VALUES(NULL,'王崧舟','img/teacher/wsz.jpg','王崧舟讲语文','1984年参加教育工作以来，王崧舟一直醉心于小学语文教育改革实践。他积极倡导“诗意语文”的理想和信念，主张以发展学生的言语生命为核心，从生命成长的高度观照和深化语文教育改革，促进学生语言和精神的协同发展。王崧舟看来，对语文教学的追求，向来存在三个层面上的东西。一是功利层面上的追求，学生的语文考试成绩很好，学生的作文获奖等等；二是科学层面上的追求，形成自己的理论主张，建构自己的教学体系等等；三是审美层面上的追求，按照美的规律和要求审视语文、设计语文、实践语文、评价语文，让语文成为生命的诗意存在。','讲课生动形象，机智诙谐，妙语连珠，动人心弦。一个生动形象的比喻，犹如画龙点睛，给学生开启智慧之门；一种恰如其分的幽默，引来学生会心的微笑，如饮一杯甘醇的美酒，给人以回味和留恋；哲人的警句、文化的箴言不时穿插于讲述中间，给人以思考和警醒。听这样的教师讲课，学生心情舒畅、乐于学习，在轻松、愉快和笑声中获得人生的启迪，获得心智的训练，变机械学习、被动模仿为心领神会、主动思考。对于调动学生学习的积极性和主动性而言，这是一种值得着力陶铸和追求的教学风格。');
INSERT INTO iw_teacher VALUES(NULL,'李文华','img/teacher/lwh.jpg','前端框架开发','曾工作于中国互联网中心、中软国际等机构，先后任教于华育国际、IBM产品基地、达内科技等组织。具备多年互联网项目开发及管理经验，十年以上JavaEE、PHP、移动开发等多方向授课经验。','行业知识广泛深入，具备多学科全部课程完整授课经验；授课思路顺畅，表达清晰自然，善于化繁为简、化抽象为具体，能够很好的调动学员积极性；亲和力强，善于与学员保持良好的交互；因材施教，能为各层次学员量身定制针对性强的实训和考核体系。教学领域涉及社招生源职业培训、高校毕业生项目实训、高校师资课程集训、企业技术内训等；所授学员理论知识扎实，实践能力强，广泛就职于IBM、百度、阿里巴巴、搜狐、新浪、中软、中科院等知名企业和机构。');


#创建课程类别表
CREATE TABLE iw_course_type(
	id INT PRIMARY KEY AUTO_INCREMENT,
	name varchar(16)
);
INSERT INTO iw_course_type VALUES(NULL,'基础课程');
INSERT INTO iw_course_type VALUES(NULL,'核心课程');
INSERT INTO iw_course_type VALUES(NULL,'进阶课程');


#创建课程表——提示：此处的课程属性仍有欠缺
CREATE TABLE iw_course(
	course_id INT PRIMARY KEY AUTO_INCREMENT,  #课程编号
	course_name VARCHAR(64),    #课程姓名
	pic VARCHAR(128),           #介绍性图片
	teacher_id INT,             #讲师编号，注意：此处不能保存讲师姓名，避免<姓名>重复!
	duration VARCHAR(16),       #课程时长
	start_time VARCHAR(16),     #开课时间
	                            #开课地点，注意：因为一门课程可能在多个校区开课，此处无法保存多个校区
	price DECIMAL(8,2),         #课程价格
	details VARCHAR (2048)      #课程详细介绍
);
INSERT INTO iw_course VALUES(NULL,'微信小程序开发','img/course/01.jpg',4,'1天','每周一开课',299,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'Unity地形环境搭建及实景漫游','img/course/02.jpg',5,'2天','每周一开课',99,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'UI控件之基本控件（二）','img/course/03.jpg',2,'2天','每周一开课',899,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'微信小程序概述','img/course/04.jpg',3,'3天','每周一开课',99,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'手机图标绘制','img/course/05.jpg',4,'3天','每周一开课',599,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'JQuery操作DOM','img/course/06.jpg',2,'5天','每周一开课',99,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'WXAPP之一周上手小程序','img/course/07.jpg',8,'2天','每周一开课',599,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'商业插画零基础手绘教程','img/course/08.jpg',7,'1天','每周三开课',499,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'Linex系统管理','img/course/09.jpg',5,'2天','每周三开课',699,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'视频剪辑课程','img/course/10.jpg',4,'1天','每周五开课',799,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'数据分析与可视化体验课','img/course/11.jpg',1,'3天','每周一开课',899,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'好看的插画动起来','img/course/12.jpg',2,'2天','每周三开课',999,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'模式效果操作','img/course/13.jpg',5,'5天','每周五开课',399,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'UI设计职位及课程解读','img/course/14.jpg',4,'1天','每周五一开课',299,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'红帽认证课程','img/course/15.jpg',6,'2天','每周三开课',599,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'专为UI设计师打造的WEB前端课程','img/course/16.jpg',9,'1天','每周三开课',699,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'红帽认证工程师','img/course/17.jpg',8,'1天','每周二开课',666,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'WEB前端基础精品课','img/course/18.jpg',7,'2天','每周五开课',599,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'PS入门基础课','img/course/19.jpg',6,'1天','每周三开课',899,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'前端开发框架','img/course/20.jpg',5,'2天','每周二开课',599,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'mongoDB','img/course/21.jpg',4,'5天','每周五开课',499,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'微信小程序开发','img/course/22.jpg',3,'1天','每周一开课',599,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'LINUX云计算之Shell脚本编程','img/course/23.jpg',2,'5天','每周五开课',699,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'EME之微信运营','img/course/24.jpg',1,'3天','每周三开课',699,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'JAVA项目实战课','img/course/25.jpg',5,'1天','每周二开课',599,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'Hadoop','img/course/26.jpg',7,'5天','每周一开课',599,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'功能测试工具','img/course/27.jpg',4,'1天','每周五开课',399,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'Linux平台部署网站','img/course/28.jpg',6,'1天','每周二开课',599,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'手绘商业宣传图案','img/course/29.jpg',4,'1天','每周一开课',299,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'一节课教你绘制魔童小哪吒','img/course/30.jpg',9,'1天','每周二开课',99,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'MySQL存储过程','img/course/31.jpg',1,'1天','每周二开课',99,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');


#创建校区开课表，记录哪个校区课设了哪些课程——典型的“多对多”映射
CREATE TABLE iw_campus_course(
	id INT PRIMARY KEY AUTO_INCREMENT, #编号
	campus_id INT,  #校区编号
	course_id INT  #课程编号
);
#插入数据(41条数据)
INSERT INTO iw_campus_course VALUES(NULL,5,1);
INSERT INTO iw_campus_course VALUES(NULL,22,2);
INSERT INTO iw_campus_course VALUES(NULL,3,3);
INSERT INTO iw_campus_course VALUES(NULL,12,4);
INSERT INTO iw_campus_course VALUES(NULL,19,5);
INSERT INTO iw_campus_course VALUES(NULL,5,6);
INSERT INTO iw_campus_course VALUES(NULL,14,7);
INSERT INTO iw_campus_course VALUES(NULL,6,8);
INSERT INTO iw_campus_course VALUES(NULL,7,9);
INSERT INTO iw_campus_course VALUES(NULL,1,10);
INSERT INTO iw_campus_course VALUES(NULL,5,11);
INSERT INTO iw_campus_course VALUES(NULL,4,12);
INSERT INTO iw_campus_course VALUES(NULL,3,13);
INSERT INTO iw_campus_course VALUES(NULL,2,14);
INSERT INTO iw_campus_course VALUES(NULL,1,15);
INSERT INTO iw_campus_course VALUES(NULL,5,16);
INSERT INTO iw_campus_course VALUES(NULL,9,17);
INSERT INTO iw_campus_course VALUES(NULL,3,18);
INSERT INTO iw_campus_course VALUES(NULL,11,19);
INSERT INTO iw_campus_course VALUES(NULL,13,20);
INSERT INTO iw_campus_course VALUES(NULL,5,21);
INSERT INTO iw_campus_course VALUES(NULL,4,22);
INSERT INTO iw_campus_course VALUES(NULL,11,23);
INSERT INTO iw_campus_course VALUES(NULL,2,24);
INSERT INTO iw_campus_course VALUES(NULL,1,25);
INSERT INTO iw_campus_course VALUES(NULL,13,26);
INSERT INTO iw_campus_course VALUES(NULL,4,27);
INSERT INTO iw_campus_course VALUES(NULL,11,28);
INSERT INTO iw_campus_course VALUES(NULL,2,29);
INSERT INTO iw_campus_course VALUES(NULL,1,30);
INSERT INTO iw_campus_course VALUES(NULL,13,31);
INSERT INTO iw_campus_course VALUES(NULL,11,10);
INSERT INTO iw_campus_course VALUES(NULL,12,11);
INSERT INTO iw_campus_course VALUES(NULL,14,12);
INSERT INTO iw_campus_course VALUES(NULL,13,13);
INSERT INTO iw_campus_course VALUES(NULL,12,14);
INSERT INTO iw_campus_course VALUES(NULL,13,15);
INSERT INTO iw_campus_course VALUES(NULL,15,16);
INSERT INTO iw_campus_course VALUES(NULL,12,17);
INSERT INTO iw_campus_course VALUES(NULL,13,18);
INSERT INTO iw_campus_course VALUES(NULL,7,19);


#创建用户表——提示：此处的用户属性仍有欠缺
CREATE TABLE iw_user(
	id INT PRIMARY KEY AUTO_INCREMENT, #用户编号
	email VARCHAR(64),       #邮箱
	phone VARCHAR(32),       #电话(18)
	password VARCHAR(128)    #密码
);
INSERT INTO iw_user VALUES(NULL,'ding@tedu.cn','13501111111',password('123456'));
INSERT INTO iw_user VALUES(NULL,'dang@tedu.cn','13505615240',password('654321'));
INSERT INTO iw_user VALUES(NULL,'dou@tedu.cn','15031279514',password('112233'));
INSERT INTO iw_user VALUES(NULL,'ya@tedu.cn','12138964701',password('123123'));
INSERT INTO iw_user VALUES(NULL,'faiz@rider.com','555',password(555));
INSERT INTO iw_user VALUES(NULL,'kaixa@rider.com','913',password(913));
INSERT INTO iw_user VALUES(NULL,'orga@rider.com','000',password(000));


#创建购物车表
#创建订单表
#创建收货地址表
#创建用户收藏夹表