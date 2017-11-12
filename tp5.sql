-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2017 �?11 �?12 �?08:03
-- 服务器版本: 5.5.53
-- PHP 版本: 7.0.21

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `tp5`
--

-- --------------------------------------------------------

--
-- 表的结构 `tp5_admin`
--

CREATE TABLE IF NOT EXISTS `tp5_admin` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` char(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `tp5_admin`
--

INSERT INTO `tp5_admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '96e79218965eb72c92a549dd5a330112'),
(11, 'admin9', 'ef775988943825d2871e1cfa75473ec0'),
(5, 'admin4', '73882ab1fa529d7273da0db6b49cc4f3'),
(7, 'admin5', '5b1b68a9abf4d2cd155c81a9225fd158'),
(9, 'admin7', 'f63f4fbc9f8c85d409f2f59f2b9e12d5'),
(10, 'admin8', '21218cca77804d2ba1922c33e0151105');

-- --------------------------------------------------------

--
-- 表的结构 `tp5_article`
--

CREATE TABLE IF NOT EXISTS `tp5_article` (
  `artid` mediumint(9) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL COMMENT '标题',
  `keywords` varchar(150) NOT NULL COMMENT '关键词',
  `desc` varchar(255) NOT NULL COMMENT '描述',
  `pic` varchar(100) NOT NULL COMMENT '略缩图',
  `content` text NOT NULL COMMENT '内容',
  `click` mediumint(9) NOT NULL COMMENT '点击量',
  `cateid` mediumint(9) NOT NULL,
  `time` int(10) NOT NULL COMMENT '发布时间',
  PRIMARY KEY (`artid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `tp5_article`
--

INSERT INTO `tp5_article` (`artid`, `title`, `keywords`, `desc`, `pic`, `content`, `click`, `cateid`, `time`) VALUES
(2, '背影', '生活,离别', '', '/static/uploads/20171111/c59d2cca300ced601f0d1004ea28363d.jpg', '<p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: " pingfang="" white-space:="" background-color:=""><span style="border: 0px; margin: 0px; padding: 0px;">这时我看见他的背影，我的眼泪很快地流下来了。我赶紧拭干了泪，怕他看见，也怕别人看见。</span></p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: " pingfang="" white-space:="" background-color:=""><span style="border: 0px; margin: 0px; padding: 0px;">……</span></p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: " pingfang="" white-space:="" background-color:=""><span style="border: 0px; margin: 0px; padding: 0px;">等他的背影混入来来往往的人里，再也找不着了，我便进来坐下，我的眼泪又来了。</span></p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: " pingfang="" white-space:="" background-color:=""><span style="border: 0px; margin: 0px; padding: 0px;">……</span></p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: " pingfang="" white-space:="" background-color:=""><span style="border: 0px; margin: 0px; padding: 0px;">唉！我不知何时再能与他相见 ！</span></p><p><span style="color: rgb(25, 25, 25); font-family: " pingfang="" background-color:="">以前不懂什么叫离别，而今故乡于我，只有冬夏，再无春秋。要是再忙些，或许便只剩下春节那几日；要是再过几年，或许家乡都要丢掉了。类似的还有林海音的《城南旧事》：“走过院子，看那垂落的夹竹桃，我默念着： 爸爸的花儿落了。 我已不再是小孩子。”</span></p>', 3, 45, 1504173782),
(6, '临安春雨初霁', '临安春雨初霁', '临安春雨初霁', '/static/uploads/20171111/26f7238bba1e9726dc4d3af03d193447.jpg', '<p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);"><span style="border: 0px; margin: 0px; padding: 0px;">世味年来薄似纱，谁令骑马客京华。</span></p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);"><span style="border: 0px; margin: 0px; padding: 0px;">小楼一夜听春雨，深巷明朝卖杏花。</span></p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);"><span style="border: 0px; margin: 0px; padding: 0px;">矮纸斜行闲作草，晴窗细乳戏分茶。</span></p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);"><span style="border: 0px; margin: 0px; padding: 0px;">素衣莫起风尘叹，犹及清明可到家。</span></p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);"><span style="border: 0px; margin: 0px; padding: 0px;"><span style="color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);">以前最爱的一句是“小楼一夜听春雨”，因为字里行间的浪漫情怀，有楼有夜有雨。而今真的作客京华，才懂得人情凉薄似纱。更无力的是壮志难酬，而年华东流。</span></span></p>', 2, 45, 1508294452),
(5, '秋天的怀念', '怀念', '秋天的怀念', '/static/uploads/20171111/64dbef37f4a1e111b9131ec08658e5bd.jpg', '<p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: " pingfang="" white-space:="" background-color:=""><span style="border: 0px; margin: 0px; padding: 0px;">双腿瘫痪以后，我的脾气变得暴躁无常。望着望着窗外天上北归的雁群，我会突然把面前的玻璃砸碎；听着听着李谷一甜美的歌声，我会猛地把手边的东西摔向四周的墙壁。母亲这时就会悄悄地躲出去，在我看不见的地方偷偷地听着我的动静。当一切恢复沉寂时，她又悄悄地进来，眼边红红的，看着我。“听说北海的花儿都开了，我推着你去走走。”她总是这么说。母亲喜欢花，可自从我的腿瘫痪以后，她侍弄的那些花都死了。“不，我不去！”我狠命地捶打这两条可恨的腿，喊着，“我可活什么劲儿！”母亲扑过来抓住我的手，忍住哭声说：“咱娘儿俩在一块儿，好好儿活，好好儿活……”</span></p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: " pingfang="" white-space:="" background-color:=""><span style="border: 0px; margin: 0px; padding: 0px;">可我却一直都不知道，她的病已经到了那步田地。后来妹妹告诉我，母亲常常肝疼得整宿整宿翻来覆去地睡不了觉。</span></p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: " pingfang="" white-space:="" background-color:=""><span style="border: 0px; margin: 0px; padding: 0px;">那天我又独自坐在屋里，看着窗外的树叶“唰唰啦啦”地飘落。母亲进来了，挡在窗前：“北海的菊花开了，我推着你去看看吧。”她憔悴的脸上现出央求般的神色。“什么时候？”“你要是愿意，就明天?”她说。我的回答已经让她喜出望外了。“好吧，就明天。”我说。她高兴得一会坐下，一会站起：“那就赶紧准备准备。”“哎呀，烦不烦？几步路，有什么好准备的！”她也笑了，坐在我身边，絮絮叨叨地说着：“看完菊花，咱们就去‘仿膳’，你小时候最爱吃那儿的豌豆黄儿。还记得那回我带你去北海吗？你偏说那杨树花是毛毛虫，跑着，一脚踩扁一个……”她忽然不说了。对于“跑”和“踩”一类的字眼，她比我还敏感。她又悄悄地出去了。</span></p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: " pingfang="" white-space:="" background-color:=""><span style="border: 0px; margin: 0px; padding: 0px;">她出去了，就再也没回来。</span></p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: " pingfang="" white-space:="" background-color:=""><span style="border: 0px; margin: 0px; padding: 0px;">邻居们把她抬上车时，她还在大口大口地吐着鲜血。我没想到她已经病成那样。<span style="border: 0px; margin: 0px; padding: 0px;">看着三轮车远去，也绝没有想到那竟是永远的诀别。</span></span></p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: " pingfang="" white-space:="" background-color:=""><span style="border: 0px; margin: 0px; padding: 0px;">……</span></p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: " pingfang="" white-space:="" background-color:=""><span style="border: 0px; margin: 0px; padding: 0px;">又是秋天，妹妹推着我去北海看了菊花。黄色的花淡雅，白色的花高洁，紫红色的花热烈而深沉，泼泼洒洒，秋风中正开得烂漫。<span style="border: 0px; margin: 0px; padding: 0px;">我懂得母亲没有说完的话。妹妹也懂。我俩在一块儿，要好好儿活……</span></span></p><p><span style="color: rgb(25, 25, 25); font-family: " pingfang="" background-color:="">年轻的时候永远无法理解生活有多么艰辛，也不了解活着是有多么幸运，所以常常从我们口中能听到类似“何不食肉糜”这样轻浮的话语。生活是一直艰难还是只有年轻时如此？一直如此。</span></p>', 1, 46, 1508150477),
(7, '丑奴儿·书博山道中壁', '丑奴儿·书博山道中壁', '丑奴儿·书博山道中壁', '/static/uploads/20171111/1042cba930eb9696c0c2364ef89bf65c.jpg', '<p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);"><span style="border: 0px; margin: 0px; padding: 0px;">少年不识愁滋味，爱上层楼，爱上层楼，为赋新词强说愁。</span></p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);"><span style="border: 0px; margin: 0px; padding: 0px;">而今识尽愁滋味，欲说还休，欲说还休，却道天凉好个秋。</span></p><p><span style="color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);">从前只是喜欢这首诗朗朗上口，也无生僻字。现在才明白年轻时的矫揉造作在现实面前什么也不是。真正的敌人不会摆出一副敌人的样子，真正的忧愁也不会时时挂在嘴上。欲说还休，因无人了解，也无人可解，渐渐的，我们都学会了沉默。</span></p>', 0, 47, 1510390477),
(8, '百年孤独', '百年孤独', '百年孤独', '/static/uploads/20171111/9aa4652345cefe63bcda9405815ee94a.jpg', '<p><span style="color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);">过去都是假的，回忆是一条没有归途的路，以往的一切春天都无法复原，即使最狂乱且坚韧的爱情，归根结底也不过是转瞬即逝的现实。</span></p><p><span style="color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);"><span style="color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);">年轻时人手一本，只是为了故作深沉，对书中如梦似幻的故事并没有太多的感同身受，长大后，逐渐发现书中那些生命中不可逃离不可消除的深沉的孤独与宿命，对于每一个个体来说，都如此真实</span></span></p>', 0, 47, 1510391835),
(9, '匆匆', '匆匆', '匆匆', '/static/uploads/20171111/b91f8de25efafbc431de1cd6a71677b6.jpg', '<p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);"><span style="border: 0px; margin: 0px; padding: 0px;">在逃去如飞的日子里，在千门万户的世界里的我能做些什么呢？只有徘徊罢了，只有匆匆罢了；在八千多日的匆匆里，除徘徊外，又剩些什么呢？过去的日子如轻烟，被微风吹散了，如薄雾，被初阳蒸融了；我留着些什么痕迹呢？我何曾留着像游丝样的痕迹呢？我赤裸裸来到这世界，转眼间也将赤裸裸地回去罢？但不能平的，为什么偏要白白走这一遭啊？</span></p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);"><span style="border: 0px; margin: 0px; padding: 0px;">你聪明的，告诉我，我们的日子为什么一去不复返呢？</span></p><p><span style="color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);">时光、爱情等都是文学中永恒的话题。对于这篇必背文章，直至现在大家也不会忘却。这些道理即使传承了数千年人类也还是在重蹈覆辙，只是因为没有失去，又怎么会懂珍惜。</span></p>', 3, 46, 1510391875),
(10, '湖心亭看雪', '湖心亭看雪', '湖心亭看雪', '/static/uploads/20171111/8f5325155e522c043f66c0a06bcdbad4.jpg', '<p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);"><span style="border: 0px; margin: 0px; padding: 0px;">崇祯五年十二月，余住西湖。大雪三日，湖中人鸟声俱绝。是日更定矣，余挐一小舟，拥毳衣炉火，独往湖心亭看雪。雾凇沆砀，天与云与山与水，上下一白。湖上影子，惟长堤一痕、湖心亭一点、与余舟一芥、舟中人两三粒而已。</span></p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);"><span style="border: 0px; margin: 0px; padding: 0px;">到亭上，有两人铺毡对坐，一童子烧酒炉正沸。见余，大喜曰：“湖中焉得更有此人？”拉余同饮。余强饮三大白而别。问其姓氏，是金陵人，客此。及下船，舟子喃喃曰：“莫说相公痴，更有痴似相公者！”</span></p><p><span style="color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);">真挚的朋友也好，红袖添香的知己也罢，孤独的人们一直在找寻着如同自己一般的“痴人”，痴人说的不是梦话，只是未遇到能听懂痴话的人。“何夜无月？何处无竹柏？但少闲人如吾两人者耳。”</span></p>', 1, 46, 1510391924),
(11, '荔枝', '生活,亲人', '荔枝', '/static/uploads/20171111/01125f08585b7856a3cb4e8e4b85dbf2.jpg', '<p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: " pingfang="" white-space:="" background-color:=""><span style="border: 0px; margin: 0px; padding: 0px;">“我第一次吃荔枝，是28岁的时候。那是十几年前，我刚从北大荒回到北京，家中只有孤零零的老母。站在荔枝摊前，脚挪不动步。那时，北京很少见到这种南国水果，时令一过，不消几日，再想买就买不到了。想想活到28岁，居然没有尝过荔枝的滋味，再想想母亲快70岁的人了，也从来没有吃过荔枝呢！虽然一斤要好几元，挺贵的，咬咬牙，还是掏出钱买上一斤。那时，我刚在郊区谋上中学老师的职，衣袋里正有当月42元半的工资，硬邦邦的，鼓起几分股气。我想让母亲尝尝鲜，她一定会高兴的。</span></p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: " pingfang="" white-space:="" background-color:=""><span style="border: 0px; margin: 0px; padding: 0px;">回到家，还没容我从书包里掏出荔枝，母亲先端出一盘沙果。这是一种比海棠大不了多少的小果子，居然每个都长着疤，有的还烂了皮，只是让母亲—一剜去了疤，洗得干干净净。每个沙果都显得晶光透亮，沾着晶莹的水珠，果皮上红的纹络显得格外清晰。不知老人家洗了几遍才洗成这般模样。我知道这一定是母亲买的处理水果，每斤顶多5分或者l角。居家过日子，老人就这样一辈子过来了。不知怎么搞的，我一时竟不敢掏出荔枝，生怕母亲骂我大手大脚，毕竟这是那一年里我买的最昂贵的东西了。</span></p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: " pingfang="" white-space:="" background-color:=""><span style="border: 0px; margin: 0px; padding: 0px;">……</span></p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: " pingfang="" white-space:="" background-color:=""><span style="border: 0px; margin: 0px; padding: 0px;">那一晚，正巧有位老师带着几个学生突然到我家做客，望着桌上这两盘水果有些奇怪。也是，一盘沙果伤痕累累，一盘荔枝玲挑剔透，对比过于鲜明。说实话，自尊心与虚荣心齐头并进，我觉得自己仿佛是那盘丑小鸭般的沙果，真恨不得变戏法一样把它一下子变走。母亲端上茶来，笑吟吟顺手把沙果端走，那般不经意，然后回过头对客人说：“快尝尝荔枝吧！”说得那般自然、妥帖。&quot;</span></p><p><br/></p>', 9, 44, 1510391963),
(12, '项脊轩志', '项脊轩志', '项脊轩志', '/static/uploads/20171111/b892fb47c102e0fa7199c4fa76e43531.jpg', '<p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);"><span style="border: 0px; margin: 0px; padding: 0px;">室西连于中闺，先妣尝一至。妪每谓余曰：“某所，而母立于兹。”妪又曰：“汝姊在吾怀，呱呱而泣；娘以指叩门扉曰：‘儿寒乎？欲食乎？’吾从板外相为应答。”语未毕，余泣，妪亦泣。</span></p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);"><span style="border: 0px; margin: 0px; padding: 0px;">……</span></p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);"><span style="border: 0px; margin: 0px; padding: 0px;">庭有枇杷树，吾妻死之年所手植也，今已亭亭如盖矣。</span></p><p><span style="color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);">读书的时候，归有光这篇祭文并没有引起多少人的兴趣，而现在，一句“庭有枇杷树，吾妻死之年所手植也，今已亭亭如盖矣”不知打动了多少人。然而回到前文，其实还有一句令人感动至深却平凡的对白：“儿寒乎？欲食乎？”像不像你的母亲？上一段感情结束的时候，在我哭的最绝望的那一刻，是我的妈妈来安慰我，想想自己能为女生花钱大手大脚，却从来没为妈妈买过一件像样的礼物，真是罪过。</span></p>', 9, 44, 1510392003),
(13, '灯下漫笔', '生活,文化', '灯下漫笔', '/static/uploads/20171111/0a1ff4fdcc8a891e3ff5036d5400f232.jpg', '<p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: " pingfang="" white-space:="" background-color:=""><span style="border: 0px; margin: 0px; padding: 0px;">但我当一包现银塞在怀中，沉垫垫地觉得安心，喜欢的时候，却突然起了另一思想，就是：我们极容易变成奴隶，而且变了之后，还万分喜欢。</span></p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: " pingfang="" white-space:="" background-color:=""><span style="border: 0px; margin: 0px; padding: 0px;">假如有一种暴力，“将人不当人”，不但不当人，还不及牛马，不算什么东西；待到人们羡慕牛马，发生“乱离人，不及太平犬”的叹息的时候，然后给与他略等于牛马的价格，有如元朝定律，打死别人的奴隶，赔一头牛，则人们便要心悦诚服，恭颂太平的盛世。为什么呢？因为他虽不算人，究竟已等于牛马了。</span></p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: " pingfang="" white-space:="" background-color:=""><span style="border: 0px; margin: 0px; padding: 0px;">……</span></p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: " pingfang="" white-space:="" background-color:=""><span style="border: 0px; margin: 0px; padding: 0px;">但实际上，中国人向来就没有争到过“人”的价格，至多不过是奴隶，到现在还如此，然而下于奴隶的时候，却是数见不鲜的。中国的百姓是中立的，战时连自己也不知道属于那一面，但又属于无论那一面。强盗来了，就属于官，当然该被杀掠；官兵既到，该是自家人了罢，但仍然要被杀掠，仿佛又属于强盗似的。这时候，百姓就希望有一个一定的主子，拿他们去做百姓，——不敢，是拿他们去做牛马，情愿自己寻草吃，只求他决定他们怎样跑。</span></p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: " pingfang="" white-space:="" background-color:=""><span style="border: 0px; margin: 0px; padding: 0px;">……</span></p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: " pingfang="" white-space:="" background-color:=""><span style="border: 0px; margin: 0px; padding: 0px;">任凭你爱排场的学者们怎样铺张，修史时候设些什么“汉族发祥时代”“汉族发达时代”“汉族中兴时代”的好题目，好意诚然是可感的，但措辞太绕湾子了。有更其直捷了当的说法在这里——</span></p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: " pingfang="" white-space:="" background-color:=""><span style="border: 0px; margin: 0px; padding: 0px;">一，想做奴隶而不得的时代；</span></p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; color: rgb(25, 25, 25); font-family: " pingfang="" white-space:="" background-color:=""><span style="border: 0px; margin: 0px; padding: 0px;">二，暂时做稳了奴隶的时代。</span></p><p><br/></p>', 18, 44, 1510392304);

-- --------------------------------------------------------

--
-- 表的结构 `tp5_cate`
--

CREATE TABLE IF NOT EXISTS `tp5_cate` (
  `ID` mediumint(9) NOT NULL AUTO_INCREMENT,
  `catename` varchar(30) NOT NULL COMMENT '栏目名称',
  `keywords` varchar(150) NOT NULL COMMENT '栏目关键字',
  `desc` text NOT NULL COMMENT '栏目描述',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '栏目类型0列表1留言',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- 转存表中的数据 `tp5_cate`
--

INSERT INTO `tp5_cate` (`ID`, `catename`, `keywords`, `desc`, `type`) VALUES
(48, '留言本', '留言本', '', 1),
(47, '圈圈说', '圈圈说', '', 0),
(46, '如是观', '如是观', '', 0),
(45, '光影阑珊', '', '', 0),
(44, '大生活', '笑话', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp5_guest`
--

CREATE TABLE IF NOT EXISTS `tp5_guest` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `homepage` varchar(150) NOT NULL,
  `content` text NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `tp5_guest`
--

INSERT INTO `tp5_guest` (`id`, `nickname`, `email`, `homepage`, `content`, `time`) VALUES
(1, '龙的传人', 'long@qq.com', 'long.com', '我们都是龙的传人', 1510470877),
(2, '美洲站长', 'zz@mzz.com', 'mzz.com', '我是美洲站长，期待您的回复！', 1510471711),
(3, '袋鼠', 'sz@daishu.com', 'daishu.com', '过来踩踩，欢迎您的回访......', 1510472640),
(4, '店小二', 'dxe@qq.com', 'dxe.com', '客官里面请！', 1510473158);

-- --------------------------------------------------------

--
-- 表的结构 `tp5_link`
--

CREATE TABLE IF NOT EXISTS `tp5_link` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL COMMENT '链接标题',
  `desc` varchar(255) NOT NULL COMMENT '链接描述',
  `url` varchar(60) NOT NULL COMMENT '链接地址',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `tp5_link`
--

INSERT INTO `tp5_link` (`id`, `title`, `desc`, `url`) VALUES
(2, '腾讯', '腾讯QQ', 'http://qq.com'),
(3, '阿里巴巴', '阿里巴巴网站', 'http://alibaba.com'),
(5, '十九大', '十九大好', 'http://shijiuda.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
