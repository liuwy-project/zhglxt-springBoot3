/*
 Navicat Premium Dump SQL

 Source Server         : localhost_mysql8.0
 Source Server Type    : MySQL
 Source Server Version : 80041 (8.0.41)
 Source Host           : localhost:3308
 Source Schema         : zhglxt

 Target Server Type    : MySQL
 Target Server Version : 80041 (8.0.41)
 File Encoding         : 65001

 Date: 27/06/2025 11:29:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cms_advertising
-- ----------------------------
DROP TABLE IF EXISTS `cms_advertising`;
CREATE TABLE `cms_advertising`  (
  `id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键id',
  `site_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '站点编号',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '广告标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '广告内容',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '图片名称',
  `image_url` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '图片地址',
  `jump_url` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '图片跳转的链接地址',
  `sort` int NULL DEFAULT 0 COMMENT '排序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '0.启用、1.停用',
  `create_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '轮询广告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_advertising
-- ----------------------------
INSERT INTO `cms_advertising` VALUES ('5cfd370fec874805b16fa44879bcc947', '292cba294f8b4a0eba62452aa21b6ef5', '二', '我们的目的是活得更好，而不是战胜别人；没有一个足够宽容的心，就看不到春光明媚的世界！', '1609054640101.jpg', '/zhglxt/userfiles/system/images/cms/ADImages/1609054640101.jpg', 'https://www.runoob.com/mysql/mysql-tutorial.html', 20, '0', 'system', '2019-12-16 21:52:44', 'system', '2021-06-25 20:40:13', '官网首页轮播图001');
INSERT INTO `cms_advertising` VALUES ('b925e7b8bfb44452b3a377a0b21629cd', '292cba294f8b4a0eba62452aa21b6ef5', '三', '叫醒我们的是梦想，而不是闹钟。每一个清晨，给自己一个微笑，通过自己的努力换取成功，活出真正的自我！', '1609054640886.jpg', '/zhglxt/userfiles/system/images/cms/ADImages/1609054640886.jpg', 'https://www.w3school.com.cn/', 50, '0', 'system', '2019-12-16 22:27:31', 'system', '2021-06-25 20:40:23', '官网首页轮播图003');
INSERT INTO `cms_advertising` VALUES ('fb1d48c8cf364e18811ed9b43522ac13', '292cba294f8b4a0eba62452aa21b6ef5', '一', '世界很小，请带着梦想一起奔跑；世界很大，请带着坚持努力成长。不走心的努力，都是在敷衍自己，每一个努力过的脚印都是相连的，它一步一步带你到达远方。', '1609054640648.jpg', '/zhglxt/userfiles/system/images/cms/ADImages/1609054640648.jpg', 'https://www.runoob.com/bootstrap/bootstrap-tutorial.html', 10, '0', 'system', '2019-12-16 22:27:12', 'system', '2021-07-05 22:55:28', '官网首页轮播图002');

-- ----------------------------
-- Table structure for cms_article
-- ----------------------------
DROP TABLE IF EXISTS `cms_article`;
CREATE TABLE `cms_article`  (
  `id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键id',
  `site_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '站点id',
  `column_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '栏目id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `title_color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题颜色',
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文章链接',
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文章图片路径',
  `image_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文章图片名称',
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关键字',
  `sort` int NULL DEFAULT NULL,
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述、摘要',
  `weight` int NULL DEFAULT NULL COMMENT '权重，越大越靠前',
  `weight_time` datetime NULL DEFAULT NULL COMMENT '权重期限',
  `hits` int NULL DEFAULT NULL COMMENT '点击数',
  `posid` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '推荐位，多选',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '0.显示、1.隐藏',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_article
-- ----------------------------
INSERT INTO `cms_article` VALUES ('0461d49f0fb8442b8855277ef5987a52', '292cba294f8b4a0eba62452aa21b6ef5', '26615be24f8040f18bf7c086c9676408', '2019.08.08', NULL, NULL, '', NULL, NULL, 30, 'xx集团成立', NULL, NULL, NULL, NULL, '0', 'system', '2021-03-30 16:26:52', 'system', '2021-06-30 19:59:47', '');
INSERT INTO `cms_article` VALUES ('1829d3c253eb42bfa1e228d4aa1894cf', '292cba294f8b4a0eba62452aa21b6ef5', '65c7cbe937cd4b688b48b9a5cccc0450', '跨出你的第一步', NULL, NULL, '/zhglxt/userfiles/system/images/cms/solution/1608998213442.jpg', '1608998213442.jpg', NULL, 50, '碰上自己想做的事情就去做、想达成的目标就去冲，不要给自己太多理由来逃避，或许会担心害怕，毕竟是自己从来没面对过这些问题，但重点是你敢不敢跨出第一步，当你用着必死...', NULL, NULL, NULL, NULL, '0', 'system', '2020-12-26 23:58:08', 'system', '2020-12-27 18:57:21', '跨出你的第一步');
INSERT INTO `cms_article` VALUES ('1cd8420837cd457bb5273549215685fc', '292cba294f8b4a0eba62452aa21b6ef5', '65c7cbe937cd4b688b48b9a5cccc0450', '目标不同美丽不同', NULL, NULL, '/zhglxt/userfiles/system/images/cms/solution/1608998631872.jpg', '1608998631872.jpg', NULL, 30, '如你所说，每个人目标不同，选择方向都不同，你有美丽的风景，而我的景色也不差，只是当我们走过这些景点的时候，要确信自己的心血是值得的，不是跟着别人而走的，但话说回...', NULL, NULL, NULL, NULL, '0', 'system', '2020-12-26 22:16:03', 'system', '2020-12-27 18:56:54', '目标不同美丽不同');
INSERT INTO `cms_article` VALUES ('290ee3960c16499a82131e760b448610', '292cba294f8b4a0eba62452aa21b6ef5', 'd792ede14a5e4ba9816c6ac6becc03cc', '联系我们', NULL, NULL, '/zhglxt/userfiles/system/images/cms/contact/1609059459536.jpg', '1609059459536.jpg', NULL, 10, '联系我们', NULL, NULL, NULL, NULL, '0', 'system', '2020-12-27 16:32:31', 'system', '2021-01-06 19:09:27', '联系我们');
INSERT INTO `cms_article` VALUES ('3a2db050ac3a4433a5f233b32767a437', '292cba294f8b4a0eba62452aa21b6ef5', '26615be24f8040f18bf7c086c9676408', '2021.03.30', NULL, NULL, '', NULL, NULL, 10, '荣获xx省“xxx”企业称号', NULL, NULL, NULL, NULL, '0', 'system', '2021-03-30 16:35:04', 'system', '2021-06-25 20:42:10', '');
INSERT INTO `cms_article` VALUES ('3f757e65b304439b82a76f028b82a914', '292cba294f8b4a0eba62452aa21b6ef5', '22be2c4656ed47388c2a6f2160a87879', '面对人生微笑着苦中作乐', NULL, NULL, '/zhglxt/userfiles/system/images/cms/news/1608999471724.jpg', '1608999471724.jpg', NULL, 30, '我不喜欢把自己的人生看成是悲剧，人生苦短，快乐不多，而且常常还得面临不同人带来的许多的痛苦跟伤害，但是你能做的有很多，行为可以带来美好、心态也行，别人给的伤害或...', NULL, NULL, NULL, NULL, '0', 'system', '2020-12-27 00:19:43', 'system', '2020-12-29 16:15:14', '面对人生微笑着苦中作乐');
INSERT INTO `cms_article` VALUES ('43598709c98648e5b9124139040bd500', '292cba294f8b4a0eba62452aa21b6ef5', 'b00a3e03c0f548f0815fcc04634c315c', '关于我们', NULL, NULL, '/zhglxt/userfiles/system/images/cms/about/1609058741059.jpg', '1609058741059.jpg', NULL, 10, '关于我们', NULL, NULL, NULL, NULL, '0', 'system', '2020-12-27 16:45:44', 'system', '2021-07-07 15:06:47', '关于我们');
INSERT INTO `cms_article` VALUES ('4e000d5edb5e48e4bbf7d04ef9d8f616', '292cba294f8b4a0eba62452aa21b6ef5', '22be2c4656ed47388c2a6f2160a87879', '不能决定未来那就决定当下', NULL, NULL, '/zhglxt/userfiles/system/images/cms/news/1609159061895.jpg', '1609159061895.jpg', NULL, 40, '不管过去你做了多少选择跟决定，你无法预料下一秒到底会发生什么事情，就算你步步为营的经营着人生，同样的风风雨雨还是可能会在你无意中来袭，这些突发状况可能好、可能不...', NULL, NULL, NULL, NULL, '0', 'system', '2020-12-28 20:30:01', 'system', '2020-12-28 20:47:45', '不能决定未来那就决定当下');
INSERT INTO `cms_article` VALUES ('7752d4a2a6db478ead2b88e24593866c', '292cba294f8b4a0eba62452aa21b6ef5', '65c7cbe937cd4b688b48b9a5cccc0450', '自我提高的方法', NULL, NULL, '/zhglxt/userfiles/system/images/cms/solution/1608998213555.jpg', '1608998213555.jpg', NULL, 60, '在成长生活中，我一直在寻找能够提升自我的方法途径。我已经找到了14个最好的技巧可以帮助你更好的提升自我。其中有一些简单方法步骤你可以立即开始去做，还有一些更大的计...', NULL, NULL, NULL, NULL, '0', 'system', '2020-12-26 23:59:29', 'system', '2020-12-27 18:57:30', '自我提高的方法');
INSERT INTO `cms_article` VALUES ('8d9861ed2e294d2793ad912e346e168f', '292cba294f8b4a0eba62452aa21b6ef5', '26615be24f8040f18bf7c086c9676408', '2020.08.08', NULL, NULL, '', NULL, NULL, 20, '荣获xxx颁发的“技术创新先进企业\"', NULL, NULL, NULL, NULL, '0', 'system', '2021-03-30 16:33:21', 'system', '2021-06-25 20:42:41', '');
INSERT INTO `cms_article` VALUES ('ad1e4af494624d0791643c9f0ddbd124', '292cba294f8b4a0eba62452aa21b6ef5', '22be2c4656ed47388c2a6f2160a87879', '踏出梦想第一步', NULL, NULL, '/zhglxt/userfiles/system/images/cms/news/1608999471455.jpg', '1608999471455.jpg', NULL, 10, '一件事情，没有踏出第一步（开个头），那你就永远没有前进的机会，可能许许多多因素让你顾虑、担心，这都是一定会有的现象，但是你会不会因为...', NULL, NULL, NULL, NULL, '0', 'system', '2020-12-27 00:18:06', 'system', '2021-01-04 21:14:33', '踏出梦想第一步');
INSERT INTO `cms_article` VALUES ('af97301ee4f1448e98b6ef61e667106e', '292cba294f8b4a0eba62452aa21b6ef5', '65c7cbe937cd4b688b48b9a5cccc0450', '海伦.凯勒带给我们的启示', NULL, NULL, '/zhglxt/userfiles/system/images/cms/solution/1608998631617.jpg', '1608998631617.jpg', NULL, 20, '如果你耳朵听不见、眼睛看不到，要怎样有勇气活下去？就是有人活下去了，那个人就是海伦．凯勒。 海伦．凯勒一出生就听不见、看不到，所以学习对她来说是非常困难的，但是...', NULL, NULL, NULL, NULL, '0', 'system', '2020-12-26 22:15:25', 'system', '2020-12-27 18:56:43', '海伦.凯勒带给我们的启示');
INSERT INTO `cms_article` VALUES ('c0635501f7ac45d7b66255d287c3193a', '292cba294f8b4a0eba62452aa21b6ef5', '22be2c4656ed47388c2a6f2160a87879', '不要说从头我们该看以后', NULL, NULL, '/zhglxt/userfiles/system/images/cms/news/1608999471597.jpg', '1608999471597.jpg', NULL, 20, '面对到不同的问题，我们无法做到尽善尽美，有时候选择错一个方法，有时候踏错了一步伐，这些都会发生，不过人生嘛，总是在错误中学习成长的，你没有用错方法、踏错步伐，你...', NULL, NULL, NULL, NULL, '0', 'system', '2020-12-27 00:19:00', 'system', '2020-12-29 16:15:04', '不要说从头我们该看以后');
INSERT INTO `cms_article` VALUES ('c1c66a2fee6347f5a4021ce953b89694', '292cba294f8b4a0eba62452aa21b6ef5', '65c7cbe937cd4b688b48b9a5cccc0450', '尽力而为的美好', NULL, NULL, '/zhglxt/userfiles/system/images/cms/solution/1608998213295.jpg', '1608998213295.jpg', NULL, 40, '决定一个目标就该去冲、去闯，但内心请记得保持着一种态度，那就是尽力而为的态度，或许能顺利的达成目标，那就可喜可贺，但若没达成目标，请也给自己一些掌声，因为你尽力...', NULL, NULL, NULL, NULL, '0', 'system', '2020-12-26 23:39:42', 'system', '2020-12-27 18:57:10', '尽力而为的美好');
INSERT INTO `cms_article` VALUES ('f88b9abdcf414b2cb9afea4d0f11f39f', '292cba294f8b4a0eba62452aa21b6ef5', '65c7cbe937cd4b688b48b9a5cccc0450', '失败不是一种过错', NULL, NULL, '/zhglxt/userfiles/system/images/cms/solution/1609159002670.jpg', '1609159002670.jpg', NULL, 70, '失败不是自己的错，不要把自己打入十八层地狱，可能方法错、选择错、观念错，但是失败只是还没成功而已，不需要认为自己是个失败者，失败的是还没达成（或错过）你要达成的...', NULL, NULL, NULL, NULL, '0', 'system', '2020-12-28 20:28:24', 'system', '2020-12-28 20:47:38', '失败不是一种过错');
INSERT INTO `cms_article` VALUES ('fb2367bb887c4a5192f26c268df2a6ca', '292cba294f8b4a0eba62452aa21b6ef5', '65c7cbe937cd4b688b48b9a5cccc0450', '超越自我，才是真我风采', NULL, NULL, '/zhglxt/userfiles/system/images/cms/solution/1608998631474.jpg', '1608998631474.jpg', NULL, 10, '在城市的高速发展路上，社会上有了方方面面的变化，从以前的农耕社会进步到现在资本社会，人的生活方式上也发生了改变，改变的背后还有一股股的压力，这些压力一方面在推动社会的前进，同时不知不觉中把人...', NULL, NULL, NULL, NULL, '0', 'system', '2021-01-04 20:40:16', 'system', '2021-01-04 21:05:04', '超越自我，才是真我风采');

-- ----------------------------
-- Table structure for cms_article_data
-- ----------------------------
DROP TABLE IF EXISTS `cms_article_data`;
CREATE TABLE `cms_article_data`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键id',
  `article_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文章id',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '文章内容',
  `copyfrom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文章来源',
  `relation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '相关文章',
  `allow_comment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否允许评论',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章详细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_article_data
-- ----------------------------
INSERT INTO `cms_article_data` VALUES ('04c05db767384618a66165b18b743d88', 'ad1e4af494624d0791643c9f0ddbd124', '<h1 style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-weight: bold; font-family: 微软雅黑, Arial, sans-serif; font-size: 24px; text-align: center; color: rgb(53, 53, 53); height: 60px; line-height: 60px;\">踏出梦想第一步</h1><div class=\"articleads2\" style=\"float: right; color: rgb(68, 68, 68); font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; margin-left: 6px !important;\"></div><div class=\"articleContent\" style=\"margin: 10px 0px 12px; line-height: 2; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;; height: auto !important;\">一件事情，没有踏出第一步（开个头），那你就永远没有前进的机会，可能许许多多因素让你顾虑、担心，这都是一定会有的现象，但是你会不会因为这些担心的事情而把自己绑再原地而不愿意前进呢？一个目标，你必须踏出第一步，才有可能到达目的地，也才有机会去完成你要完成的事情，没有第一步，以后几千几万步都是空谈的天马行空。<br><br>一个目标、一个想法无论过程会有什么挑战，前提是你要自己把第一步跨出去，路途是好是坏是辛苦是甜美都无法预料，你认为会很辛苦、很难熬的路程，它同样有让你回味无穷的山林美景；一段你认为很美好很平稳的旅途，它也可能会有突然的暴风雨甚至下大雪的可能，你不需要担心东担心西，把工具准备好、心态调适好，然后就出发吧，你该有的不是担心，而是勇气。</div>', NULL, NULL, NULL);
INSERT INTO `cms_article_data` VALUES ('07615c6f67cf4e48a15f210d6dd12519', '0461d49f0fb8442b8855277ef5987a52', '<p>注册成立xx集团</p>', NULL, NULL, NULL);
INSERT INTO `cms_article_data` VALUES ('1487fb94018f47f0a75c35a2f7314fcd', '1829d3c253eb42bfa1e228d4aa1894cf', '<h1 style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-weight: bold; font-family: 微软雅黑, Arial, sans-serif; font-size: 24px; text-align: center; color: rgb(53, 53, 53); height: 60px; line-height: 60px;\">跨出你的第一步</h1><div class=\"articleads2\" style=\"float: right; color: rgb(68, 68, 68); font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; margin-left: 6px !important;\"></div><div class=\"articleContent\" style=\"margin: 10px 0px 12px; line-height: 2; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;; height: auto !important;\">碰上自己想做的事情就去做、想达成的目标就去冲，不要给自己太多理由来逃避，或许会担心害怕，毕竟是自己从来没面对过这些问题，但重点是你敢不敢跨出第一步，当你用着必死的决心，豁达的走出这条路的第一步，那其实问题也已经减少一半，怕就怕许多人都把各种理由当成可以逃避的借口，连第一步都不愿意给自己机会，随时都想着用理由来让自己放弃第一步的跨出。<br><br>我们毕竟都是会担心害怕，怕遇上无法预料的问题、怕遇上没处理过的事情，但这些问题在你未跨出第一步的时候，其实根本都不会发生，只是你用来逃避问题的理由罢了，然而当你跨出第一步了，那你也不需要担心任何问题，因为船到桥头自然直啊！你有勇气跨出第一步，就也会有勇气解决以后的任何<a href=\"https://www.51flash.com/zheligushi/17495.html\" style=\"color: rgb(19, 110, 194);\">问题</a>，可是你必须给自己机会挑战新的道路跟方向。</div>', NULL, NULL, NULL);
INSERT INTO `cms_article_data` VALUES ('2412fb8814aa46f8bac6907b4b6a2609', 'f88b9abdcf414b2cb9afea4d0f11f39f', '<h1 style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-weight: bold; font-family: 微软雅黑, Arial, sans-serif; font-size: 24px; text-align: center; color: rgb(53, 53, 53); height: 60px; line-height: 60px;\">失败不是一种过错</h1><div class=\"articleads2\" style=\"float: right; color: rgb(68, 68, 68); font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; margin-left: 6px !important;\"></div><div class=\"articleContent\" style=\"margin: 10px 0px 12px; line-height: 2; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;; height: auto !important;\">失败不是自己的错，不要把自己打入十八层地狱，可能方法错、选择错、观念错，但是失败只是还没成功而已，不需要认为自己是个失败者，失败的是还没达成（或错过）你要达成的目标（事情），不是你自己本身是个失败，若将自己人生套上失败的紧箍咒，让负面情绪持续影响着你，以后将会导致更多的失败而已。<br><br>失败不是自己的错，这点一定要记住，不要事情已经失败还把自己的信心都赔上去，思考一下到底是选择错误的方式所造成的，还是因为自己的观念错误而导致，改变过去错误的方法，但不要消灭自己的自信，许多人失败就把自己认定为失败者，可是你的失败只是面对这件事情而失败，不是你的人生都失败。</div>', NULL, NULL, NULL);
INSERT INTO `cms_article_data` VALUES ('3d3f80519bef469e88c47da207f9e954', '4e000d5edb5e48e4bbf7d04ef9d8f616', '<h1 style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-weight: bold; font-family: 微软雅黑, Arial, sans-serif; font-size: 24px; text-align: center; color: rgb(53, 53, 53); height: 60px; line-height: 60px;\">不能决定未来那就决定当下</h1><div class=\"articleads2\" style=\"float: right; color: rgb(68, 68, 68); font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; margin-left: 6px !important;\"></div><div class=\"articleContent\" style=\"margin: 10px 0px 12px; line-height: 2; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;; height: auto !important;\">不管过去你做了多少选择跟决定，你无法预料下一秒到底会发生什么事情，就算你步步为营的经营着人生，同样的风风雨雨还是可能会在你无意中来袭，这些突发状况可能好、可能不好，有时候你表面以为是倒楣的事情，却可能在背后替你挡下大灾难，也可能表面看上去是好事，结果实际上失去的远比得到的还要多；只是不管以后，你要管的只有现在。<br><br>你无法知道你的选择或决定对未来会产生什么影响，但是每个选择总有好坏之分，你选择好的方向，虽然过程可能会很辛苦，但结果还有对于以后的影响，一定是有帮助的；但若只因为想要轻松愉快甚至想自私的得到不该有的富有，或许当下轻松了、能享受了，但以后肯定会由盛转衰，毕竟你已经享受了美好的结果，那以后只剩下辛苦的耕耘。</div>', NULL, NULL, NULL);
INSERT INTO `cms_article_data` VALUES ('4163a2dc75bb4a1b86c0b1828bf0941a', '290ee3960c16499a82131e760b448610', '<h3 style=\"font-family: 微软雅黑; font-weight: bold; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; text-align: center; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><dt style=\"line-height: 1.42857; font-weight: 400; list-style-position: outside; list-style-type: none; margin: 0px; padding: 5px 0px 20px 50px; border: 0px; background: url(&quot;https://file.caixin.com/images/channel/aboutus/images/add.gif&quot;) no-repeat rgb(248, 248, 248); height: 40px; color: rgb(40, 40, 40); font-size: 14px; text-align: start;\">地址：xx市xx区xx路xx号xx楼xx层，邮政编码：xxxxx</dt><dd style=\"line-height: 26px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; list-style-position: outside; list-style-type: none; padding: 5px 0px 0px 50px; border: 0px; background: url(&quot;https://file.caixin.com/images/channel/aboutus/images/ico_04.jpg&quot;) no-repeat rgb(248, 248, 248); color: rgb(40, 40, 40); font-size: 14px; font-weight: 400; text-align: start;\"><p style=\"margin-bottom: 0px; padding: 0px; border: 0px;\">总机：010-8590-xxx/xxx</p><p style=\"margin-bottom: 0px; padding: 0px; border: 0px;\">传真：010-8590-xxx</p><p style=\"margin-bottom: 0px; padding: 0px; border: 0px;\">&nbsp;</p><p style=\"margin-bottom: 0px; padding: 0px; border: 0px;\">客服热线：400-696-0110/010-xxxxxx</p><p style=\"margin-bottom: 0px; padding: 0px; border: 0px;\">&nbsp;</p><p style=\"margin-bottom: 0px; padding: 0px; border: 0px;\">网站广告热线：010-8590-xxxx</p><p style=\"margin-bottom: 0px; padding: 0px; border: 0px;\">杂志广告热线：010-8590-xxxx/xxxx</p><p style=\"margin-bottom: 0px; padding: 0px; border: 0px;\">&nbsp;</p><p style=\"margin-bottom: 0px; padding: 0px; border: 0px;\">网站市场热线：010-8590-xxxx</p><p style=\"margin-bottom: 0px; padding: 0px; border: 0px;\">会议合作热线：010-8590-xxxx</p><p style=\"margin-bottom: 0px; padding: 0px; border: 0px;\">培训合作热线：010-8590-xxxx/xxxx</p><p style=\"margin-bottom: 0px; padding: 0px; border: 0px;\">媒体合作热线：010-8590-xxxx</p><p style=\"margin-bottom: 0px; padding: 0px; border: 0px;\">渠道合作热线：010-8564-xxxx</p></dd></h3>', NULL, NULL, NULL);
INSERT INTO `cms_article_data` VALUES ('4d3d8984f4814a7e86f676d1dbc0f0ea', 'c1c66a2fee6347f5a4021ce953b89694', '<h1 style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-weight: bold; font-family: 微软雅黑, Arial, sans-serif; font-size: 24px; text-align: center; color: rgb(53, 53, 53); height: 60px; line-height: 60px;\">尽力而为的美好</h1><div class=\"articleads2\" style=\"float: right; color: rgb(68, 68, 68); font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; margin-left: 6px !important;\"></div><div class=\"articleContent\" style=\"margin: 10px 0px 12px; line-height: 2; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;; height: auto !important;\">决定一个目标就该去冲、去闯，但内心请记得保持着一种态度，那就是尽力而为的态度，或许能顺利的达成目标，那就可喜可贺，但若没达成目标，请也给自己一些掌声，因为你尽力了，可能是环境不对、心态不对或是方法任何因素的问题，但你自己知道你已经尽力在当下用最极限的努力去迈向目标，只是还没成功而已。<br><br>还没成功不代表失败，只是我们还在成功的路上尚未到达终点，不要因此把自己的自信抹灭掉，也不需要认为自己输掉什么或失去什么，这次或许没达到目标，但肯定的是我们离成功又再靠近许多，或许看着别人成功会羡慕、或许压力会变大，只是已经尽力的自己也该值得鼓励，没成功不需要把自己打入十八层地狱。</div>', NULL, NULL, NULL);
INSERT INTO `cms_article_data` VALUES ('6f89661448d44cf5b6ac0f5fc54f9d47', '3a2db050ac3a4433a5f233b32767a437', '<p>荣获xx省“xxx”企业称号<br></p>', NULL, NULL, NULL);
INSERT INTO `cms_article_data` VALUES ('7d361f38ab364a439ca945e51cb55363', '7752d4a2a6db478ead2b88e24593866c', '<h1 style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-weight: bold; font-family: 微软雅黑, Arial, sans-serif; font-size: 24px; text-align: center; color: rgb(53, 53, 53); height: 60px; line-height: 60px;\">自我提高的方法</h1><div class=\"articleads2\" style=\"float: right; color: rgb(68, 68, 68); font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; margin-left: 6px !important;\"></div><div class=\"articleContent\" style=\"margin: 10px 0px 12px; line-height: 2; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;;\">在成长生活中，我一直在寻找能够提升自我的方法途径。我已经找到了14个最好的技巧可以帮助你更好的提升自我。其中有一些简单方法步骤你可以立即开始去做，还有一些更大的计划你需要更多的努力去完成。<br><br><strong>1.每天读书。</strong><br><br>书是智慧的源泉。你读的书越多，你就会变得更加有智慧。都有什么书可以让你提高自己呢？我看过的《正能量》、《高效能人士的7个习惯》、《从优秀到卓越》等等都是很好的<a href=\"https://www.51flash.com/lizhi/lizhishuji/\" style=\"color: rgb(19, 110, 194);\">励志书籍</a>，可以帮助你认识自己，同时<a href=\"https://www.51flash.com/lizhi/lizhishuji/94.html\" style=\"color: rgb(19, 110, 194);\">正确认识自己是一种能力</a>。<br><br><strong>2.学习新的语言。</strong><br><br>学习一门新的语言是一项挑战，你可以通过学习语言来了解不同的文化背景，丰富自己的知识。前一阵俄罗斯大选时，我就学习了俄语的一些基本语句，很有意思。你还在苦苦学习英语么？为什么不去学习新的语言呢，也许有更适合你的语言等着你去发掘。<br><br><strong>3.打造你的灵感空间。</strong><br><br>你的生活环境会影响你的情绪，如果你生活在一个充满灵感的环境中，你每天都会富有创造力和激情。如果你的房间还是一团糟的话，是时候改造它了。从小事做起，先整理你的桌面吧。<br><br><strong>4.战胜你的恐惧。</strong><br><br>不得不说的是，每个人都有他害怕的东西。有人害怕在众人面前演讲，害怕成功，害怕冒险，害怕鬼怪，甚至是害怕毛毛虫。你也有害怕的东西吧？为什么不花时间去战胜你的恐惧呢？这会帮助你成长的。<br><br><strong>5.升级你的技能。</strong><br><br>如果你玩过角色扮演游戏的话，你应该了解升级的概念——通过增加经验值，你会变得更加强壮，更加厉害。我们的生活就好似一场真实的角色扮演游戏，只不过你不能任意存档或者读档（这就是现实与虚拟的区别）。我总是在学习新的知识，不断升级我的技能，在过去的一年里，我为自己增添了很多技能。这些新技能也是战胜强大“Boss”（生活中的困难）的最大资本。你会为自己升级哪些技能呢？ 可以看看这篇<a href=\"https://www.51flash.com/lizhi/xuexifangfa/379.html\" style=\"color: rgb(19, 110, 194);\">激发创造力的三个小练习</a>。<br><br><strong>6.给未来的自己写一封信。</strong><br><br>5年后的自己会是什么样的呢？你可以写一封信给5年后的自己，我想你一定有很多话要说：“告诉自己要好好学习，珍惜时间……不要做浪费时间的事情”亦或是“珍惜身边的朋友，亲人……” 好吧，既然这样，为什么不从现在开始珍惜生活呢？要知道，现在的每一步都在书写自己的历史。我想5年后的自己应该不仅仅是身体上的成长，思想与心灵也应该更加成熟。<br><br><strong>7.承认自己的缺点。</strong><br><br>每个人都有缺点，但重点是了解它们，承认它们，并且重视它们。你的缺点是什么呢？不用告诉我，用自己的行动去改掉吧！<br><br><strong>8.立即行动。</strong><br><br>我承认天枰座的我确实有时会变得非常犹豫，不知道该怎么选择。<a href=\"https://www.51flash.com/lizhi/lizhiwenzhang/\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">励志文章</a>&nbsp;<a href=\"https://www.51flash.com/\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">www.51fLash.com</a>&nbsp;后来，我找到了克服犹豫的秘诀——立即行动。通常一件事我会在60秒内果断下决定，然后立即执行。这样我就不会给自己任何时间去犹豫不决。自从我养成了立即行动的习惯，我的效率变得更高了，我节省了一大笔时间去做事情，而不是去想，去犹豫。我认为，<a href=\"https://www.51flash.com/lizhi/lizhigushi/397.html\" style=\"color: rgb(19, 110, 194);\">立即行动</a>的习惯是每个人都应该努力培养的，这会给你的生活带来巨大的改变。<br><br><strong>9.向你佩服的人学习。</strong><br><br>每个人在生活中都有自己佩服的人，他们可以是伟大人物，也可以是你的朋友，你的亲人，甚至是一个陌生人。我在参加运动会的时候，非常佩服5000米比赛的第一名，每一次他从我身边跑过，我为他坚定地眼神所折服。尽管他大口喘着粗气，汗流浃背，但是他还是没有放慢脚步。我想，这种坚毅的眼神正是我所缺少的，我要向他学习。你也有佩服的人吧？你之所以佩服那个人，是因为他们身上拥有某种你没有的东西，而这种东西正是你所缺少的。所以，向你佩服的人学习，从他们身上获得新的能力。<br><br><strong>10.减少在QQ上的时间。</strong><br><br>我已经认识到自己养成了一个不好的习惯，那就是每次打开电脑第一件事就是挂上QQ，我的很多朋友也有这个习惯。当你挂着QQ的时候，你会不时的收到聊天信息，打断你正在进行的工作。每当你停下手头工作去查看QQ消息的时候，你的时间被浪费了，而重新进行工作又需要一定的“转换时间”。<br><br><strong>11.培养一个新的习惯。</strong><br><br>30天可以培养一个新的习惯，我在用Any.Do这个软件管理时间时，我设定了培养新习惯的计划。将一个任务设定成每日重复，每天只需完成这个任务，这样30天后我就养成了新的习惯。现在，我通过每日习惯计划已经养成了每天做50个俯卧撑；每天早上读一个小时英语；每天听写VOA英语；每天6：30起床…… 习惯一旦养成，就很容易做到了。<br><br><strong>12.让过去的过去。</strong><br><br>你是否曾经有过一些不愉快的事情呢？如果有的话，是时候让它们随风而去了。记着那些事情只会阻挡你前进的步伐。你是否有时会焦虑呢？不如看看这篇《如何消除焦虑情绪 》。<br><br><strong>13.送人玫瑰手有余香。</strong><br><br>你对别人好，别人也会对你好。事实上，我们很多人并不能够做到这一点。我们看到别人的缺点，总是想以一个长者的身份教育别人，但是殊不知每个人都有自己的生活，你不能将你的意志强加于别人身上。试着尊重他人的想法与生活习惯，更多的帮助他们，你会发现与人相处好其实很简单。<br><br><strong>14.好好休息。</strong><br><br>个人提升不是一朝一夕就能完成的，它需要我们持之以恒的努力与<a href=\"https://www.51flash.com/339.html\" style=\"color: rgb(19, 110, 194);\">勤奋</a>。当我们看书累了的时候，要懂得休息，听听轻音乐，舒缓心情。散散步，亲近大自然。只有休息好了，我们才能更好的前行。</div>', NULL, NULL, NULL);
INSERT INTO `cms_article_data` VALUES ('7da2f93f3b0b4a77a220a328b3024ee3', 'c0635501f7ac45d7b66255d287c3193a', '<h1 style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-weight: bold; font-family: 微软雅黑, Arial, sans-serif; font-size: 24px; text-align: center; color: rgb(53, 53, 53); height: 60px; line-height: 60px;\">不要说从头我们该看以后</h1><div class=\"articleads2\" style=\"float: right; color: rgb(68, 68, 68); font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; margin-left: 6px !important;\"></div><div class=\"articleContent\" style=\"margin: 10px 0px 12px; line-height: 2; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;; height: auto !important;\">面对到不同的问题，我们无法做到尽善尽美，有时候选择错一个方法，有时候踏错了一步伐，这些都会发生，不过人生嘛，总是在错误中学习成长的，你没有用错方法、踏错步伐，你又能如何知道原来还有更好的方式去处理这些问题，只是错了就错了，一直想着如果以前怎么做、怎么做就不会发生这种后果的话，你又如何能面对以后的人生。<br><br>以前的种种就放给过去吧！过去的所有请告诉自己不要后悔也不要用以后的人生来浪费，你只要能从过去的经历学得以后面对人生的经验，那过去的选择错或对，已经发生，无法改变也不可能让你重新来过，但我们必须看着以后的人生，从以前的错误选择、错误决定中得到教训，让过去的不好变成以后的好。<div class=\"google-auto-placed ap_container\" style=\"width: 625px; height: auto; clear: both; text-align: center;\"><ins data-ad-format=\"auto\" class=\"adsbygoogle adsbygoogle-noablate\" data-ad-client=\"ca-pub-8774499223795406\" data-adsbygoogle-status=\"done\" style=\"display: block; margin: auto; background-color: transparent; height: 0px;\"><ins id=\"aswift_2_expand\" tabindex=\"0\" title=\"Advertisement\" aria-label=\"Advertisement\" style=\"display: inline-table; border: none; height: 0px; margin: 0px; padding: 0px; position: relative; visibility: visible; width: 625px; background-color: transparent;\"><ins id=\"aswift_2_anchor\" style=\"display: block; border: none; height: 0px; margin: 0px; padding: 0px; position: relative; visibility: visible; width: 625px; background-color: transparent; overflow: hidden; opacity: 0;\"><iframe id=\"aswift_2\" name=\"aswift_2\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" width=\"625\" height=\"280\" frameborder=\"0\" src=\"https://googleads.g.doubleclick.net/pagead/ads?guci=2.2.0.0.2.2.0.0&amp;client=ca-pub-8774499223795406&amp;output=html&amp;h=280&amp;adk=3433591129&amp;adf=2201363562&amp;pi=t.aa~a.2318691080~i.4~rp.1&amp;w=625&amp;fwrn=4&amp;fwrnh=100&amp;lmt=1595866995&amp;num_ads=1&amp;rafmt=1&amp;armr=3&amp;sem=mc&amp;pwprc=1273901384&amp;psa=1&amp;ad_type=text_image&amp;format=625x280&amp;url=https%3A%2F%2Fwww.51flash.com%2Flizhi%2Flizhiwenzhang%2F18688.html&amp;flash=0&amp;fwr=0&amp;pra=3&amp;rh=157&amp;rw=625&amp;rpe=1&amp;resp_fmts=3&amp;wgl=1&amp;fa=27&amp;adsid=NT&amp;tt_state=W3siaXNzdWVyT3JpZ2luIjoiaHR0cHM6Ly9hZHNlcnZpY2UuZ29vZ2xlLmNvbSIsInN0YXRlIjowfSx7Imlzc3Vlck9yaWdpbiI6Imh0dHBzOi8vYXR0ZXN0YXRpb24uYW5kcm9pZC5jb20iLCJzdGF0ZSI6MH1d&amp;dt=1609158713942&amp;bpp=2&amp;bdt=382&amp;idt=-M&amp;shv=r20201203&amp;cbv=r20190131&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Db5d8dd43eb9ff308-22ed457c57c50042%3AT%3D1608994850%3ART%3D1608994850%3AS%3DALNI_MYx013sFaO3tNHaWDu2Xkdd4gH9oA&amp;prev_fmts=0x0%2C980x280&amp;nras=2&amp;correlator=479957863216&amp;frm=20&amp;pv=1&amp;ga_vid=1081928679.1609158714&amp;ga_sid=1609158714&amp;ga_hid=1709791312&amp;ga_fc=0&amp;u_tz=480&amp;u_his=1&amp;u_java=0&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1004&amp;u_aw=1920&amp;u_cd=24&amp;u_nplug=3&amp;u_nmime=4&amp;adx=484&amp;ady=916&amp;biw=1903&amp;bih=843&amp;scr_x=0&amp;scr_y=0&amp;oid=3&amp;pvsid=2262205358601054&amp;pem=291&amp;ref=https%3A%2F%2Fwww.51flash.com%2Flizhi%2Flizhiwenzhang%2Flist_2.html&amp;rx=0&amp;eae=0&amp;fc=1408&amp;brdim=0%2C0%2C0%2C0%2C1920%2C0%2C1920%2C1004%2C1920%2C843&amp;vis=1&amp;rsz=%7C%7Cs%7C&amp;abl=NS&amp;fu=8328&amp;bc=31&amp;ifi=2&amp;uci=a!2&amp;btvi=1&amp;fsb=1&amp;xpc=xoe9VZngnX&amp;p=https%3A//www.51flash.com&amp;dtd=9\" marginwidth=\"0\" marginheight=\"0\" vspace=\"0\" hspace=\"0\" allowtransparency=\"true\" scrolling=\"no\" allowfullscreen=\"true\" data-google-container-id=\"a!2\" data-google-query-id=\"CL7IuqzX8O0CFVDL3godzksGrw\" data-load-complete=\"true\" style=\"left: 0px; position: absolute; top: 0px; border-width: 0px; border-style: initial; width: 625px; height: 280px;\"></iframe></ins></ins></ins></div><br><br>我们常常都会花费很多时间在懊恼过去犯下的错，但懊恼无法改变过去已经发生的事实，只会让自己浪费更多更多时间在错误的事情上，你能选择记着过去的错误，然后一直在后悔、懊恼的回圈下让往后的人生都笼罩黑暗的色彩，但更可以亲自改变未来，用以前的经验跟教训让自己能找到更好更适合的选择来面对，只是你放下了对于过去的后悔了吗？<br><br>心里不要总想着如果可以从头再来，那有多好。因为你每想一次，就是浪费一次时间，浪费一次面对未来的机会，过去不能从头再来，但我们能把握未来，以前的已经过去，事情都过了，自己就不要还把自己的心放在过去的那些事情上，错或对搞清楚就好，接着从对的事情上累积经验，从错误的过程中学习新的体验。<br><br>自己要给自己面对未来的机会，以前的就过去了，不要跟自己过不去，虽然你不一定可以轻松的面对以前的错误，只是要记得以后的<font color=\"#136ec2\">人生</font>才是你该好好掌握的，过去不能从头开始，但以后却能从新走起。<br></div><div><br></div>', NULL, NULL, NULL);
INSERT INTO `cms_article_data` VALUES ('9d6b4a41303b4ad185afe894c2ade954', '8d9861ed2e294d2793ad912e346e168f', '<p><font face=\"微软雅黑\"><span style=\"font-size: 14px;\">荣获xxx颁发的“技术创新先进企业\"</span></font><br></p>', NULL, NULL, NULL);
INSERT INTO `cms_article_data` VALUES ('ac033eb0887548249eb1f1d433755adf', '3f757e65b304439b82a76f028b82a914', '<h1 style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-weight: bold; font-family: 微软雅黑, Arial, sans-serif; font-size: 24px; text-align: center; color: rgb(53, 53, 53); height: 60px; line-height: 60px;\">面对人生微笑着苦中作乐</h1><div class=\"articleads2\" style=\"float: right; color: rgb(68, 68, 68); font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; margin-left: 6px !important;\"></div><div class=\"articleContent\" style=\"margin: 10px 0px 12px; line-height: 2; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;; height: auto !important;\">我不喜欢把自己的人生看成是悲剧，人生苦短，快乐不多，而且常常还得面临不同人带来的许多的痛苦跟伤害，但是你能做的有很多，行为可以带来美好、心态也行，别人给的伤害或痛苦，不需要把自己的人生给陪葬了，因为别人给的好或坏，我们无法决定，可是自己是可以选择用什么方式去面对它。<br><br>逆境当然是痛苦的，我们无法避免它的不发生，只不过既然得面对，你的做法是什么？是一把鼻涕一把眼泪拖着沉重的脚步前进，然后把自己的人生都浪费殆尽，还是在逆境中也能给自己想要的快乐跟美好；环境的不美好，来不及改变也无法改变了，可是自己的心态却还来得及选择要用什么样的方式来面对。</div>', NULL, NULL, NULL);
INSERT INTO `cms_article_data` VALUES ('b88d426d1b3d48acb3c89f7490d7521c', 'fb2367bb887c4a5192f26c268df2a6ca', '<h1 style=\"text-align: center; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 28px; font-family: &quot;microsoft yahei&quot;, simsun, tahoma; color: rgb(37, 37, 37);\">超越自我，才是真我风采</h1><p style=\"margin: 25px auto 0px; padding: 0px; color: rgb(37, 37, 37); font-family: &quot;Microsoft Yahei&quot;, Arial; font-size: 16px;\"><span style=\"font-size: 14px;\">在城市的高速发展路上，社会上有了方方面面的变化，从以前的农耕社会进步到现在资本社会，人的</span><a href=\"https://www.bidushe.com/jingdian/suibi/\" style=\"color: rgb(37, 37, 37);\"><span style=\"font-size: 14px;\">生活</span></a><span style=\"font-size: 14px;\">方式上也发生了改变，改变的背后还有一股股的压力，这些压力一方面在推动社会的前进，同时不知不觉中把人们压得喘不过气来，当中尤以社会精英为甚。压力与社会发展共生，这是规律，作为现代人谁也躲不开、避不过。只有我们用自信和智勇，用一个健康的心态，积极面对，才能迎面解决掉一切这些遇到的难题。</span></p><p style=\"margin: 25px auto 0px; padding: 0px; color: rgb(37, 37, 37); font-family: &quot;Microsoft Yahei&quot;, Arial; font-size: 16px;\"><span style=\"font-size: 14px;\">失败者往往是在最后时刻未能坚持住而放弃努力，与成功失之交臂。要想拥有未来，要有勇气，要有智慧，要有耐心和毅力，许多名人就是因为靠坚持而取得最后的胜利！勾践饱受屈辱三年，回国后更有卧薪尝胆之举，总算光复越国，以报国仇。可见，能否坚持是取得胜利的最后一道障碍。在最黑暗的时刻，也就是光明就要到来的时刻，越在这样的时刻，越需要坚持，因为坚持就是胜利！只要平常遇到难题始终坚持住，往往未来就掌握在自己手里。</span></p><p style=\"margin: 25px auto 0px; padding: 0px; color: rgb(37, 37, 37); font-family: &quot;Microsoft Yahei&quot;, Arial; font-size: 16px;\"><span style=\"font-size: 14px;\">无数的故事告诉着我们，未来之路的脉搏必须自己抓住，不能把掌舵的位置让给其他人，哪怕只是一分，一秒，只有把路掌握在自己的手里才是</span><a href=\"https://www.bidushe.com/jingdian/ganwu/\" style=\"color: rgb(37, 37, 37);\"><span style=\"font-size: 14px;\">人生</span></a><span style=\"font-size: 14px;\">真正的前进，一种敢于和命运做斗争的表现，虽然一个人走会很艰难，但是，人生里所谓的路是自己的路，路是靠自己走出来的。</span></p><p style=\"margin: 25px auto 0px; padding: 0px; color: rgb(37, 37, 37); font-family: &quot;Microsoft Yahei&quot;, Arial; font-size: 16px;\"><span style=\"font-size: 14px;\">人在现实里努力打滚，往往也会积累很多的压力，化解压力是艰难的，有时甚至是痛苦的。但这只能靠自己，别人是帮不上忙的。因为，许多压力是自己争来的。比如是选某种职业，竞争了某个岗位，想把自己的工作做到最好，想人生更上一层楼，想为社会作出更大的贡献，等等，都会给自己带来莫大的压力。关键是把握好这个度，过度了自然就会使精神受损，身体受损。一个人不去努力，不想怎么超越自我，终会被社会淘汰；而工作压力过大，操劳过度则有损健康。如何在忙与闲、重与轻间把握好尺度，是人生的一大课题。在我们为未来之路而勇往直前时，我们不能对身体的健康有所疏忽，不然当我们成功之时，却没有了精力去享受我们成功的喜悦，那将是很可悲的。而且，当我们在追求自我、展示自我、超越自我之时，我们也不能忘记要去注意自己的身体。如果我们的健康系统被破坏了，我们也将难以拥有坚持不懈的力量去抵达成功。</span></p>', NULL, NULL, NULL);
INSERT INTO `cms_article_data` VALUES ('f20851d30fe1498ca1cf7eb90deedabc', '1cd8420837cd457bb5273549215685fc', '<h1 style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-weight: bold; font-family: 微软雅黑, Arial, sans-serif; font-size: 24px; text-align: center; color: rgb(53, 53, 53); height: 60px; line-height: 60px;\">目标不同美丽不同</h1><div class=\"articleads2\" style=\"float: right; color: rgb(68, 68, 68); font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; margin-left: 6px !important;\"></div><div class=\"articleContent\" style=\"margin: 10px 0px 12px; line-height: 2; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;; height: auto !important;\">如你所说，每个人目标不同，选择方向都不同，你有美丽的风景，而我的景色也不差，只是当我们走过这些景点的时候，要确信自己的心血是值得的，不是跟着别人而走的，但话说回来，你选择自己的路还是跟随别人的路，其实都是自己的选择，旁人、路人甚至亲人都无法帮你下决定，可是你一定得对自己人生负责。<br><br>追求什么必然会失去些什么，我选择的走一条路，必然会失去其他的道路，你也相同，不一定有什么是对跟错，只是价值观不同罢了；可是在选择的时候，我们得知道选择这条路之后，到底会失去什么，并非有目标就冲就闯，因为你要思考这个梦想或目标，值不值得你花费你的人生、精神、体力去换取，甚至还要花费其他的东西。</div>', NULL, NULL, NULL);
INSERT INTO `cms_article_data` VALUES ('f3a96788e53348038a8bae415db8fd01', '43598709c98648e5b9124139040bd500', '<p align=\"center\" style=\"margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"font-size: 24px;\"><b>企业简介</b></span></p><p align=\"center\" style=\"margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em;\"><br></p><p align=\"center\" style=\"margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em;\"><br></p><p style=\"list-style-type: none; margin-bottom: 0px; padding: 0px; border: 0px; transition: color 0.2s ease 0s, background 0.4s ease 0s; color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;; font-size: 14px; text-align: justify;\"><span style=\"color: rgb(96, 96, 96); font-family: Arial, sans-serif; font-size: 12px; text-align: left;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"color: rgb(96, 96, 96); font-family: Arial, sans-serif; font-size: 12px; text-align: left;\">&nbsp;</span></p><p style=\"margin-bottom: 12px; padding: 0px; border: 0px; color: rgb(51, 51, 51); line-height: 30px; font-size: 15px; font-family: &quot;Microsoft YaHei&quot;;\"><img style=\"width: 25%; float: left;\" src=\"/zhglxt/profile/cms/upload/2021/07/07/af3be62b84ab4291a418cef63ff50140.jpg\" data-filename=\"/profile/cms/upload/2021/07/07/af3be62b84ab4291a418cef63ff50140.jpg\" class=\"note-float-left\">世界上美丽的东西千千万万，却没有一样比年轻更为美丽；世界上珍贵的东西数也数不清，却没有一样比青春更为宝贵。我们是多么值得骄傲多么让人羡慕啊！而我们若只是挥霍光阴，只是享受，不去奋斗拼搏，那我们真的算拥有青春吗答案是否定的，我们仅有发愤图强，努力耕耘才能做到无愧于青春，无愧于人生，才能拥有一个充实而完美的青春。</p><p style=\"margin-bottom: 12px; padding: 0px; border: 0px; color: rgb(51, 51, 51); line-height: 30px; font-size: 15px; font-family: &quot;Microsoft YaHei&quot;;\">　　奋斗的青春是完美的风景正是那千万颗在青春中奋斗的心，以及那千万双在天空中高飞的振翅，装扮着最完美最美丽最珍贵的人生季节—青春。将青春变成人生最完美生活的出发点。“恰同学少年，风华正茂，书生意气，挥斥方遒。”昭示着一代伟人奋斗的青春。他们的青春因充满奋斗和活力而洋溢着完美，而今，青春正我在我们手中，我们不能容忍青春在我们手中白白流逝，我们不能在叹息声中虚度光阴，我们不能在叹息声中了结生命，那么就让我们在青春时节奋发吧！让青春之花永远绽放在我们心中，书写一卷有声有色的人生。</p><p style=\"margin-bottom: 12px; padding: 0px; border: 0px; color: rgb(51, 51, 51); line-height: 30px; font-size: 15px; font-family: &quot;Microsoft YaHei&quot;;\">　　青春在奋斗中展现美丽，青春的美丽永远展此刻她的奋斗拼搏之中。就像雄鹰的美丽是展此刻他搏风击雨中，如苍天之魂的翱翔中，正拥有青春的我们，何不以勇锐盖过怯懦，以进取压倒苟安，扬起奋斗的帆吧！在波涛汹涌的大海中不断前行，展示我们子一代人青春的壮美与力量，让我们就像雄鹰一样搏击长空吧！让青春之歌扬出昂扬的旋律，让我们的声明发出耀眼的光芒。</p><p style=\"margin-bottom: 12px; padding: 0px; border: 0px; color: rgb(51, 51, 51); line-height: 30px; font-size: 15px; font-family: &quot;Microsoft YaHei&quot;;\">　　奋斗抒写无悔青春，在漫漫人生道路上，青春虽然只是一小段，但当你白发苍苍回首时，你会发现以往拥有的青春依然会在记忆中闪烁着动人的光彩。青春无悔该是我们每个人的追求，我们仅有把握好青春的每一天，在激流中涌进不断拼搏，我们才能够骄傲地说：“我的青春是无悔的！”</p><p style=\"margin-bottom: 12px; padding: 0px; border: 0px; color: rgb(51, 51, 51); line-height: 30px; font-size: 15px; font-family: &quot;Microsoft YaHei&quot;;\">　　雷锋说：“青春啊，永远是完美的，可是真正的青春只属于那些永远力争上游的人，永远忘我劳动的人，永远谦虚的人！”所以唯有奋斗，为自我的梦想不断前行，朝着我们自我的目标不断迈进，我们才能拥有一个真正而又无悔的青春。</p><p style=\"margin-bottom: 12px; padding: 0px; border: 0px; color: rgb(51, 51, 51); line-height: 30px; font-size: 15px; font-family: &quot;Microsoft YaHei&quot;;\">　　青春的世界里，不需要固结你的思想，仅有追寻完美的梦想，人前方荆棘丛生，我们都要持之以恒。让我们像江河一样，向着大海不断奔流吧！在漫漫的人生道路上，谱写青春的音符，留下奋斗的足迹。</p><p style=\"margin-bottom: 12px; padding: 0px; border: 0px; color: rgb(51, 51, 51); line-height: 30px; font-size: 15px; font-family: &quot;Microsoft YaHei&quot;;\">　　用我们的奋斗和梦想扬起青春的船帆，当我们努力拼搏地摇浆时，成功的闸门也会慢慢地再为我们打开，我们将享受一份青春的完美，收获一份成功的喜悦。</p>', NULL, NULL, NULL);
INSERT INTO `cms_article_data` VALUES ('f45cfcfebde74453af45d6af8904900a', 'af97301ee4f1448e98b6ef61e667106e', '<h1 style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-weight: bold; font-family: 微软雅黑, Arial, sans-serif; font-size: 24px; text-align: center; color: rgb(53, 53, 53); height: 60px; line-height: 60px;\">海伦.凯勒带给我们的启示</h1><div class=\"articleads2\" style=\"float: right; color: rgb(68, 68, 68); font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; margin-left: 6px !important;\"></div><div class=\"articleContent\" style=\"margin: 10px 0px 12px; line-height: 2; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;;\">如果你耳朵听不见、眼睛看不到，要怎样有勇气活下去？就是有人活下去了，那个人就是海伦．凯勒。<br><br>海伦．凯勒一出生就听不见、看不到，所以学习对她来说是非常困难的，但是她却成功了，要感谢很多在这段求学路程上帮助海伦．凯勒的人，例如：她的妈妈、她的老师、还有她自己的努力付出。<br>她勇敢活下来的精神令我非常敬佩，她坚强的毅力让我想效法学习，真令我赞叹不已！<br><br>在我们之前，已经有许多的人靠着坚强的毅力完成了令大家意想不到的好成绩，只要努力上进，不管是谁都能有<a href=\"https://www.51flash.com/lizhi/lizhimingyan/21583.html\" style=\"color: rgb(19, 110, 194);\">成功</a>的一天。<br><br>海伦．凯勒成功的原因，只有一个，那就是相信自己，努力追求理想。俗话说的好：”天下无难事，只怕有心人。”意思就是说，天下没有做不到的事，只看您有没有努力，不要光只是嘴巴说说而已。</div>', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for cms_column
-- ----------------------------
DROP TABLE IF EXISTS `cms_column`;
CREATE TABLE `cms_column`  (
  `column_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '栏目编号',
  `parent_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '父id',
  `site_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '站点编号',
  `column_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '栏目编码',
  `column_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '栏目名称',
  `column_flag` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '栏目标识',
  `out_link` tinyint NULL DEFAULT 1 COMMENT '是否外部链接页面（0：是    1：否）',
  `href` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '外部链接的访问路径',
  `is_show` tinyint NOT NULL DEFAULT 0 COMMENT '0:显示，1：隐藏',
  `status` tinyint NOT NULL DEFAULT 0 COMMENT '状态:0：正常 1、删除',
  `sort` int NULL DEFAULT 0 COMMENT '排序',
  `create_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '站点栏目表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_column
-- ----------------------------
INSERT INTO `cms_column` VALUES ('1', '0', '292cba294f8b4a0eba62452aa21b6ef5', '', '栏目', 'lm', 1, '', 0, 0, 0, 'system', '2019-12-11 00:02:06', '', '2019-12-11 00:02:11', '栏目根目录');
INSERT INTO `cms_column` VALUES ('22be2c4656ed47388c2a6f2160a87879', '1', '292cba294f8b4a0eba62452aa21b6ef5', '', '新闻动态', 'news', 1, '', 0, 0, 360, 'system', '2019-12-15 20:42:45', 'system', '2020-12-25 18:39:02', '新闻动态');
INSERT INTO `cms_column` VALUES ('26615be24f8040f18bf7c086c9676408', '1', '292cba294f8b4a0eba62452aa21b6ef5', '', '企业发展史', 'developHistory', 1, '', 0, 0, 500, 'system', '2021-03-30 16:25:01', 'system', '2021-05-06 23:23:14', '企业发展史');
INSERT INTO `cms_column` VALUES ('31e42bf1f25f4b4196dd8da9f0eb1eaa', '8f930d24c4664e32add2be56823b2c5e', '292cba294f8b4a0eba62452aa21b6ef5', '', '系统更新日志', '', 0, '/zhglxt/cms/helpDoc/helpDocView/c691f3fa8a394b4c922cd85fdb9d0779', 0, 0, 10, 'system', '2021-07-04 16:02:12', 'system', '2021-07-07 13:51:39', '系统更新日志');
INSERT INTO `cms_column` VALUES ('65c7cbe937cd4b688b48b9a5cccc0450', '1', '292cba294f8b4a0eba62452aa21b6ef5', '', '解决方案', 'solution', 1, '', 0, 0, 200, 'system', '2019-12-21 00:44:14', 'system', '2020-12-29 16:36:03', '解决方案');
INSERT INTO `cms_column` VALUES ('8f930d24c4664e32add2be56823b2c5e', '1', '292cba294f8b4a0eba62452aa21b6ef5', '', '在线文档', '', 0, '#', 0, 0, 150, 'system', '2019-12-14 03:49:47', 'system', '2021-06-29 23:58:04', '在线文档');
INSERT INTO `cms_column` VALUES ('93b8732e45c64471b918696c87d27494', '1', '292cba294f8b4a0eba62452aa21b6ef5', '', '在线演示', '', 0, '#', 1, 0, 50, 'system', '2020-06-01 23:51:45', 'system', '2021-06-23 06:49:45', '在线演示');
INSERT INTO `cms_column` VALUES ('b00a3e03c0f548f0815fcc04634c315c', '1', '292cba294f8b4a0eba62452aa21b6ef5', '', '关于我们', 'about', 1, '', 0, 0, 400, 'system', '2019-12-15 20:39:22', 'system', '2020-12-25 18:39:16', '关于我们');
INSERT INTO `cms_column` VALUES ('d792ede14a5e4ba9816c6ac6becc03cc', '1', '292cba294f8b4a0eba62452aa21b6ef5', '', '联系我们', 'contact', 1, '', 0, 0, 380, 'system', '2019-12-15 20:40:13', 'system', '2020-12-25 18:39:10', '联系我们');
INSERT INTO `cms_column` VALUES ('e7b4c8d6ef3f403994d55869cdba19e9', '93b8732e45c64471b918696c87d27494', '292cba294f8b4a0eba62452aa21b6ef5', '', 'WEB应用系统', '', 0, '#', 0, 0, 200, 'system', '2020-06-01 23:58:16', 'system', '2021-07-07 14:17:41', 'WEB应用系统');

-- ----------------------------
-- Table structure for cms_help_doc
-- ----------------------------
DROP TABLE IF EXISTS `cms_help_doc`;
CREATE TABLE `cms_help_doc`  (
  `id` varchar(46) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '内容',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '状态（0：显示  1：隐藏）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '站点文档表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_help_doc
-- ----------------------------
INSERT INTO `cms_help_doc` VALUES ('c691f3fa8a394b4c922cd85fdb9d0779', '系统更新日志', '[TOC]\r\n# 系统更新日志\r\n## latest version-（2024.09.01-2024.11.18）\r\n1. 升级spring-framework到安全版本(IASFCW)\r\n2. 优化身份证脱敏正则\r\n3. 升级oshi到最新版本6.6.5\r\n4. 修复角色禁用权限不失效问题\r\n5. 用户导入响应消息对名称安全处理\r\n6. 修复记住我请求头过大的问题\r\n7. 修复记住我失效的问题(IAPHA4)\r\n8. 优化异步树表格折叠同步子状态\r\n9. 升级oshi到最新版本6.6.3\r\n10. 修改时间范围日期格式\r\n11. 升级commons.io到最新版本2.16.1\r\n12. 代码优化\r\n13. 修复主子表数据显示问题(IA61OI)\r\n14. 优化数据权限代码\r\n\r\n## v4.7.9-（2024.01.19-2024.09.01）\r\n1. 升级oshi到最新版本6.6.1\r\n2. 升级druid到最新版本1.2.23\r\n3. 升级bootstrap-table到最新版本1.22.6\r\n4. Excel注解新增属性comboReadDict\r\n5. 代码生成支持表单布局选项\r\n6. 优化代码生成模板格式\r\n7. 优化代码生成主子表关联查询方式\r\n8. 新增表格示例（全文检索）\r\n9. 优化导入Excel时设置dictType属性重复查缓存问题\r\n10. 代码优化\r\n11. 限制用户操作数据权限范围\r\n12. 新增表格示例（虚拟滚动）\r\n13. 优化树表格align属性在标题生效(I9FVBJ)\r\n14. 升级spring-framework到安全版本，防止漏洞风险\r\n15. 新增数据脱敏过滤注解\r\n16. Excel注解ColumnType类型新增文本\r\n17. 定义统一Locale获取国际化(I8Z7DA)\r\n18. 定时任务白名单配置范围缩小\r\n19. 用户密码新增非法字符验证\r\n20. 定时任务屏蔽违规的字符\r\n21. 优化匹配方式\r\n22. 通知公告新增详细显示\r\n23. 优化登录注册页面\r\n24. 修复重置日期时出现的异常问题(I8PZFA)\r\n25. 更新HttpUtils中的默认User-Agent\r\n26. 修复tooltip单击复制文本不生效的问题\r\n27. 默认加载layer扩展皮肤\r\n28. 未修改初始密码弹框提醒\r\n29. 升级commons.io到最新版本2.13.0\r\n30. 修复页签关闭后存在的跳转问题(I8JDIS)\r\n31. 操作日志列表重置回第一页\r\n32. 修复高频率定时任务不执行问题(I8IQSX)\r\n\r\n## v4.7.8-（2023.04.14-2024.01.19）\r\n1. 升级jquery到最新版v3.7.1\r\n2. 通用detail详细信息弹窗不显示按钮\r\n3. 升级druid到最新版本1.2.20\r\n4. 用户列表新增抽屉效果详细信息\r\n5. 升级layui到最新版本v2.8.18\r\n6. 升级layer到最新版本v3.7.0\r\n7. 角色列表显示数据权限\r\n8. 升级oshi到最新版本6.4.11\r\n9. 升级pagehelper到最新版1.4.7\r\n10. 升级shiro到最新版本1.13.0\r\n11. 重置密码鼠标按下显示密码\r\n12. 优化数字金额大写转换精度丢失问题\r\n13. 升级oshi到最新版本6.4.6\r\n14. 新增isScrollToTop页签切换滚动到顶部\r\n15. 修复用户管理跳转部门页签显示问题(I84PGJ)\r\n16. 操作日志列表新增IP地址查询\r\n17. 优化Tab页签切换，会滚动到页面顶部问题(I841ER)\r\n18. 优化菜单管理类型为按钮状态可选(I7VZEJ)\r\n19. 修复自定义字典样式不生效的问题\r\n20. 修复横向菜单关闭最后一个页签状态问题(I7SVPK)\r\n21. 修复Excels导入时无法获取到dictType字典值问题(I7M4PW)\r\n22. Excel导入数据临时文件无法删除问题\r\n23. 升级oshi到最新版本6.4.4\r\n24. Excel自定义数据处理器增加单元格/工作簿对象\r\n25. 新增表格参数（数据值为空时显示的内容undefinedText）\r\n26. 修复弹窗按钮启用禁用方法无效问题\r\n27. 新增定时任务页去除状态选项\r\n28. 树表查询无数据时清除分页信息\r\n29. 前端定时任务菜单中Cron表达式生成器中-日-选项中的--每小时--应为-每日\r\n30. 升级shiro到最新版本1.12.0\r\n31. 表格重置默认返回到第一页\r\n32. 排序属性orderBy参数限制长度\r\n33. 升级oshi到最新版本6.4.3\r\n34. 升级spring-boot到最新版本2.5.15\r\n35. 修复表格行内编辑启用翻页记住选择无效问题(I72OMA)\r\n36. 升级x-editable到最新版本1.5.3\r\n37. 升级oshi到最新版本6.4.1\r\n\r\n## v4.7.7-（2022.12.18-2023.04.14）\r\n1. 企业官网文件管理器代码优化\r\n2. 升级jasny-bootstrap到最新版4.0.0\r\n3. 优化用户导入更新时需获取用户编号问题\r\n4. 优化导出Excel时设置dictType属性重复查缓存问题\r\n5. 支持自定义隐藏属性列过滤子对象\r\n6. 修复用户注册唯一校验问题(I6MVZS)\r\n7. 修复用户多角色，数据权限切面处理时可能出现权限抬升的情况\r\n8. 发布公告中的用户树，过滤已删除的用户\r\n9. 升级layui到最新版本2.7.6\r\n10. 修复isMatchedIp的参数判断产生空指针的问题\r\n11. 升级druid到最新版本1.2.16\r\n12. 日志注解支持排除指定的请求参数\r\n13. 支持登录IP黑名单限制\r\n14. 修复异步表格树子项排序问题(I6G2YL)\r\n15. 修复冻结列不支持IE浏览器的问题(I6FD4W)\r\n16. 修复主子表使用suggest插件无法新增问题(I6FA5Z)\r\n17. 更新fontawesome图标示例\r\n18. 优化前端属性提醒说明\r\n19. 新增监控页面图标显示\r\n20. 操作日志新增消耗时间属性\r\n21. 修复菜单栏快速点击导致展开折叠样式问题(I6CWMP)\r\n22. 连接池Druid支持新的配置connectTimeout和socketTimeout(I6CLL8)\r\n23. 修复异步加载表格树重置列表父节点展开异常问题(I6AGWH)\r\n24. 屏蔽定时任务bean违规的字符\r\n25. 解决单体版本表格行拖拽操作后，列表底部的总共记录条数变成了undefined问题\r\n26. EhCacheManager改为从bean容器获取，不使用自动装配\r\n27. 升级jquery到最新版v3.6.3\r\n28. 修复页签属性refresh为undefined时页面被刷新问题\r\n29. 主子表根据序号删除方法加入表格ID参数\r\n\r\n## v4.7.6-（2022.09.07-2022.12.18）\r\n1. 修改参数键名时移除前缓存配置\r\n2. 升级druid到最新版本1.2.15\r\n3. 升级kaptcha到最新版2.3.3\r\n4. 升级oshi到最新版本6.3.2\r\n5. 升级shiro到最新版本1.10.1\r\n6. 优化用户管理重置时取消部门选择(I621OJ)\r\n7. 兼容Excel下拉框内容过多无法显示的问题(I61HCG)\r\n8. 修复操作日志类型多选导出不生效问题(I617FW)\r\n9. 升级druid到最新版本1.2.14\r\n10. 忽略不必要的属性数据返回\r\n11. 优化导出对象的子列表为空会出现[]问题(I60904)\r\n12. 修复sheet超出最大行数异常问题\r\n13. 优化activiti工作流\r\n14. 升级oshi到最新版本6.3.0\r\n15. 优化select2搜索下拉后校验必填样式问题(I5VZY0)\r\n16. 升级bootstrap-fileinput到最新版本5.5.2\r\n17. 修复导出包含空子列表数据异常的问题\r\n18. 修复系统监控-服务监控错误问题\r\n19. 优化代码生成同步后字典值NULL问题\r\n20. 导入更新用户数据前校验数据权限\r\n21. 修改用户登录账号重复验证\r\n22. 修复关闭父页签后提交无法跳转的问题(I5QBMO)\r\n23. 移除zhglxt-docs\r\n\r\n## v4.7.5-（2022.06.02-2022.09.07）\r\n1. 升级jquery到最新版3.6.1\r\n2. 修复用户分配角色大于默认页数丢失问题(I5OJA8)\r\n3. AjaxResult错误消息结果类型的判断\r\n4. 优化横向菜单下激活菜单样式\r\n5. 定时任务支持执行父类方法\r\n6. 修复部门管理-新增、编辑错误问题\r\n7. 页签创建标题优先data-title属性(I4MC5L)\r\n8. 新增示例（进度条）\r\n9. 自动设置切换多个树表格实例配置\r\n10. 菜单配置刷新时Tab页签切换时刷新\r\n11. 升级oshi到最新版本6.2.2\r\n12. 修复树表onLoadSuccess不生效的问题\r\n13. 优化导出对象的子列表判断条件\r\n14. 优化excel/scale属性导出单元格数值类型\r\n15. Excel支持导出对象的子列表方法\r\n16. 新增主子表提交校验示例\r\n17. 增加对AjaxResult消息结果类型的判断\r\n18. 优化任务过期不执行调度\r\n19. 升级layui到最新版本v2.7.5\r\n20. 自定义数据权限不排除重复\r\n21. 升级pagehelper到最新版1.4.3\r\n22. 支持自定义隐藏Excel属性列\r\n23. Excel注解支持backgroundColor属性设置背景颜色\r\n24. 优化多个相同角色数据导致权限SQL重复问题\r\n25. 升级shiro到最新版本1.9.1\r\n26. 升级easyExcel到最新版本3.1.1\r\n27. 新增内容编码/解码方便插件集成使用\r\n28. 修复导入导出时，当某字段类型为字典类型或解析类型时，如果有分隔符时无法正确解析的问题\r\n29. 升级druid到最新版本1.2.11\r\n30. 优化druid开启wall过滤器出现的异常问题\r\n31. 释放焦点,防止打开后按回车反复弹出\r\n\r\n## v4.7.4-（2022.03.05-2022.06.02）\r\n1. 修复代码生成拖拽多次出现的排序不正确问题\r\n2. 升级spring-boot到最新版本2.5.14\r\n3. 升级fastjson到最新版1.2.83\r\n4. 用户头像上传格式限制\r\n5. 修复客户端分页序号方法显示错误问题\r\n6. 接口使用泛型使其看到响应属性字段\r\n7. 升级oshi到最新版本6.1.6\r\n8. 优化excel创建表格样式\r\n9. 升级spring-boot到最新版本2.5.13\r\n10. 修改显示顺序orderNum类型为整型\r\n11. Excel注解支持color字体颜色\r\n12. 表格冻结列阴影效果显示\r\n13. 树表格操作时保留ajaxParams初始参数\r\n14. 设置分页参数默认值\r\n15. 优化主子表单删方法\r\n16. 新增获取不带后缀文件名称方法\r\n17. 主子表操作列新增单个删除\r\n18. 检查定时任务bean所在包名是否为白名单配置\r\n19. 字典类型必须以字母开头，且只能为（小写字母，数字，下滑线）\r\n20. 修复Excel注解prompt/combo同时使用不生效问题\r\n21. 用户缓存信息添加部门ancestors祖级列表\r\n22. 修复URL类型回退键被禁止问题\r\n23. 优化菜单侧边栏滚动条尺寸及颜色\r\n24. 新增清理分页的线程变量方法\r\n25. 升级fastjson到最新版1.2.80\r\n26. 优化IP地址获取到多个的问题\r\n27. 优化导出excel单元格验证,包含变更为开头.防止正常内容被替换\r\n28. 修复初始化多表格处理回调函数时获取的表格配置不一致的问题\r\n29. 自定义ShiroFilterFactoryBean防止中文请求被拦截\r\n30. 优化导出数据LocalDateTime类型无数据问题\r\n31. 文件上传兼容Weblogic环境\r\n\r\n## v4.7.3-（2021.12.25-2022.03.05）\r\n1. 修复导入Excel时字典字段类型为Long转义为空问题\r\n2. 修复表格打印组件不识别多层对象属性值问题(I4V7YV)\r\n3. 优化Excel格式化不同类型的日期对象\r\n4. 优化上传文件名称命名规则\r\n5. 文件上传接口新增原/新文件名返回参数\r\n6. 代码生成预览隐藏临时的文本域\r\n7. 页面若未匹配到字典标签则返回原字典值\r\n8. 代码生成预览支持复制内容\r\n9. 优化国际化配置多余的zh请求问题\r\n10. 定时任务默认保存到内存中更高效\r\n11. 表格树支持分页/异步加载\r\n12. 升级bootstrap-table到最新版本1.19.1\r\n13. 优化任务队列满时任务拒绝策略\r\n14. 服务监控新增运行参数信息显示\r\n15. 升级pagehelper到最新版1.4.1\r\n16. 升级spring-boot-mybatis到最新版2.2.2\r\n17. 升级oshi到最新版本6.1.2\r\n18. 代码生成同步保留必填/类型选项\r\n19. 升级spring-boot到最新版本2.5.9\r\n20. 修复了@xss注解字段值为null时的空指针异常问题\r\n21. 用户访问控制时校验数据权限，防止越权\r\n22. 导出Excel时屏蔽公式，防止CSV注入风险\r\n23. 修改 ECharts 官网地址为最新\r\n24. 优化加载字典缓存数据\r\n25. 优化代码生成字段更新未同步\r\n26. 定时任务屏蔽违规的字符\r\n27. 分页数据新增分页参数合理化参数\r\n28. 优化新版Chrome浏览器回退出现的遮罩层\r\n29. 定时任务目标字符串过滤参数\r\n30. 表格父子视图添加点击事件打开示例\r\n31. 升级aop到最新版本2.6.2\r\n32. 升级spring-boot到最新版本2.5.8\r\n33. 修复EMAIL类型回退键被禁止问题\r\n34. 解决IE11上传预览不显示的问题\r\n\r\n## v4.7.2-（2021.11.08-2021.12.25）\r\n1. 升级oshi到最新版本v5.8.6\r\n2. 升级thymeleaf到最新版3.0.14 阻止远程代码执行漏洞\r\n3. 工具类异常使用UtilException\r\n4. 升级fastjson到最新版1.2.79\r\n5. 代码生成创建表检查关键字，防止注入风险\r\n6. 请求分页方法设置成通用方便灵活调用\r\n7. 代码生成创建按钮添加超级管理员权限\r\n8. 前端添加单独的二代身份证校验\r\n9. 优化日期类型错误提示与图标重叠问题\r\n10. 自定义xss校验注解实现\r\n11. 升级log4j2到安全版本，防止漏洞风险\r\n12. 优化查询用户的角色组&岗位组代码\r\n13. 修复多参数逗号分隔的问题\r\n14. 修复插件一起使用出现的已声明报错问题\r\n15. 代码生成主子表优化\r\n16. 升级velocity到最新版本2.3（语法升级）\r\n17. 进入修改页面方法添加权限标识\r\n18. 优化修改/授权角色实时生效\r\n19. 优化新增部门时验证用户所属部门\r\n20. 升级velocity到最新版本2.3\r\n21. 代码生成主子表模板删除方法缺少事务\r\n22. 任务参数忽略双引号中的逗号\r\n23. 文档系统添加搜索插件\r\n24. EasyExcel版本升级到v3.0.5\r\n25. 新增文档系统演示地址\r\n26. 新增VuePress2.x文档系统\r\n27. 增加sendGet无参请求方法\r\n28. 表格实例切换event不能为空\r\n29. 修复无法被反转义问题\r\n30. 多表格切换表单查询参数\r\n31. 任务屏蔽违规字符\r\n32. 页签关闭右侧清除iframe元素\r\n33. 升级spring-boot到最新版本2.5.6\r\n34. 替换自定义验证注解\r\n\r\n## v4.7.1-（2021.09.01-2021.11.08）\r\n1. 优化演示模式时的定时任务、注册、操作日志逻辑\r\n2. 升级oshi到最新版本v5.8.2\r\n3. 升级spring-boot-mybatis到最新版2.2.0\r\n4. 升级pagehelper到最新版1.4.0\r\n5. 升级spring-boot到最新版本2.5.5\r\n6. Excel导入支持@Excels注解\r\n7. 升级druid到最新版1.2.8\r\n8. 修复select2回退键被禁止问题\r\n9. 导入模板添加默认参数\r\n10. 增加sendGet无参判断\r\n11. 修复apple/webkit浏览器时间无法格式化\r\n12. 设置mybatis默认的执行器\r\n13. 修复新窗口打开页面关闭弹窗报错\r\n14. 优化导入Excel\r\n15. 修复表格拖拽行数据错位问题\r\n16. 修正swagger没有指定dataTypeClass导致启动出现warn日志\r\n17. 代码生成的模块增加创建表功能\r\n18. Excel注解支持导入导出标题信息\r\n19. 升级Knife4j到3.0.3\r\n20. 新增swagger-knife4j简单示例、教程\r\n21. maven依赖调整\r\n22. 修复树表代码生成短字段无法识别问题\r\n23. 优化记录登录信息，防止不必要的修改\r\n24. 新增是否开启页签功能\r\n25. 升级fastjson到最新版1.2.78\r\n26. 升级thymeleaf-extras-shiro到最新版本v2.1.0\r\n27. Excel注解支持自定义数据处理器\r\n28. 防重提交注解支持配置间隔时间/提示消息\r\n29. 优化aop语法，使用spring自动注入注解\r\n30. 防止Excel导入图片可能出现的异常\r\n31. 修复富文本回退键被禁止&控制台报错问题\r\n32. 修复后端主子表代码模板方法名生成错误问题\r\n33. 日志注解新增是否保存响应参数\r\n34. 修复在平板、手机等移动端的编辑、查看问题\r\n35. 禁止后退键（Backspace）\r\n36. 升级bootstrap-fileinput到最新版本v5.2.4\r\n37. 实例演示中增加多层窗口获取值\r\n38. 弹出层openOptions增加动画属性\r\n39. 小写不起作用，大写后功能正常\r\n40. 代码生成导入表按创建时间排序\r\n41. 修复企业官网管理-内容管理-文章列表、广告列表 的分页查询数据错误问题\r\n42. Activiti工作流资源文件移到zhglxt-web资源目录下\r\n43. 修复官网管理-内容管理-广告列表-新增-选中图片-保存后没有保存成功问题\r\n\r\n## v4.7.0-（2021.07.30-2021.09.01）\r\n1. 删除多余的引用\r\n2. 升级shiro到最新版本v1.8.0\r\n3. 升级bootstrap-select到最新版本v1.13.18\r\n4. 升级bootstrap-suggest到最新版本v0.1.29\r\n5. 升级jquery.validate到最新版本v1.19.3\r\n6. 升级duallistbox到最新版本v3.0.9\r\n7. 升级cropper到最新版本v1.5.12\r\n8. 升级select2到最新版v4.0.13\r\n9. 升级layui到最新版本v2.6.8\r\n10. 升级laydate到最新版本v5.3.1\r\n11. 升级layer到最新版本v3.5.1\r\n12. 升级icheck到最新版1.0.3\r\n13. 升级jquery到最新版3.6.0\r\n14. 优化弹出层显示在顶层窗口\r\n15. 表单重置开始/结束时间控件\r\n16. 表达式生成器窗口最大最小化\r\n17. 修改时检查用户数据权限范围\r\n18. 定时任务对检查异常进行事务回滚\r\n19. 补充定时任务表字段注释\r\n20. 定时任务屏蔽ldap远程调用\r\n21. 在线办公-通知通告页面、状态优化\r\n22. 优化异常信息\r\n23. 修正方法名单词拼写错误\r\n24. Excel注解图片导入兼容xls\r\n25. 定时任务支持在线生成cron表达式\r\n26. Excel注解支持Image图片导入\r\n27. 支持配置是否开启记住我功能\r\n28. 移动端进入首页设置默认样式\r\n29. 升级bootstrap-fileinput到最新版本5.2.3\r\n30. 优化用户不能删除自己\r\n31. 提取通用方法到基类控制器\r\n32. 默认开始/结束时间绑定控件选择类型\r\n33. 升级commons.io到最新版本v2.11.0\r\n34. 优化代码生成模板\r\n35. 启用父部门状态排除顶级节点\r\n36. 定时任务屏蔽http(s)远程调用\r\n37. 查询表格指定列值增加deDuplication是否去重属性\r\n38. 代码生成富文本默认dialogsInBody属性\r\n39. 修改部门顶级节点报错问题\r\n40. 优化XSS跨站脚本过滤\r\n41. 去除默认分页合理化参数\r\n\r\n## v4.6.2-（2021.06.16-2021.07.30）\r\n1. 修复示例演示-部分报表示例无法显示问题\r\n2. 升级oshi到最新版本v5.8.0\r\n3. maven依赖优化\r\n4. 调度日志详细页添加关闭按钮\r\n5. 修复顶部一级菜单未添加绝对路径导致菜单跳转404的问题\r\n6. 升级oshi到最新版本v5.7.5\r\n7. 增加请求URL的记录(请求异常时)，便于排查问题\r\n8. 修复summernote富文本插件选择上传图片、视频等文件时出现遮罩层无法选择问题\r\n9. 新增示例（多图上传）\r\n10. 企业官网管理-站点栏目管理-站点列表：删除站点逻辑优化(删除站点的同时，删除所有关联该站点的业务数据)\r\n11. 系统图片文件上传路径优化\r\n12. markdown在线编辑器页面优化\r\n13. 系统登录、注册、首页页面优化\r\n14. CKFinder文件管理器上传文件名逻辑修改\r\n15. 在线办公-个人办公-请假申请-请假列表权限优化\r\n16. 升级summernote到最新版本v0.8.18\r\n17. 防止富文本点击按钮弹框时，页面会回到顶部\r\n18. 去除多余的favicon.ico引入\r\n19. 修复企业官网管理-内容管理-文章列表：左侧栏目树点击‘刷新’按钮时,没有刷新右侧表格数据问题\r\n20. 优化表格树显示\r\n21. 修复切换主题错误问题\r\n22. 在线办公-通知通告-通告管理-新增、编辑页面：接收人树型构造逻辑优化\r\n23. 工作流代码优化\r\n24. 企业官网管理下新增-文档管理-文档列表，可在线编辑系统的使用文档并在企业官网进行查看\r\n25. 修复企业官网管理-栏目管理-栏目列表：修改上级目录无效问题\r\n26. 系统配置文件优化\r\n27. 新增MarkDown在线编辑器editor.md示例\r\n28. 修复登录页面弹窗文字不显示的问题\r\n29. 企业官网-内容管理-文章列表-栏目列表（排除外部链接）树型结构逻辑优化\r\n30. 升级pagehelper到最新版1.3.1\r\n31. 允许手动设置对称加密秘钥\r\n32. 登录页面系统名称取配置文件的系统名称\r\n33. 优化大数据(百万级)导入Demo\r\n34. 新增大数据导入Demo(EasyExcel)\r\n35. 优化表格行拖拽事件处理\r\n36. 修复示例弹层js报错\r\n37. 升级commons.fileupload到最新版本v1.4\r\n38. 升级commons.io到最新版本v2.10.0\r\n39. 新增表格示例（自定义视图分页）\r\n40. 定时任务屏蔽rmi远程调用\r\n41. 添加刷新options配置\r\n\r\n## v4.6.1-（2021.05.27-2021-06-15）\r\n1. 修复个人办公-我的任务-条件搜索查询功能\r\n2. 个人办公-我的任务-搜索日期条件限制：创建时间起、止，选择日期限制（创建日期止 不能选择小于 创建日期起）\r\n3. 个人办公-我的任务-请假申请-添加请假申请：请假开始、结束时间，选择日期限制（请假结束时间 不能选择小于 请假开始时间）\r\n4. datetimepicker日期组件-清除按钮-样式调整\r\n5. 请假申请流程-流转信息-优化\r\n6. 首页、README.md、maven优化\r\n7. 请假申请流程优化\r\n8. 修复请假驳回时的审批意见、流转信息的提交意见、任务历时无法显示问题\r\n9. 请假申请列表-新增根据请假人查询、删除、批量删除功能\r\n10. 升级spring-boot-maven-plugin插件版本到v2.5.0\r\n11. 升级maven-compiler-plugin插件版本到v3.8.1\r\n12. 升级maven-war-plugin插件版本到v3.3.1\r\n13. 升级spring-boot-maven-plugin插件版本到v2.5.0\r\n14. 升级maven-compiler-plugin插件版本到v3.8.1\r\n15. 升级maven-war-plugin插件版本到v3.3.1\r\n16. 升级spring-boot-starter-aop到最新版本v2.5.1\r\n17. 升级guava到最新版本v30.1.1-jre\r\n18. 升级easyexcel到最新版本v2.2.10\r\n19. maven依赖配置优化\r\n20. 升级oshi到最新版本v5.7.4\r\n21. 升级jna版本到v5.8.0\r\n22. 优化部门启用状态\r\n23. 新增表格参数（是否支持打印页面showPrint）\r\n24. 区分Byte[]类型防止出现死循环\r\n25. 升级knife4j版本到v2.0.6（以兼容swagger3）\r\n26. 升级swagger到最新版本v3.0.0\r\n27. 修复导出角色数据范围翻译缺少仅本人\r\n28. 导出Excel文件支持数据流下载方式\r\n29. 移除冗余文件\r\n30. 调整main路径下样式路径\r\n31. 升级bootstrap-table到最新版本v1.18.3\r\n32. IDCardUtils工具类优化\r\n33. 调整用户测试接口swagger注解\r\n34. 增加表格重置分页的参数\r\n35. 更新README.md、首页-技术选型 说明\r\n36. 增加表格重置分页的参数\r\n37. 修复表格图片预览移动端宽高无效问题\r\n38. 行拖拽重命名reorder-row-js\r\n39. 修复两处存在SQL注入漏洞问题\r\n40. 集成yuicompressor实现(CSS/JS压缩)\r\n41. 优化参数&字典缓存操作\r\n42. 修复druid最新版本数据监控页面刷新后空白问题\r\n\r\n## v4.6.0-（2021.04.08-2021.05.27）\r\n1. 新增表格参数（导出方式&导出文件类型）\r\n2. 修正mapper.java.vm模板注释\r\n3. 修复请求形参未传值记录日志异常问题\r\n4. 修正方法名单词拼写错误\r\n5. 升级fastjson到最新版1.2.76\r\n6. 升级druid到最新版本v1.2.6\r\n7. 系统用户、注册用户新增身份证号码字段\r\n8. 新增IDcard工具类\r\n9. 调整新增、编辑用户页面排版\r\n10. 关闭中文访问路径校验，以便CKFinder查看对应的中文目录下（或中文名称）的各文件（需要开启时可自行开启）\r\n11. 升级layer到最新版本v3.5.0\r\n12. 升级layui到最新版本v2.6.6\r\n13. 升级laydate到最新版本v5.3.0\r\n14. 动态生成密匙，防止默认密钥泄露\r\n15. 通知通告-选择接收人-改造为部门人员树型结构选择方式，用户体验更佳\r\n16. 系统部门树 选择逻辑修改-非部门子节点不可选择\r\n17. 修复用户管理-岗位下拉框、通知通告-接收人下拉框，在IE浏览器下不兼容问题\r\n18. 企业官网广告、文章内容缩略图样式调整\r\n19. 使用预定义的常量，避免实例化对象\r\n20. 树级结构更新子节点的anecstors字段时应把replace替换为replaceFirst\r\n21. 修复了删除操作日志时没有记录日志的bug\r\n22. 企业官网新增背景音乐（打开网站自动播放背景音乐）\r\n23. 企业官网优化（文章内容显示全部状态的数据）\r\n24. 企业官网优化（1、官网栏目逻辑代码优化,去除冗余的查询方式 2、支持多站点建站，各个站点之间数据互不影响，可随意切换站点）\r\n25. 企业官网（栏目、内容管理）的树形菜单结构，新增时自动选中\r\n26. 示例演示模块显示隐藏权限优化\r\n27. 实例演示弹框-弹层组件，增加 相册层 示例\r\n28. 主子表操作封装处理增加文本域类型\r\n29. 示例演示中弹框-弹层表格，增加 回调形式 回显到父窗体\r\n30. 调整验证码路径和代码生成模板注释\r\n31. 新增示例（表格列拖拽）\r\n32. 日志注解兼容获取json类型的参数\r\n33. 修复表单向导插件有滚动条时底部工具栏无法固定问题\r\n34. 修复表单向导示例\r\n35. 优化ExcelUtil空值处理\r\n36. 修正模板字符编码\r\n37. 升级mybatis到最新版3.5.6 阻止远程代码执行漏洞\r\n38. 修复删除用户bug\r\n39. 优化代码生成导出模板名称\r\n40. 修复横向菜单无法打开页签问题\r\n41. 部门新增、主子表代码生成优化\r\n42. 代码格式化、导包格式化整理\r\n43. 新增示例（导出选择列）\r\n\r\n## v4.5.2-（2021.01.01-2021.04.07）\r\n1. 企业官网新增企业发展史时间轴\r\n2. 数据库链接配置信息修改\r\n3. 新增IE浏览器版本过低（低于IE9）提示页面\r\n4. 新增数据库密码加密配置\r\n5. 锁屏-解锁屏幕后显示之前打开的页签\r\n6. 操作日志返回参数添加非空验证\r\n7. 数据监控默认账户密码防止越权访问\r\n8. 个人中心错误问题\r\n9. velocity剔除commons-collections版本，防止3.2.1版本的反序列化漏洞\r\n10. 将控制器基类的日志设置成 this.getClass()，这样在日志里就可以记录是在哪个控制器记录的\r\n11. 文件管理系统模块优化\r\n12. 子表模板默认日期格式化\r\n13. 升级oshi到最新版本v5.6.0\r\n14. 升级jna到v5.7.0\r\n15. 代码生成预览语言根据后缀名高亮显示\r\n16. 升级SpringBoot到最新版本2.2.13\r\n17. 升级shiro到最新版1.7.1 阻止身份认证绕过漏洞\r\n18. 企业官方网站-文章内容-上传的文件路径修改为可公共访问\r\n19. 升级bootstrapTable相关组件到最新版本v1.18.2\r\n20. 升级bootstrapTable到最新版本v1.18.0\r\n21. 搜索建议选择后隐藏列表\r\n22. 主子表示例增加初始化数据\r\n23. 优化Excel导入增加空行判断\r\n24. 更新fileinput.css\r\n25. 优化更多操作按钮左侧移入内容闪现消失情况\r\n26. 修复主子表提交中列隐藏后出现列偏移问题\r\n27. 表格销毁清除记住选择数据\r\n28. 调整Map通用处理工具类中数组参数拼接\r\n29. 升级fastjson到最新版1.2.75\r\n30. 增加表格动态列Demo\r\n31. 代码生成选择主子表关联元素必填\r\n32. 修复导入数据为负浮点数时，导入结果会丢失精度问题\r\n33. 企业官网-新增站点管理\r\n34. 升级druid到最新版本v1.2.4\r\n35. 企业官网伪静态化\r\n36. 新增企业官网-解决方案-查看详情\r\n37. 新增企业官网-新闻动态-查看详情\r\n38. 修复企业官网-文章新增、编辑时，富文本编辑器无法上传图片问题\r\n39. 修改文件上传的默认路径\r\n\r\n## v4.5.1-（2020.12.03-2020.12.31）\r\n1. tree根据Id和Name选中指定节点增加空判断\r\n2. 企业官网-官网首页、关于我们、联系我们代码优化\r\n3. 初始列默认字段类型\r\n4. 代码生成: 数据库文本类型生成表单文本域\r\n5. Excel注解支持Image图片导出\r\n6. 代码生成日期控件区分范围\r\n7. 新增 企业官网\r\n8. cms官网-广告管理-添加广告标题、广内容\r\n9. 防止错误页返回主页出现嵌套问题\r\n10. 新增示例（标签 & 提示）\r\n11. 添加单据打印示例\r\n12. 弹出层openOptions移动端自适应\r\n13. 通知通告 发布状态为草稿状态时：隐藏接收人 tab\r\n14. 公共方法（addFull添加信息 全屏）在无参数时没有替换url中参数字符为空的问题\r\n15. 使用widthUnit定义选项单位\r\n16. 浏览文件解决bootstrap-treetable,表头跟表格宽度不同步的问题\r\n17. 修复主子表editColumn table dataIndex循环bug\r\n18. 新增表格参数（自定义打印页面模板printPageBuilder）\r\n19. 请求返回值使用常量web_status.SUCCESS\r\n20. 新增通告通知模块功能\r\n21. 升级SpringBoot到最新版本2.2.12 提升启动速度\r\n22. 菜单新增是否刷新页面\r\n23. 新增选项卡是否刷新属性\r\n24. 系统管理-参数设置-列表页面：新增更新时间、更新人字段显示\r\n25. 流程图为中文名称时查看流程图页面错误问题修复\r\n26. 修改表格初始参数sortName默认值为undefined\r\n27. 获取属性的get方法空值验证\r\n28. 修复生成主子表外键名错误\r\n29. 修复online sessionId大小写bug\r\n30. 修复代码生成: 生成主子表代码, 子表新增数据报错\r\n31. 目录结构优化\r\n32. 去除 Maven打包时，提示dependencies.dependency.systemPath警告\r\n33. 删除用户和角色解绑关联\r\n34. 打包优化\r\n35. 新增锁定屏幕功能\r\n36. 回显数据字典防止空值\r\n37. 防止匿名访问进行过滤\r\n38. 新增密码字符范围提示\r\n39. 主子表操作添加通用addColumn方法\r\n40. 升级bitwalker到最新版本1.21\r\n41. WebUtil代码优化\r\n42. 升级poi到最新版本4.1.2\r\n43. Excel支持注解align对齐方式\r\n\r\n## v4.5.0-（2020.10.01-2020.12.02）\r\n1. 升级bootstrap-fileinput到最新版本5.1.3\r\n2. 表格树加载完成触发tooltip方法\r\n3. 升级SpringBoot到最新版本2.1.18\r\n4. 修正转换字符串的目标字符集属性\r\n5. 新增表格参数（是否显示行间隔色striped）\r\n6. 升级bootstrapTable相关组件到最新版本v1.18.0\r\n7. 升级bootstrapTable到最新版本v1.18.0\r\n8. 代码生成删除多余的数字float类型\r\n9. 修复用户详细页面用户编号格式错位\r\n10. 新增表格参数（渲染完成后执行的事件onPostBody）\r\n11. 表格树逻辑优化\r\n12. 防止未初始参数脚本导致的异常\r\n13. 修复封装类转基础数据空指针异常\r\n14. 升级oshi到最新版本v5.3.6\r\n15. 新增缓存监控功能\r\n16. session配置永不过期，不删除在线会话信息\r\n17. 树表溢出元素内容隐藏\r\n18. 任意文件下载漏洞修复\r\n19. 升级shiro到最新版1.7.0 阻止权限绕过漏洞\r\n20. 新增表格行触发事件（onCheck、onUncheck、onCheckAll、onUncheckAll）\r\n21. 修复多页签关闭非当前选项出现空白问题\r\n22. 升级druid到最新版本v1.2.2\r\n23. 代码生成预览支持高亮显示\r\n24. mapperLocations配置支持分隔符\r\n25. 权限调整\r\n26. 修复代码生成模板文件上传组件缺少ctx的问题\r\n27. 格式化页面代码\r\n28. 关闭缓存统计信息\r\n29. 修正拼写错误\r\n30. 去除用户手机邮箱部门必填验证\r\n31. 注册账号设置默认用户名称及密码最后更新时间\r\n32. 添加检查密码范围支持的特殊字符包括：~!@#$%^&*()-=_+\r\n33. 账号密码支持自定义更新周期\r\n34. 初始密码支持自定义修改策略\r\n35. 用户修改新密码不能与旧密码相同\r\n36. 调整sql默认时间\r\n37. 新增日期格式化方法\r\n38. 解决代码生成没有bit类型的问题\r\n39. 树结构加载添加callBack回调方法\r\n40. 解决用户管理页面滚动返回顶部条失效\r\n41. 升级pagehelper到最新版1.3.0\r\n42. 回显数据字典（字符串数组）增加空值判断\r\n43. 升级druid到最新版本v1.2.1\r\n44. 升级fastjson到最新版1.2.74\r\n45. 修改前端密码长度校验和错误提示不符问题\r\n46. jna指定版本\r\n\r\n## v4.4.0-（2020.08.01-2020.09.30）\r\n1. 文件上传工具类代码优化\r\n2. AjaxResult重写put方法，以方便链式调用\r\n3. 增强验证码校验的语义，便于理解\r\n4. 修改session同步逻辑错误\r\n5. 添加导入数据弹出窗体自定义宽高\r\n6. 用户信息参数返回忽略掉密码字段\r\n7. 优化swaggerUI界面，新增Knife4j\r\n8. 升级oshi到最新版本v5.2.5\r\n9. 修正语义错误&删除多余方法\r\n10. 修改主子表提交示例代码\r\n11. 升级springboot到2.1.17 提升安全性\r\n12. 优化$.modal.close方法\r\n13. 导入excel整形值校验优化\r\n14. 菜单&数据权限新增（展开/折叠 全选/全不选 父子联动）\r\n15. 表单向导插件更换为jquery-smartwizard\r\n16. 新增表格列宽拖动插件\r\n17. 优化页脚显示控制的判断表达式\r\n18. 输入框组验证错误后置图标提示颜色\r\n19. 限制系统内置参数不允许删除\r\n20. 新增系统参数设置（是否开启页脚功能）\r\n21. 修复窗体大小改变后浮动提示框失效问题\r\n22. 修复点击左上角返回首页，浏览器刷新导致之前的菜单重新弹出;超出字符提示增加换行\r\n23. 修复菜单收起时当前选中菜单和展开的子菜单间存在间隔\r\n24. 新增表格参数（通过自定义函数设置标题样式headerStyle）\r\n25. 调整字符串格式化(%s )参数为空时转为空字符串\r\n26. mapper层添加@Component注解，去除Could not autowire. No beans of \'xxx\' type found提示\r\n27. Excel导出类型NUMERIC支持精度浮点类型\r\n28. 降级druid到版本v1.1.22，防止出现一些错误\r\n29. 修改页签行高\r\n30. 新增CKFidner2.x API\r\n31. 数据字典缓存空值处理\r\n32. 升级druid到最新版本v1.1.23\r\n33. 去除mini菜单窗口底部波浪线\r\n34. 生成代码补充必填样式\r\n35. 新增菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）\r\n36. 更新支付Demo【更新appid、商户私钥、支付宝公钥、支付宝网关】（由于现在个人无法进行支付签约，必须要企业营业执照才能进行签约，所以无法查看完善的支付流程）\r\n37. 新增表格参数（通过自定义函数设置页脚样式footerStyle）\r\n38. 上传媒体类型添加视频格式\r\n39. 数据权限判断参数类型\r\n40. 修正数据库字符串类型nvarchar\r\n41. 优化递归子节点\r\n42. 修复多表格搜索formId无效\r\n43. 添加Ajax局部刷新demo\r\n44. 导出Excel调整targetAttr获取值方法，防止get方法不规范\r\n45. 生成页面时不忽略remark属性\r\n46. 字典数据列表页添加关闭按钮\r\n47. Excel注解支持自动统计数据总和\r\n48. 同步表结构不存在时，提示错误信息\r\n49. 系统首页优化\r\n50. 修改表格行内编辑示例旧值参数\r\n51. 设置默认排序顺序\r\n52. fastjson升级为1.2.73版本（修复高危漏洞）\r\n53. shiro升级到1.6.0版本（修复高危漏洞）\r\n54. Excel注解支持设置BigDecimal精度&舍入规则\r\n55. 代码生成支持同步数据库\r\n56. 操作日志记录排除敏感属性字段\r\n57. 修复页面存在多表格，回调函数res数据不正确问题\r\n58. 修复不同浏览器附件下载中文名乱码的问题\r\n59. jquery-zTree树插件版本升级到3.5.44\r\n60. 表格树标题内容支持html语义化标签\r\n61. 主子表示例添加日期列\r\n62. 强退后立即清理登录帐号的缓存会话信息，防止强退后的用户继续进行访问操作\r\n63. 操作日志查询方式调整\r\n64. 修复更新表格插件后导致的记住我错误\r\n65. 代码生成支持富文本控件\r\n66. 菜单页签联动优化\r\n67. 修改Excel设置STRING单元格类型\r\n68. 修复更新表格插件后导致的主子表错误\r\n69. 用户密码支持自定义配置规则\r\n70. 邮箱长度限制50\r\n71. 修复多表格无法设置实例配置问题\r\n72. 添加获取当前的环境配置方法\r\n\r\n## v4.3.0-（2020.06.16-2020.07.30）\r\n1. 移除jcpfree打印插件&Demo\r\n2. 新增表格打印Demo\r\n3. 新增表格自动刷新Demo\r\n4. HTML过滤器改为将html转义\r\n5. 表格样式优化\r\n6. 新增表格参数（自定义加载文本的字体大小loadingFontSize）\r\n7. 表格请求方式method支持自定义配置\r\n8. 升级表格行编辑&移动端适应插件\r\n9. 更换表格冻结列插件\r\n10. 升级bootstrapTable到最新版本1.17.1\r\n11. 修复配置应用的访问路径首页页签重复问题\r\n12. openTab打开时滚动到当前页签\r\n13. 截取返回参数长度，防止超出异常\r\n14. 字符未使用下划线不进行驼峰式处理\r\n15. 文件名修改为uuid方式\r\n16. 添加定时任务cron表达式验证\r\n17. 拆分表格插件，按需引入\r\n18. 兼容IE浏览器对象不支持toBlob属性或方法问题\r\n19. 更换图片裁剪工具为cropper\r\n20. 角色管理-分配用户-不允许对超级系统管理员进行“取消授权”操作\r\n21. 修改切换“浅蓝”主题，首页菜单字体和主题背景颜色冲突的问题\r\n22. 用户角色操作项：对“超级管理员”角色进行优化（去除删除操作项、启用状态不可关闭）\r\n23. 规范（格式化）yml文件内容格式\r\n24. Excel支持sort导出排序\r\n25. 代码生成支持自定义路径\r\n26. 代码生成支持选择上级菜单\r\n27. 代码生成支持上传控件\r\n28. 用户分配角色不允许选择超级管理员角色\r\n29. 添加右侧冻结列示例\r\n30. 冻结列右侧自适应\r\n31. 修复表格冻结列错位问题\r\n32. 信息安全漏洞（请务必保持cipherKey密钥唯一性）\r\n33. 检查字符支持小数点&降级改成异常提醒\r\n34. openOptions函数中加入自定义maxmin属性\r\n35. 支持openOptions方法最大化\r\n36. 验证码清除，防止多次使用\r\n37. 修复验证码使用后仍可用的问题\r\n38. 支持openOptions方法多个按钮回调\r\n39. 右键页签操作实现与菜单联动\r\n40. 关闭顶部tab页时，左侧菜单定位到当前显示页\r\n41. 对文件上传、修改、编辑操作进行权限控制。演示模式不允许操作\r\n42. 升级shiro到最新版1.5.3 阻止权限绕过漏洞\r\n43. 新增isLinkage支持页签与菜单联动\r\n44. 修复代码生成,导入表结构出现异常时,页面不提醒问题\r\n45. 加载头像时，图片如果不存在，则显示一个默认头像\r\n46. Excel支持dictType读取字符串组内容\r\n47. Excel导出支持字典类型\r\n48. 代码生成主子表序号调整\r\n49. Excel支持readConverterExp读取字符串组内容\r\n50. 修复jquery表单序列化时复选框未选中不会序列化到对象中去问题\r\n51. 代码生成-显示类型-支持复选框\r\n52. 新增回显数据字典（字符串数组）\r\n53. 用户信息添加输入框组图标&鼠标按下显示密码\r\n54. 主子表生成模板多余逗号问题\r\n55. 输入框组图标元素修改成圆角\r\n56. 修复浏览器手动缩放比例后菜单无法自适应问题\r\n57. 常量接口修改为常量类\r\n58. 前端表单样式修改成圆角\r\n59. ajaxSuccess判断修正\r\n60. HttpUtils.sendPost()方法，参数无需拼接参数到url\r\n61. HTML过滤器不替换&实体\r\n62. 代码生成模板支持主子表\r\n63. 代码生成浮点型改用BigDecimal\r\n64. 主子表示例添加序号&防止insertRow数据被初始化\r\n65. 新增示例（主子表提交）\r\n\r\n## v1.4.0-（2020.05.04-2020.06.15）\r\n1. 修复表单构建单选和多选框渲染问题\r\n2. 添加是否开启swagger配置\r\n3. 代码生成模板调整，字段为String并且必填则加空串条件\r\n4. 字典数据查询列表根据dictSort升序排序\r\n5. 首页菜单显示调整\r\n6. 修复树表对imageView和tooltip方法无效问题\r\n7. 新增多级联动下拉示例\r\n8. 升级fastjson到最新版1.2.70 修复高危安全漏洞\r\n9. demo页面清除html链接，防止点击后跳转出现404\r\n10. 新增demo子系统模块\r\n11. 新增表格列参数（是否列选项可见ignore）\r\n12. 修复部分情况节点不展开问题\r\n13. 在线用户强退方法合并\r\n14. 修复selectColumns方法获取子对象数据无效问题\r\n15. 修改数据源类型优先级，先根据方法，再根据类\r\n16. 类上数据源类型获取不到问题，修改优先级，先根据方法，再根据类\r\n17. 修改上级部门（选择项排除本身和下级）\r\n18. 修复关闭标签页后刷新还是上次地址问题\r\n19. 通用http发送方法增加参数 contentType 编码类型\r\n20. 更换IP地址查询接口\r\n21. 新增表格参数（是否启用显示卡片视图cardView）\r\n22. 修复选择菜单后刷新页面，菜单箭头显示不对问题\r\n23. 添加校验部门包含未停用的子部门\r\n24. 针对性屏蔽Enter\r\n25. 取消回车自动提交表单\r\n26. 新增表格参数（是否显示全屏按钮showFullscreen）\r\n27. \'A\',\'I\',\'BUTTON\' 标签忽略clickToSelect事件，防止点击操作按钮时选中\r\n28. 新增表格参数（是否启用分页条无限循环的功能paginationLoop）\r\n29. String类型比较相等问题调整\r\n30. 表格添加显示/隐藏所有列方法 showAllColumns/hideAllColumns\r\n31. 新增表格参数（是否显示表头showHeader）\r\n32. 邮箱显示截取部分字符串，防止低分辨率错位\r\n33. 优化查询条件label为时间对齐问题\r\n34. fix bug: 字典排序值=0时无效\r\n35. 升级fastjson到最新版1.2.68 修复安全加固\r\n36. list*.vm模板优化\r\n37. 删除无用注解\r\n38. 添加data数据加载属性及示例\r\n39. 代码生成列属性根据sort排序\r\n40. 气泡弹出框特效移至通用js\r\n41. 图片预览事件属性修正\r\n42. @Override注解缺失\r\n43. 修复冻结列排序样式无效问题\r\n44. 修复“更多操作”，部分浏览器不兼容情况\r\n45. 升级Bootstrap版本到v3.3.7\r\n46. 修复context-path的情况下个人中心刷新导致样式问题\r\n47. mysql驱动包移至web模块\r\n48. 去掉多余的依赖\r\n49. 全屏editFull打开适配表树\r\n\r\n## v1.3.0-（2020.02.18-2020.05.03）\r\n1. 用户管理添加分配角色页面\r\n2. 定时任务添加调度日志按钮\r\n3. 新增是否开启用户注册功能\r\n4. 页面滚动显示返回顶部按钮\r\n5. 移动端定时任务&角色管理更多操作可点击\r\n6. 定时任务&角色管理添加更多操作按钮\r\n7. 移动端点击左侧目录不进行菜单切换\r\n8. 代码生成细节优化\r\n9. iframe框架页会话过期弹出超时提示\r\n10. 移动端登录不显示左侧菜单\r\n11. 首页logo固定，不随菜单滚动\r\n12. 任务分组字典翻译（调度日志详细）\r\n13. 字典管理添加缓存读取\r\n14. 字典数据列表标签显示样式\r\n15. 参数管理支持缓存操作\r\n16. 日期控件清空结束时间设置开始默认值为2099-12-31\r\n17. 表格树添加获取数据后响应回调处理\r\n18. 批量替换表前缀调整\r\n19. 调整包顺序\r\n20. !153 支持表格导入模板的弹窗表单加入其它输入控件\r\n21. 登录页面默认模式设置\r\n22. 重置刷新表格树\r\n23. 新增支持导出数据字段排序\r\n\r\n## v1.2.0-（2019.12.01-2020.02.17）\r\n1. 新增-CMS内容管理-子系统\r\n2. 新增-文件管理-子系统\r\n3. 新增-工作流程管理-子系统\r\n4. 修改代码生成部分细节问题\r\n5. 新增表格参数（是否单选checkbox）\r\n6. 防止db字段名为一个字母导致出现生成异常\r\n7. druid未授权不允许访问\r\n8. 表格树父节点兼容0,\'0\',\'\',null\r\n9. 调整表格树兼容父节点判断\r\n10. 必填的项增加星号\r\n11. 修复select2不显示校验错误信息\r\n12. HTML过滤器不替换双引号为&quot;，防止json格式无效\r\n13. 添加HTML过滤器，用于去除XSS漏洞隐患\r\n14. 修复多数据源下enabled=false导致读取不到bean导致异常问题\r\n15. 修复翻页记住选择项数据问题\r\n16. 用户邮箱长度限制20\r\n17. 修改错误页面返回主页出现嵌套问题\r\n18. 表格浮动提示单双引号转义\r\n19. 代码生成防止缓存内的数据没有及时写入到zip文件\r\n20. 支持配置四级菜单\r\n21. 升级shiro到最新版1.4.2 阻止rememberMe漏洞攻击\r\n22. 升级summernote到最新版本v0.8.12\r\n23. 侧边栏添加一套深蓝色主题\r\n24. Excel注解dateFormat属性为字符串时间时格式处理\r\n25. 浏览代码时间字符串处理\r\n26. 支持mode配置history（表示去掉地址栏的#）\r\n27. 修复War部署无法正常shutdown,ehcache内存泄漏\r\n28. 修复代码生成短字段无法识别问题\r\n29. 修复war包部署情况下404、500等页面样式丢失问题\r\n30. 系统会话缓存优化\r\n31. 代码生成模板增加导出功能日志记录\r\n32. serviceImpl模版 update方法判断bug修正\r\n33. 操作日志详情bug修复\r\n34. 系统首页thymeleaf语法优化\r\n35. select2选择数量限制提示语\r\n36. 代码生成查询时忽略大小写、翻页记住选中、表注释未填写也允许导入\r\n37. 代码生成唯一编号调整为tableId\r\n38. 全局配置类修改为注解，防止多环境配置下读取问题\r\n39. 中文URL转义\r\n40. 用户头像加载bug修复\r\n41. 修复多表格情况下，firstLoad只对第一个表格生效\r\n42. 处理打包出现警告问题\r\n43. 默认主题样式，防止网速慢情况下出现空白\r\n44. 修复文件上传多级目录识别问题\r\n45. 解码url，防止中文导致页面不能加载问题\r\n46. 右键Tab页刷新事件重复请求问题\r\n\r\n## v1.1.0-（2019.10.22-2019.11.30）\r\n1. 支持多表格实例操作\r\n2. 浮动提示方法tooltip支持弹窗\r\n3. 代码生成&字典数据支持模糊条件查询\r\n4. 增加页签全屏方法\r\n5. 增加清除表单验证错误信息方法\r\n6. 支持iframe局部刷新页面\r\n7. 支持在线切换主题\r\n8. 修改图片预览设置的高宽参数颠倒问题\r\n9. 操作日志新增解锁账户功能\r\n10. 管理员用户&角色不允许操作\r\n11. 去掉jsoup包调用自定义转义工具\r\n12. 添加时间轴示例\r\n13. 修复翻页记住选择时获取指定列值的问题\r\n14. 代码生成sql脚本添加导出按钮\r\n15. 添加表格父子视图示例\r\n16. 添加表格行内编辑示例\r\n17. 升级fastjson到最新版1.2.60 阻止漏洞攻击\r\n18. 升级echarts到最新版4.2.1\r\n19. 操作日志新增返回参数\r\n20. 支持mybatis通配符扫描任意多个包\r\n21. 权限验证多种情况处理\r\n22. 修复树形类型的代码生成的部分必要属性无法显示\r\n23. 修复非表格插件情况下重置出现异常\r\n24. 修复富文本编辑器有序列表冲突\r\n25. 代码生成表前缀配置支持多个\r\n26. 修复自动去除表前缀配置无效问题\r\n27. 菜单列表按钮数据可见不显示（权限标识控制）\r\n28. 修复设置会话超时时间无效问题\r\n29. 新增本地资源通用下载方法\r\n30. 操作日志记录新增请求方式\r\n31. 代码生成单选按钮属性重名修复\r\n32. 优化select2下拉框宽度不会随浏览器改变\r\n33. 修复代码生成树表异常\r\n\r\n## v1.0.0-（2019.08.08-2019.10.21）\r\n1. 代码生成支持预览、编辑，保存方案\r\n2. 新增防止表单重复提交注解\r\n3. 新增后端校验（和前端保持一致）\r\n4. 新增同一个用户最大会话数控制\r\n5. Excel导出子对象支持多个字段\r\n6. 定时任务支持静态调用和多参数\r\n7. 定时任务增加分组条件查询\r\n8. 字典类型增加任务分组数据\r\n9. 新增表格是否首次加载数据\r\n10. 新增parentTab选项卡可在同一页签打开\r\n11. 多数据源支持类注解（允许继承父类的注解）\r\n12. 部门及以下数据权限（调整为以下及所有子节点）\r\n13. 新增角色数据权限配（仅本人数据权限）\r\n14. 修改菜单权限显示问题\r\n15. 上传文件修改路径及返回名称\r\n16. 添加报表插件及示例\r\n17. 添加首页统计模板\r\n18. 添加表格拖拽示例\r\n19. 添加卡片列表示例\r\n20. 添加富文本编辑器示例\r\n21. 添加表格动态增删改查示例\r\n22. 添加用户页面岗位选择框提示\r\n23. 点击菜单操作添加背景高亮显示\r\n24. 表格树新增showSearch是否显示检索信息\r\n25. 解决表格列设置sortName无效问题\r\n26. 表格图片预览支持自定义设置宽高\r\n27. 添加表格列浮动提示（单击文本复制）\r\n28. PC端收起菜单后支持浮动显示\r\n29. 详细操作样式调整\r\n30. 修改用户更新描述空串不更新问题\r\n31. 导入修改为模板渲染\r\n32. 修改菜单及部门排序规则\r\n33. 角色导出数据范围表达式翻译\r\n34. 添加summernote富文本字体大小\r\n35. 优化表格底部下边框防重叠&汇总像素问题\r\n36. 树表格支持属性多层级访问\r\n37. 修复IE浏览器用户管理界面右侧留白问题\r\n38. 重置按钮刷新表格\r\n39. 重置密码更新用户缓存\r\n40. 优化验证码属性参数\r\n41. 支持数据监控配置用户名和密码\r\n42. 文件上传修改按钮背景及加载动画\r\n43. 支持配置一级菜单href跳转\r\n44. 侧边栏添加一套浅色主题\r\n45. 树表格添加回调函数（校验异常状态）\r\n46. 用户个人中心适配手机端显示\r\n47. Excel支持设置导出类型&更换样式\r\n48. 检查属性改变修改为克隆方式（防止热部署强转异常）', 10, '0', 'system', '2021-06-29 16:06:34', 'system', '2024-11-18 14:30:48', '系统更新日志');

-- ----------------------------
-- Table structure for cms_site
-- ----------------------------
DROP TABLE IF EXISTS `cms_site`;
CREATE TABLE `cms_site`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编号',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '站点名称',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '站点标题',
  `site_domain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '站点域名',
  `bg_music` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '背景音乐',
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关键字',
  `copyright` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '版权信息',
  `sort` int NULL DEFAULT 0 COMMENT '排序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '0.启用、1.停用',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cms_site_del_flag`(`status` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '站点表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_site
-- ----------------------------
INSERT INTO `cms_site` VALUES ('292cba294f8b4a0eba62452aa21b6ef5', '企业官网', '我们善于整合各个IT厂商的产品与方案优势，为您打造最适合的信息化解决方案。', 'https://www.zhgxt.com', '/zhglxt/userfiles/system/files/music/1617022454093.mp3', '	我企定位为信息化服务商！我们专注于华南地区信息化基础架构产品销售与服务，结合实际经验与案例，与合作伙伴分享成熟可靠的信息化解决方案，作为 Lenovo、 IBM、 Dell、 Oracle、 趋势等多个产品的授权代理商，我们善于整合各个IT厂商的产品与方案优势，为您打造最适合的信息化解决方案。\r\n	分享不但具备强大的技术服务能力、同时建立了一套个性化的服务体系，涉及了前期规划、解决方案、应用测试、系统实施、技术支持、售后服务等各个层面，“全心全意为客户服务，以提高客户满意度为最高目标”是我们坚持不变的服务理念！\r\n	正如我们的企业名称一样，分享是我们的核心理念，合作、成长、始终坚持为客户带来价值，不断创新，与客户分享成功与喜悦。', '企业官网', '<p style=\"text-align: center; \"><font color=\"#333333\" face=\"Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"font-size: 14px; white-space: pre-wrap;\"><a href=\"http://www.dlsdys.com\" target=\"_blank\">联系我们</a> | <a href=\"http://www.dlsdys.com\" target=\"_blank\">意见反馈</a> | <a href=\"http://www.dlsdys.com\" target=\"_blank\">友情链接</a></span></font></p><p style=\"text-align: center; \"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: pre-wrap;\">Copyright © 2019-2025 </span><font color=\"#0088cc\" face=\"Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"background-color: rgb(255, 255, 255); white-space: pre-wrap; font-size: 14px;\"><a href=\"http://www.dlsdys.com\" target=\"_blank\"><b>liuwy</b></a></span></font><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: pre-wrap;\"><a href=\"http://www.dlsdys.com\" target=\"_blank\"><b> </b></a> </span><font color=\"#333333\" face=\"Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"font-size: 14px; white-space: pre-wrap;\">All Rights Reserved</span></font><br></p>', 10, '0', 'system', '2021-01-05 21:22:13', 'system', '2025-06-12 19:47:37', '背景音乐播放、支持所有主流浏览器哦！');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `form_col_num` int NULL DEFAULT 1 COMMENT '表单布局（单列 双列 三列）',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('ZhglxtScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('ZhglxtScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('ZhglxtScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('ZhglxtScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.zhglxt.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001F636F6D2E7A68676C78742E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720028636F6D2E7A68676C78742E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000019754621AC8787074000070707371007E000F77080000019758BCAAE8787400013174000E302F3130202A202A202A202A203F7400137A68676C78745461736B2E6E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('ZhglxtScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.zhglxt.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001F636F6D2E7A68676C78742E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720028636F6D2E7A68676C78742E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000019754621AC8787074000070707371007E000F77080000019758BCC640787400013174000E302F3135202A202A202A202A203F74001B7A68676C78745461736B2E706172616D7328277A68676C7874272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('ZhglxtScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.zhglxt.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001F636F6D2E7A68676C78742E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720028636F6D2E7A68676C78742E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000019754621AC8787074000070707371007E000F77080000019758BCE198787400013174000E302F3230202A202A202A202A203F74003E7A68676C78745461736B2E6D756C7469706C65506172616D7328277A68676C7874272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('ZhglxtScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('ZhglxtScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('ZhglxtScheduler', 'DESKTOP-9SVD4KU1750994781078', 1750994853219, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name` ASC, `job_name` ASC, `job_group` ASC) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('ZhglxtScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1750994790000, -1, 5, 'PAUSED', 'CRON', 1750994781000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('ZhglxtScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1750994790000, -1, 5, 'PAUSED', 'CRON', 1750994781000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('ZhglxtScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1750994800000, -1, 5, 'PAUSED', 'CRON', 1750994781000, 0, NULL, 2, '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2025-06-09 19:10:05', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2025-06-09 19:10:05', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2025-06-09 19:10:05', '', NULL, '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` VALUES (4, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2025-06-09 19:10:05', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '用户管理-密码字符范围', 'sys.account.chrtype', '0', 'Y', 'admin', '2025-06-09 19:10:05', '', NULL, '默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）');
INSERT INTO `sys_config` VALUES (6, '用户管理-初始密码修改策略', 'sys.account.initPasswordModify', '1', 'Y', 'admin', '2025-06-09 19:10:05', '', NULL, '0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (7, '用户管理-账号密码更新周期', 'sys.account.passwordValidateDays', '0', 'Y', 'admin', '2025-06-09 19:10:05', '', NULL, '密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (8, '主框架页-菜单导航显示风格', 'sys.index.menuStyle', 'topnav', 'Y', 'admin', '2025-06-09 19:10:05', '', NULL, '菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）');
INSERT INTO `sys_config` VALUES (9, '主框架页-是否开启页脚', 'sys.index.footer', 'true', 'Y', 'admin', '2025-06-09 19:10:05', '', NULL, '是否开启底部页脚显示（true显示，false隐藏）');
INSERT INTO `sys_config` VALUES (10, '主框架页-是否开启页签', 'sys.index.tagsView', 'true', 'Y', 'admin', '2025-06-09 19:10:05', '', NULL, '是否开启菜单多页签显示（true显示，false隐藏）');
INSERT INTO `sys_config` VALUES (11, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2025-06-09 19:10:05', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '部门id',
  `parent_id` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '集团', 0, '集团', '', '', '0', '0', '', '2025-06-09 19:10:05', '', NULL);
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '广州总公司', 1, '集团', '', '', '0', '0', '', '2025-06-09 19:10:05', '', NULL);
INSERT INTO `sys_dept` VALUES ('102', '100', '0,100', '深圳总公司', 2, '集团', '', '', '0', '0', '', '2025-06-09 19:10:05', '', NULL);
INSERT INTO `sys_dept` VALUES ('103', '101', '0,100,101', '研发部门', 1, '集团', '', '', '0', '0', '', '2025-06-09 19:10:05', '', NULL);
INSERT INTO `sys_dept` VALUES ('104', '101', '0,100,101', '市场部门', 2, '集团', '', '', '0', '0', '', '2025-06-09 19:10:05', '', NULL);
INSERT INTO `sys_dept` VALUES ('105', '101', '0,100,101', '测试部门', 3, '集团', '', '', '0', '0', '', '2025-06-09 19:10:05', '', NULL);
INSERT INTO `sys_dept` VALUES ('106', '101', '0,100,101', '财务部门', 4, '集团', '', '', '0', '0', '', '2025-06-09 19:10:05', '', NULL);
INSERT INTO `sys_dept` VALUES ('107', '101', '0,100,101', '运维部门', 5, '集团', '', '', '0', '0', '', '2025-06-09 19:10:05', '', NULL);
INSERT INTO `sys_dept` VALUES ('108', '102', '0,100,102', '市场部门', 1, '集团', '', '', '0', '0', '', '2025-06-09 19:10:05', '', NULL);
INSERT INTO `sys_dept` VALUES ('109', '102', '0,100,102', '财务部门', 2, '集团', '', '', '0', '0', '', '2025-06-09 19:10:05', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('0883a633f0ef4300ae209055e5cc95fa', 0, '显示', '0', 'cms_show_hide', NULL, 'info', 'Y', '0', 'system', '2025-06-12 11:12:47', '', NULL, '显示');
INSERT INTO `sys_dict_data` VALUES ('1', 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES ('10', 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES ('100', 1, '是', '0', 'cms_yes_no', NULL, 'info', 'N', '0', 'system', '2025-06-12 10:47:29', '', NULL, '是');
INSERT INTO `sys_dict_data` VALUES ('101', 2, '否', '1', 'cms_yes_no', NULL, 'primary', 'Y', '0', 'system', '2025-06-12 10:50:15', '', NULL, '否');
INSERT INTO `sys_dict_data` VALUES ('11', 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES ('15', 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES ('16', 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES ('19', 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES ('2', 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES ('20', 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES ('21', 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES ('22', 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES ('23', 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES ('24', 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES ('25', 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES ('26', 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES ('27', 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES ('28', 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('29', 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('3', 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('5b7ca5a1d3ab4deaa2ab637eed4ae2a0', 1, '隐藏', '1', 'cms_show_hide', '', 'danger', 'N', '0', 'system', '2025-06-12 11:17:07', 'system', '2025-06-12 11:17:19', '隐藏');
INSERT INTO `sys_dict_data` VALUES ('6', 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2025-06-09 19:10:05', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '是否外部链接', 'cms_yes_no', '0', 'system', '2025-06-12 10:46:24', '', NULL, '是否外部链接');
INSERT INTO `sys_dict_type` VALUES (101, '内容管理-状态', 'cms_show_hide', '0', 'system', '2025-06-12 11:04:36', '', NULL, '内容管理-状态');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'zhglxtTask.noParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2025-06-09 19:10:05', 'system', '2025-06-10 15:27:29', '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'zhglxtTask.params(\'zhglxt\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2025-06-09 19:10:05', 'system', '2025-06-10 15:27:36', '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'zhglxtTask.multipleParams(\'zhglxt\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2025-06-09 19:10:05', 'system', '2025-06-10 15:27:43', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `is_refresh` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '是否刷新（0刷新 1不刷新）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1084 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 10, '#', '', 'M', '0', '1', '', 'fa fa-gear', 'admin', '2025-06-09 19:10:05', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 20, '#', '', 'M', '0', '1', '', 'fa fa-video-camera', 'admin', '2025-06-09 19:10:05', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 30, '#', '', 'M', '0', '1', '', 'fa fa-bars', 'admin', '2025-06-09 19:10:05', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, '/system/user', '', 'C', '0', '1', 'system:user:view', 'fa fa-user-o', 'admin', '2025-06-09 19:10:05', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, '/system/role', '', 'C', '0', '1', 'system:role:view', 'fa fa-user-secret', 'admin', '2025-06-09 19:10:05', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, '/system/menu', '', 'C', '0', '1', 'system:menu:view', 'fa fa-th-list', 'admin', '2025-06-09 19:10:05', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, '/system/dept', '', 'C', '0', '1', 'system:dept:view', 'fa fa-outdent', 'admin', '2025-06-09 19:10:05', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, '/system/post', '', 'C', '0', '1', 'system:post:view', 'fa fa-address-card-o', 'admin', '2025-06-09 19:10:05', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, '/system/dict', '', 'C', '0', '1', 'system:dict:view', 'fa fa-bookmark-o', 'admin', '2025-06-09 19:10:05', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, '/system/config', '', 'C', '0', '1', 'system:config:view', 'fa fa-sun-o', 'admin', '2025-06-09 19:10:05', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, '/system/notice', 'menuItem', 'C', '1', '1', 'system:notice:view', 'fa fa-bullhorn', 'admin', '2025-06-09 19:10:05', 'system', '2025-06-10 14:56:37', '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, '#', '', 'M', '0', '1', '', 'fa fa-pencil-square-o', 'admin', '2025-06-09 19:10:05', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, '/monitor/online', '', 'C', '0', '1', 'monitor:online:view', 'fa fa-user-circle', 'admin', '2025-06-09 19:10:05', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, '/monitor/job', '', 'C', '0', '1', 'monitor:job:view', 'fa fa-tasks', 'admin', '2025-06-09 19:10:05', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, '/monitor/data', '', 'C', '0', '1', 'monitor:data:view', 'fa fa-bug', 'admin', '2025-06-09 19:10:05', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, '/monitor/server', '', 'C', '0', '1', 'monitor:server:view', 'fa fa-server', 'admin', '2025-06-09 19:10:05', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, '/monitor/cache', '', 'C', '0', '1', 'monitor:cache:view', 'fa fa-cube', 'admin', '2025-06-09 19:10:05', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, '/tool/build', '', 'C', '0', '1', 'tool:build:view', 'fa fa-wpforms', 'admin', '2025-06-09 19:10:05', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, '/tool/gen', '', 'C', '0', '1', 'tool:gen:view', 'fa fa-code', 'admin', '2025-06-09 19:10:05', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, '/tool/swagger', '', 'C', '0', '1', 'tool:swagger:view', 'fa fa-gg', 'admin', '2025-06-09 19:10:05', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, '/monitor/operlog', '', 'C', '0', '1', 'monitor:operlog:view', 'fa fa-address-book', 'admin', '2025-06-09 19:10:05', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, '/monitor/logininfor', '', 'C', '0', '1', 'monitor:logininfor:view', 'fa fa-file-image-o', 'admin', '2025-06-09 19:10:05', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '#', '', 'F', '0', '1', 'system:user:list', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '#', '', 'F', '0', '1', 'system:user:add', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '#', '', 'F', '0', '1', 'system:user:edit', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '#', '', 'F', '0', '1', 'system:user:remove', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '#', '', 'F', '0', '1', 'system:user:export', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '#', '', 'F', '0', '1', 'system:user:import', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '#', '', 'F', '0', '1', 'system:user:resetPwd', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '#', '', 'F', '0', '1', 'system:role:list', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '#', '', 'F', '0', '1', 'system:role:add', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '#', '', 'F', '0', '1', 'system:role:edit', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '#', '', 'F', '0', '1', 'system:role:remove', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '#', '', 'F', '0', '1', 'system:role:export', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '#', '', 'F', '0', '1', 'system:menu:list', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '#', '', 'F', '0', '1', 'system:menu:add', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '#', '', 'F', '0', '1', 'system:menu:edit', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '#', '', 'F', '0', '1', 'system:menu:remove', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '#', '', 'F', '0', '1', 'system:dept:list', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '#', '', 'F', '0', '1', 'system:dept:add', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '#', '', 'F', '0', '1', 'system:dept:edit', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '#', '', 'F', '0', '1', 'system:dept:remove', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '#', '', 'F', '0', '1', 'system:post:list', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '#', '', 'F', '0', '1', 'system:post:add', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '#', '', 'F', '0', '1', 'system:post:edit', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '#', '', 'F', '0', '1', 'system:post:remove', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '#', '', 'F', '0', '1', 'system:post:export', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', 'F', '0', '1', 'system:dict:list', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', 'F', '0', '1', 'system:dict:add', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', 'F', '0', '1', 'system:dict:edit', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', 'F', '0', '1', 'system:dict:remove', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', 'F', '0', '1', 'system:dict:export', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', 'F', '0', '1', 'system:config:list', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', 'F', '0', '1', 'system:config:add', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', 'F', '0', '1', 'system:config:edit', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', 'F', '0', '1', 'system:config:remove', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', 'F', '0', '1', 'system:config:export', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', 'F', '0', '1', 'system:notice:list', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', 'F', '0', '1', 'system:notice:add', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', 'F', '0', '1', 'system:notice:edit', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', 'F', '0', '1', 'system:notice:remove', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', 'F', '0', '1', 'monitor:operlog:list', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', 'F', '0', '1', 'monitor:operlog:remove', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '详细信息', 500, 3, '#', '', 'F', '0', '1', 'monitor:operlog:detail', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 'F', '0', '1', 'monitor:operlog:export', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 'F', '0', '1', 'monitor:logininfor:list', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 'F', '0', '1', 'monitor:logininfor:remove', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 'F', '0', '1', 'monitor:logininfor:export', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '账户解锁', 501, 4, '#', '', 'F', '0', '1', 'monitor:logininfor:unlock', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '在线查询', 109, 1, '#', '', 'F', '0', '1', 'monitor:online:list', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '批量强退', 109, 2, '#', '', 'F', '0', '1', 'monitor:online:batchForceLogout', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '单条强退', 109, 3, '#', '', 'F', '0', '1', 'monitor:online:forceLogout', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务查询', 110, 1, '#', '', 'F', '0', '1', 'monitor:job:list', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务新增', 110, 2, '#', '', 'F', '0', '1', 'monitor:job:add', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务修改', 110, 3, '#', '', 'F', '0', '1', 'monitor:job:edit', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '任务删除', 110, 4, '#', '', 'F', '0', '1', 'monitor:job:remove', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '状态修改', 110, 5, '#', '', 'F', '0', '1', 'monitor:job:changeStatus', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '任务详细', 110, 6, '#', '', 'F', '0', '1', 'monitor:job:detail', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '任务导出', 110, 7, '#', '', 'F', '0', '1', 'monitor:job:export', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成查询', 115, 1, '#', '', 'F', '0', '1', 'tool:gen:list', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '生成修改', 115, 2, '#', '', 'F', '0', '1', 'tool:gen:edit', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '生成删除', 115, 3, '#', '', 'F', '0', '1', 'tool:gen:remove', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '预览代码', 115, 4, '#', '', 'F', '0', '1', 'tool:gen:preview', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1061, '生成代码', 115, 5, '#', '', 'F', '0', '1', 'tool:gen:code', '#', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1062, '官网管理', 0, 5, '#', 'menuItem', 'M', '0', '1', NULL, 'fa fa-gears', 'system', '2025-06-11 13:17:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1063, '站点栏目管理', 1062, 5, '#', 'menuItem', 'M', '0', '1', NULL, 'fa fa-gear', 'system', '2025-06-11 13:17:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1064, '栏目列表', 1063, 1, '/cms/column/index', 'menuItem', 'C', '0', '1', NULL, 'fa fa-bars', 'system', '2025-06-11 13:18:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1065, '站点列表', 1063, 2, '/cms/site/index', 'menuItem', 'C', '0', '1', NULL, 'fa fa-building-o', 'system', '2025-06-11 13:19:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1066, '新增', 1065, 5, '#', 'menuItem', 'F', '0', '1', 'cms:site:add', '#', 'system', '2025-06-11 13:20:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1067, '修改', 1065, 10, '#', 'menuItem', 'F', '0', '1', 'cms:site:edit', '#', 'system', '2025-06-11 13:20:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1068, '删除', 1065, 15, '#', 'menuItem', 'F', '0', '1', 'cms:site:remove', '#', 'system', '2025-06-11 13:20:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1069, '内容管理', 1062, 10, '#', 'menuItem', 'M', '0', '1', NULL, 'fa fa-edit', 'system', '2025-06-11 13:21:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1070, '广告列表', 1069, 5, '/cms/advertising', 'menuItem', 'C', '0', '1', 'cms:advertising:view', 'fa fa-sort-amount-asc', 'system', '2025-06-11 13:22:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1071, '新增', 1070, 5, '#', 'menuItem', 'F', '0', '1', 'cms:advertising:add', '#', 'system', '2025-06-11 13:23:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1072, '修改', 1070, 10, '#', 'menuItem', 'F', '0', '1', 'cms:advertising:edit', '#', 'system', '2025-06-11 13:23:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1073, '删除', 1070, 15, '#', 'menuItem', 'F', '0', '1', 'cms:advertising:remove', '#', 'system', '2025-06-11 13:23:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1074, '文章列表', 1069, 10, '/cms/article', 'menuItem', 'C', '0', '1', 'cms:article:view', 'fa fa-reorder', 'system', '2025-06-11 13:25:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1075, '新增', 1074, 5, '#', 'menuItem', 'F', '0', '1', 'cms:article:add', '#', 'system', '2025-06-11 13:25:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1076, '修改', 1074, 10, '#', 'menuItem', 'F', '0', '1', 'cms:article:edit', '#', 'system', '2025-06-11 13:25:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1077, '删除', 1074, 15, '#', 'menuItem', 'F', '0', '1', 'cms:article:remove', '#', 'system', '2025-06-11 13:26:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1078, '文档管理', 1062, 15, '#', 'menuItem', 'M', '0', '1', NULL, 'fa fa-barcode', 'system', '2025-06-11 13:27:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1079, '文档列表', 1078, 5, '/cms/helpDoc', 'menuItem', 'C', '0', '1', NULL, 'fa fa-ellipsis-v', 'system', '2025-06-11 13:28:27', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2025-06-09 19:10:05', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2025-06-09 19:10:05', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (3, '若依开源框架介绍', '1', 0x3C703E3C7370616E207374796C653D22636F6C6F723A20726762283233302C20302C2030293B223EE9A1B9E79BAEE4BB8BE7BB8D3C2F7370616E3E3C2F703E3C703E3C666F6E7420636F6C6F723D2223333333333333223E52756F5969E5BC80E6BA90E9A1B9E79BAEE698AFE4B8BAE4BC81E4B89AE794A8E688B7E5AE9AE588B6E79A84E5908EE58FB0E8849AE6898BE69EB6E6A186E69EB6EFBC8CE4B8BAE4BC81E4B89AE68993E980A0E79A84E4B880E7AB99E5BC8FE8A7A3E586B3E696B9E6A188EFBC8CE9998DE4BD8EE4BC81E4B89AE5BC80E58F91E68890E69CACEFBC8CE68F90E58D87E5BC80E58F91E69588E78E87E38082E4B8BBE8A681E58C85E68BACE794A8E688B7E7AEA1E79086E38081E8A792E889B2E7AEA1E79086E38081E983A8E997A8E7AEA1E79086E38081E88F9CE58D95E7AEA1E79086E38081E58F82E695B0E7AEA1E79086E38081E5AD97E585B8E7AEA1E79086E380813C2F666F6E743E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE5B297E4BD8DE7AEA1E790863C2F7370616E3E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE38081E5AE9AE697B6E4BBBBE58AA13C2F7370616E3E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE380813C2F7370616E3E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE69C8DE58AA1E79B91E68EA7E38081E799BBE5BD95E697A5E5BF97E38081E6938DE4BD9CE697A5E5BF97E38081E4BBA3E7A081E7949FE68890E7AD89E58A9FE883BDE38082E585B6E4B8ADEFBC8CE8BF98E694AFE68C81E5A49AE695B0E68DAEE6BA90E38081E695B0E68DAEE69D83E99990E38081E59BBDE99985E58C96E380815265646973E7BC93E5AD98E38081446F636B6572E983A8E7BDB2E38081E6BB91E58AA8E9AA8CE8AF81E7A081E38081E7ACACE4B889E696B9E8AEA4E8AF81E799BBE5BD95E38081E58886E5B883E5BC8FE4BA8BE58AA1E380813C2F7370616E3E3C666F6E7420636F6C6F723D2223333333333333223EE58886E5B883E5BC8FE69687E4BBB6E5AD98E582A83C2F666F6E743E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE38081E58886E5BA93E58886E8A1A8E5A484E79086E7AD89E68A80E69CAFE789B9E782B9E380823C2F7370616E3E3C2F703E3C703E3C696D67207372633D2268747470733A2F2F666F727564612E67697465652E636F6D2F696D616765732F313730353033303538333937373430313635312F35656435646236615F313135313030342E706E6722207374796C653D2277696474683A20363470783B223E3C62723E3C2F703E3C703E3C7370616E207374796C653D22636F6C6F723A20726762283233302C20302C2030293B223EE5AE98E7BD91E58F8AE6BC94E7A4BA3C2F7370616E3E3C2F703E3C703E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE88BA5E4BE9DE5AE98E7BD91E59CB0E59D80EFBC9A266E6273703B3C2F7370616E3E3C6120687265663D22687474703A2F2F72756F79692E76697022207461726765743D225F626C616E6B223E687474703A2F2F72756F79692E7669703C2F613E3C6120687265663D22687474703A2F2F72756F79692E76697022207461726765743D225F626C616E6B223E3C2F613E3C2F703E3C703E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE88BA5E4BE9DE69687E6A1A3E59CB0E59D80EFBC9A266E6273703B3C2F7370616E3E3C6120687265663D22687474703A2F2F646F632E72756F79692E76697022207461726765743D225F626C616E6B223E687474703A2F2F646F632E72756F79692E7669703C2F613E3C62723E3C2F703E3C703E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE6BC94E7A4BAE59CB0E59D80E38090E4B88DE58886E7A6BBE78988E38091EFBC9A266E6273703B3C2F7370616E3E3C6120687265663D22687474703A2F2F64656D6F2E72756F79692E76697022207461726765743D225F626C616E6B223E687474703A2F2F64656D6F2E72756F79692E7669703C2F613E3C2F703E3C703E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE6BC94E7A4BAE59CB0E59D80E38090E58886E7A6BBE78988E69CACE38091EFBC9A266E6273703B3C2F7370616E3E3C6120687265663D22687474703A2F2F7675652E72756F79692E76697022207461726765743D225F626C616E6B223E687474703A2F2F7675652E72756F79692E7669703C2F613E3C2F703E3C703E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE6BC94E7A4BAE59CB0E59D80E38090E5BEAEE69C8DE58AA1E78988E38091EFBC9A266E6273703B3C2F7370616E3E3C6120687265663D22687474703A2F2F636C6F75642E72756F79692E76697022207461726765743D225F626C616E6B223E687474703A2F2F636C6F75642E72756F79692E7669703C2F613E3C2F703E3C703E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE6BC94E7A4BAE59CB0E59D80E38090E7A7BBE58AA8E7ABAFE78988E38091EFBC9A266E6273703B3C2F7370616E3E3C6120687265663D22687474703A2F2F68352E72756F79692E76697022207461726765743D225F626C616E6B223E687474703A2F2F68352E72756F79692E7669703C2F613E3C2F703E3C703E3C6272207374796C653D22636F6C6F723A207267622834382C2034392C203531293B20666F6E742D66616D696C793A202671756F743B48656C766574696361204E6575652671756F743B2C2048656C7665746963612C20417269616C2C2073616E732D73657269663B20666F6E742D73697A653A20313270783B223E3C2F703E, '0', 'admin', '2025-06-09 19:10:05', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2025-06-09 19:10:05', '', NULL, '');
INSERT INTO `sys_post` VALUES (5, 'manager', '管理员', 5, '0', 'system', '2025-06-10 14:24:10', '', NULL, '管理员');
INSERT INTO `sys_post` VALUES (6, 'sys', '超级系统管理员', 6, '0', 'system', '2025-06-27 11:16:44', '', NULL, '超级系统管理员');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'sys', 1, '1', '0', '0', 'system', '2025-06-09 19:10:05', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '管理员', 'admin', 2, '4', '0', '0', 'system', '2025-06-09 19:10:05', 'system', '2025-06-10 14:02:52', '管理员');
INSERT INTO `sys_role` VALUES (3, '普通角色', 'common', 3, '2', '0', '0', 'system', '2025-06-09 19:10:05', 'system', '2025-06-10 14:01:32', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户ID',
  `dept_id` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '账号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime NULL DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '100', 'system', '超级系统管理员', '00', 'xx@qq.com', '18888888888', '0', '', 'a430a9104181df477d077f1673208fb1', '111111', '0', '0', '127.0.0.1', '2025-06-27 11:26:59', '2025-06-10 17:43:21', 'system', '2025-06-09 19:10:05', 'system', '2025-06-27 11:26:58', '超级系统管理员');
INSERT INTO `sys_user` VALUES ('2', '103', 'admin', '管理员', '00', 'xx@qq.com', '16666666666', '1', '', '1db1777279b953fac786e0c13325913b', '222222', '0', '0', '192.168.1.5', '2025-06-22 19:53:01', NULL, 'system', '2025-06-09 19:10:05', 'system', '2025-06-27 11:25:09', '管理员');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `sessionId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime NULL DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime NULL DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int NULL DEFAULT 0 COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '在线用户记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', 6);
INSERT INTO `sys_user_post` VALUES ('2', 5);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', 1);
INSERT INTO `sys_user_role` VALUES ('2', 2);

SET FOREIGN_KEY_CHECKS = 1;
