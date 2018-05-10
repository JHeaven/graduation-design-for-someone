/*
Navicat SQL Server Data Transfer

Source Server         : localhost
Source Server Version : 105000
Source Host           : localhost:1433
Source Database       : FamilyHealthRecord
Source Schema         : healthcare

Target Server Type    : SQL Server
Target Server Version : 105000
File Encoding         : 65001

Date: 2017-05-03 14:38:08
*/


-- ----------------------------
-- Table structure for doctor
-- ----------------------------
DROP TABLE [healthcare].[doctor]
GO
CREATE TABLE [healthcare].[doctor] (
[id] int NOT NULL ,
[name] nvarchar(50) NULL ,
[sex] nvarchar(2) NULL ,
[mid] nvarchar(18) NULL ,
[zhiye_id] nvarchar(50) NULL ,
[phone] nvarchar(11) NULL 
)


GO

-- ----------------------------
-- Records of doctor
-- ----------------------------
INSERT INTO [healthcare].[doctor] ([id], [name], [sex], [mid], [zhiye_id], [phone]) VALUES (N'8', N'蒋蒋', N'男', N'111111111111111112', N'2222222222', N'18052121025')
GO
GO

-- ----------------------------
-- Table structure for health_record
-- ----------------------------
DROP TABLE [healthcare].[health_record]
GO
CREATE TABLE [healthcare].[health_record] (
[id] int NOT NULL IDENTITY(1,1) NOT FOR REPLICATION ,
[user_id] int NOT NULL ,
[name] nvarchar(50) NULL ,
[sex] nvarchar(2) NULL ,
[birth] datetime NULL ,
[phone] nvarchar(11) NULL ,
[height] int NULL ,
[weight] int NULL ,
[xuexing] nvarchar(2) NULL ,
[address] nvarchar(400) NULL ,
[jia_ting_bing_shi] nvarchar(400) NULL ,
[ji_wang_bing_shi] nvarchar(400) NULL ,
[xian_you_bing_shi] nvarchar(400) NULL ,
[zhi_liao_ji_lu] nvarchar(400) NULL ,
[zhi_ye_jing_li] nvarchar(400) NULL ,
[sheng_huo_xi_guan] nvarchar(400) NULL ,
[ying_shi_xi_guan] nvarchar(400) NULL ,
[ps] nvarchar(400) NULL 
)


GO
DBCC CHECKIDENT(N'[healthcare].[health_record]', RESEED, 5)
GO

-- ----------------------------
-- Records of health_record
-- ----------------------------
SET IDENTITY_INSERT [healthcare].[health_record] ON
GO
INSERT INTO [healthcare].[health_record] ([id], [user_id], [name], [sex], [birth], [phone], [height], [weight], [xuexing], [address], [jia_ting_bing_shi], [ji_wang_bing_shi], [xian_you_bing_shi], [zhi_liao_ji_lu], [zhi_ye_jing_li], [sheng_huo_xi_guan], [ying_shi_xi_guan], [ps]) VALUES (N'1', N'1', N'蒋宇钦1号', N'男', N'2017-05-02 00:00:00.000', N'18052121025', N'178', N'66', N'O', N'地球-中国-江苏', N'家庭病史临时数据', N'既往病史临时数据', N'现在病史临时数据', N'治疗记录临时数据', N'职业经历临时数据', N'生活习惯临时数据', N'饮食习惯临时数据', null)
GO
GO
INSERT INTO [healthcare].[health_record] ([id], [user_id], [name], [sex], [birth], [phone], [height], [weight], [xuexing], [address], [jia_ting_bing_shi], [ji_wang_bing_shi], [xian_you_bing_shi], [zhi_liao_ji_lu], [zhi_ye_jing_li], [sheng_huo_xi_guan], [ying_shi_xi_guan], [ps]) VALUES (N'2', N'1', N'蒋宇钦2号', N'男', N'2017-05-02 00:00:00.000', N'18052121025', N'178', N'66', N'O', N'地球-中国-江苏', N'家庭病史临时数据', N'既往病史临时数据', N'现在病史临时数据', N'治疗记录临时数据', N'职业经历临时数据', N'生活习惯临时数据', N'饮食习惯临时数据', null)
GO
GO
INSERT INTO [healthcare].[health_record] ([id], [user_id], [name], [sex], [birth], [phone], [height], [weight], [xuexing], [address], [jia_ting_bing_shi], [ji_wang_bing_shi], [xian_you_bing_shi], [zhi_liao_ji_lu], [zhi_ye_jing_li], [sheng_huo_xi_guan], [ying_shi_xi_guan], [ps]) VALUES (N'4', N'1', N'蒋宇钦3号', N'男', N'2017-05-02 00:00:00.000', N'18052121025', N'178', N'66', N'O', N'地球-中国-江苏', N'家庭病史临时数据', N'既往病史临时数据', N'现在病史临时数据', N'治疗记录临时数据', N'职业经历临时数据', N'生活习惯临时数据', N'饮食习惯临时数据', null)
GO
GO
INSERT INTO [healthcare].[health_record] ([id], [user_id], [name], [sex], [birth], [phone], [height], [weight], [xuexing], [address], [jia_ting_bing_shi], [ji_wang_bing_shi], [xian_you_bing_shi], [zhi_liao_ji_lu], [zhi_ye_jing_li], [sheng_huo_xi_guan], [ying_shi_xi_guan], [ps]) VALUES (N'5', N'1', N'皇室', N'男', N'2017-05-02 00:00:00.000', N'18052121025', N'178', N'66', N'O', N'地球-中国-江苏', N'家庭病史临时数据', N'既往病史临时数据', N'现在病史临时数据', N'治疗记录临时数据', N'职业经历临时数据', N'生活习惯临时数据', N'饮食习惯临时数据', null)
GO
GO
SET IDENTITY_INSERT [healthcare].[health_record] OFF
GO

-- ----------------------------
-- Table structure for home
-- ----------------------------
DROP TABLE [healthcare].[home]
GO
CREATE TABLE [healthcare].[home] (
[id] int NOT NULL ,
[address] nvarchar(100) NULL ,
[zipcode] nvarchar(100) NULL ,
[phone] varchar(11) NULL ,
[ps] nvarchar(400) NULL ,
[people] int NULL ,
[other] nvarchar(400) NULL ,
[deleted] int NOT NULL ,
[name] nvarchar(20) NULL 
)


GO

-- ----------------------------
-- Records of home
-- ----------------------------
INSERT INTO [healthcare].[home] ([id], [address], [zipcode], [phone], [ps], [people], [other], [deleted], [name]) VALUES (N'1', N'月城镇水芸苑10-201', N'214404', N'18052121025', N'无', N'3', null, N'0', N'蒋宇钦000')
GO
GO
INSERT INTO [healthcare].[home] ([id], [address], [zipcode], [phone], [ps], [people], [other], [deleted], [name]) VALUES (N'9', N'月城镇水芸苑10-201', N'214404', N'18052121025', N'嗡嗡嗡嗡嗡', N'3', null, N'0', N'蒋宇钦000001')
GO
GO

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE [healthcare].[news]
GO
CREATE TABLE [healthcare].[news] (
[id] int NOT NULL IDENTITY(1,1) ,
[user_id] int NOT NULL ,
[user_name] nvarchar(50) NOT NULL ,
[date_time] datetime NOT NULL ,
[new_content] nvarchar(MAX) NOT NULL 
)


GO
DBCC CHECKIDENT(N'[healthcare].[news]', RESEED, 16)
GO

-- ----------------------------
-- Records of news
-- ----------------------------
SET IDENTITY_INSERT [healthcare].[news] ON
GO
INSERT INTO [healthcare].[news] ([id], [user_id], [user_name], [date_time], [new_content]) VALUES (N'3', N'4', N'admin', N'2017-05-03 11:35:03.450', N'<span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">&nbsp; 夏季人体消耗较大,</span><a class="art-inlink" target="_blank" href="http://www.jkyd.net/yundong/" style="box-sizing: border-box; background-color: rgb(255, 255, 255); color: rgb(82, 146, 9); text-decoration: none; font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px;">运动</a><span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">调摄应动静结合,可选择游泳、钓鱼、散步、慢饱等,但是运动量要适度,不可过于</span><a class="art-inlink" target="_blank" href="http://www.jkyd.net/2012/12-24/11537.html" style="box-sizing: border-box; background-color: rgb(255, 255, 255); color: rgb(82, 146, 9); text-decoration: none; font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px;">疲劳</a><span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">。而且不宜在烈日下或高温环境中进行运动锻炼,最好在清晨或傍晚天气凉爽时进行室外运动,运动时应穿宽松、舒适、吸汗又有良好透气性的棉织物为好,便于身体散热。</span><img src="http://img.jkyd.net/data/upload/ueditor/20170406/58e5cc99cb3fd.jpg">')
GO
GO
INSERT INTO [healthcare].[news] ([id], [user_id], [user_name], [date_time], [new_content]) VALUES (N'4', N'4', N'admin', N'2017-05-03 11:35:03.450', N'<span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">&nbsp; 夏季人体消耗较大,</span><a class="art-inlink" target="_blank" href="http://www.jkyd.net/yundong/" style="box-sizing: border-box; background-color: rgb(255, 255, 255); color: rgb(82, 146, 9); text-decoration: none; font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px;">运动</a><span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">调摄应动静结合,可选择游泳、钓鱼、散步、慢饱等,但是运动量要适度,不可过于</span><a class="art-inlink" target="_blank" href="http://www.jkyd.net/2012/12-24/11537.html" style="box-sizing: border-box; background-color: rgb(255, 255, 255); color: rgb(82, 146, 9); text-decoration: none; font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px;">疲劳</a><span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">。而且不宜在烈日下或高温环境中进行运动锻炼,最好在清晨或傍晚天气凉爽时进行室外运动,运动时应穿宽松、舒适、吸汗又有良好透气性的棉织物为好,便于身体散热。</span><img src="http://img.jkyd.net/data/upload/ueditor/20170406/58e5cc99cb3fd.jpg">')
GO
GO
INSERT INTO [healthcare].[news] ([id], [user_id], [user_name], [date_time], [new_content]) VALUES (N'5', N'4', N'admin', N'2017-05-03 11:35:03.450', N'<span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">&nbsp; 夏季人体消耗较大,</span><a class="art-inlink" target="_blank" href="http://www.jkyd.net/yundong/" style="box-sizing: border-box; background-color: rgb(255, 255, 255); color: rgb(82, 146, 9); text-decoration: none; font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px;">运动</a><span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">调摄应动静结合,可选择游泳、钓鱼、散步、慢饱等,但是运动量要适度,不可过于</span><a class="art-inlink" target="_blank" href="http://www.jkyd.net/2012/12-24/11537.html" style="box-sizing: border-box; background-color: rgb(255, 255, 255); color: rgb(82, 146, 9); text-decoration: none; font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px;">疲劳</a><span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">。而且不宜在烈日下或高温环境中进行运动锻炼,最好在清晨或傍晚天气凉爽时进行室外运动,运动时应穿宽松、舒适、吸汗又有良好透气性的棉织物为好,便于身体散热。</span><img src="http://img.jkyd.net/data/upload/ueditor/20170406/58e5cc99cb3fd.jpg">')
GO
GO
INSERT INTO [healthcare].[news] ([id], [user_id], [user_name], [date_time], [new_content]) VALUES (N'6', N'4', N'admin', N'2017-05-03 11:35:03.450', N'<span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">&nbsp; 夏季人体消耗较大,</span><a class="art-inlink" target="_blank" href="http://www.jkyd.net/yundong/" style="box-sizing: border-box; background-color: rgb(255, 255, 255); color: rgb(82, 146, 9); text-decoration: none; font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px;">运动</a><span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">调摄应动静结合,可选择游泳、钓鱼、散步、慢饱等,但是运动量要适度,不可过于</span><a class="art-inlink" target="_blank" href="http://www.jkyd.net/2012/12-24/11537.html" style="box-sizing: border-box; background-color: rgb(255, 255, 255); color: rgb(82, 146, 9); text-decoration: none; font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px;">疲劳</a><span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">。而且不宜在烈日下或高温环境中进行运动锻炼,最好在清晨或傍晚天气凉爽时进行室外运动,运动时应穿宽松、舒适、吸汗又有良好透气性的棉织物为好,便于身体散热。</span><img src="http://img.jkyd.net/data/upload/ueditor/20170406/58e5cc99cb3fd.jpg">')
GO
GO
INSERT INTO [healthcare].[news] ([id], [user_id], [user_name], [date_time], [new_content]) VALUES (N'7', N'4', N'admin', N'2017-05-03 11:35:03.450', N'<span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">&nbsp; 夏季人体消耗较大,</span><a class="art-inlink" target="_blank" href="http://www.jkyd.net/yundong/" style="box-sizing: border-box; background-color: rgb(255, 255, 255); color: rgb(82, 146, 9); text-decoration: none; font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px;">运动</a><span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">调摄应动静结合,可选择游泳、钓鱼、散步、慢饱等,但是运动量要适度,不可过于</span><a class="art-inlink" target="_blank" href="http://www.jkyd.net/2012/12-24/11537.html" style="box-sizing: border-box; background-color: rgb(255, 255, 255); color: rgb(82, 146, 9); text-decoration: none; font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px;">疲劳</a><span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">。而且不宜在烈日下或高温环境中进行运动锻炼,最好在清晨或傍晚天气凉爽时进行室外运动,运动时应穿宽松、舒适、吸汗又有良好透气性的棉织物为好,便于身体散热。</span><img src="http://img.jkyd.net/data/upload/ueditor/20170406/58e5cc99cb3fd.jpg">')
GO
GO
INSERT INTO [healthcare].[news] ([id], [user_id], [user_name], [date_time], [new_content]) VALUES (N'8', N'4', N'admin', N'2017-05-03 11:35:03.450', N'<span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">&nbsp; 夏季人体消耗较大,</span><a class="art-inlink" target="_blank" href="http://www.jkyd.net/yundong/" style="box-sizing: border-box; background-color: rgb(255, 255, 255); color: rgb(82, 146, 9); text-decoration: none; font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px;">运动</a><span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">调摄应动静结合,可选择游泳、钓鱼、散步、慢饱等,但是运动量要适度,不可过于</span><a class="art-inlink" target="_blank" href="http://www.jkyd.net/2012/12-24/11537.html" style="box-sizing: border-box; background-color: rgb(255, 255, 255); color: rgb(82, 146, 9); text-decoration: none; font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px;">疲劳</a><span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">。而且不宜在烈日下或高温环境中进行运动锻炼,最好在清晨或傍晚天气凉爽时进行室外运动,运动时应穿宽松、舒适、吸汗又有良好透气性的棉织物为好,便于身体散热。</span><img src="http://img.jkyd.net/data/upload/ueditor/20170406/58e5cc99cb3fd.jpg">')
GO
GO
INSERT INTO [healthcare].[news] ([id], [user_id], [user_name], [date_time], [new_content]) VALUES (N'9', N'4', N'admin', N'2017-05-03 11:35:03.450', N'<span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">&nbsp; 夏季人体消耗较大,</span><a class="art-inlink" target="_blank" href="http://www.jkyd.net/yundong/" style="box-sizing: border-box; background-color: rgb(255, 255, 255); color: rgb(82, 146, 9); text-decoration: none; font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px;">运动</a><span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">调摄应动静结合,可选择游泳、钓鱼、散步、慢饱等,但是运动量要适度,不可过于</span><a class="art-inlink" target="_blank" href="http://www.jkyd.net/2012/12-24/11537.html" style="box-sizing: border-box; background-color: rgb(255, 255, 255); color: rgb(82, 146, 9); text-decoration: none; font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px;">疲劳</a><span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">。而且不宜在烈日下或高温环境中进行运动锻炼,最好在清晨或傍晚天气凉爽时进行室外运动,运动时应穿宽松、舒适、吸汗又有良好透气性的棉织物为好,便于身体散热。</span><img src="http://img.jkyd.net/data/upload/ueditor/20170406/58e5cc99cb3fd.jpg">')
GO
GO
INSERT INTO [healthcare].[news] ([id], [user_id], [user_name], [date_time], [new_content]) VALUES (N'10', N'4', N'admin', N'2017-05-03 11:35:03.450', N'<span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">&nbsp; 夏季人体消耗较大,</span><a class="art-inlink" target="_blank" href="http://www.jkyd.net/yundong/" style="box-sizing: border-box; background-color: rgb(255, 255, 255); color: rgb(82, 146, 9); text-decoration: none; font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px;">运动</a><span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">调摄应动静结合,可选择游泳、钓鱼、散步、慢饱等,但是运动量要适度,不可过于</span><a class="art-inlink" target="_blank" href="http://www.jkyd.net/2012/12-24/11537.html" style="box-sizing: border-box; background-color: rgb(255, 255, 255); color: rgb(82, 146, 9); text-decoration: none; font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px;">疲劳</a><span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">。而且不宜在烈日下或高温环境中进行运动锻炼,最好在清晨或傍晚天气凉爽时进行室外运动,运动时应穿宽松、舒适、吸汗又有良好透气性的棉织物为好,便于身体散热。</span><img src="http://img.jkyd.net/data/upload/ueditor/20170406/58e5cc99cb3fd.jpg">')
GO
GO
INSERT INTO [healthcare].[news] ([id], [user_id], [user_name], [date_time], [new_content]) VALUES (N'11', N'4', N'admin', N'2017-05-03 11:35:03.450', N'<span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">&nbsp; 夏季人体消耗较大,</span><a class="art-inlink" target="_blank" href="http://www.jkyd.net/yundong/" style="box-sizing: border-box; background-color: rgb(255, 255, 255); color: rgb(82, 146, 9); text-decoration: none; font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px;">运动</a><span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">调摄应动静结合,可选择游泳、钓鱼、散步、慢饱等,但是运动量要适度,不可过于</span><a class="art-inlink" target="_blank" href="http://www.jkyd.net/2012/12-24/11537.html" style="box-sizing: border-box; background-color: rgb(255, 255, 255); color: rgb(82, 146, 9); text-decoration: none; font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px;">疲劳</a><span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">。而且不宜在烈日下或高温环境中进行运动锻炼,最好在清晨或傍晚天气凉爽时进行室外运动,运动时应穿宽松、舒适、吸汗又有良好透气性的棉织物为好,便于身体散热。</span><img src="http://img.jkyd.net/data/upload/ueditor/20170406/58e5cc99cb3fd.jpg">')
GO
GO
INSERT INTO [healthcare].[news] ([id], [user_id], [user_name], [date_time], [new_content]) VALUES (N'13', N'4', N'admin', N'2017-05-03 11:35:03.450', N'<span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">&nbsp; 夏季人体消耗较大,</span><a class="art-inlink" target="_blank" href="http://www.jkyd.net/yundong/" style="box-sizing: border-box; background-color: rgb(255, 255, 255); color: rgb(82, 146, 9); text-decoration: none; font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px;">运动</a><span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">调摄应动静结合,可选择游泳、钓鱼、散步、慢饱等,但是运动量要适度,不可过于</span><a class="art-inlink" target="_blank" href="http://www.jkyd.net/2012/12-24/11537.html" style="box-sizing: border-box; background-color: rgb(255, 255, 255); color: rgb(82, 146, 9); text-decoration: none; font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px;">疲劳</a><span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">。而且不宜在烈日下或高温环境中进行运动锻炼,最好在清晨或傍晚天气凉爽时进行室外运动,运动时应穿宽松、舒适、吸汗又有良好透气性的棉织物为好,便于身体散热。</span><img src="http://img.jkyd.net/data/upload/ueditor/20170406/58e5cc99cb3fd.jpg">')
GO
GO
INSERT INTO [healthcare].[news] ([id], [user_id], [user_name], [date_time], [new_content]) VALUES (N'14', N'4', N'admin', N'2017-05-03 11:35:03.450', N'<span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">&nbsp; 夏季人体消耗较大,</span><a class="art-inlink" target="_blank" href="http://www.jkyd.net/yundong/" style="box-sizing: border-box; background-color: rgb(255, 255, 255); color: rgb(82, 146, 9); text-decoration: none; font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px;">运动</a><span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">调摄应动静结合,可选择游泳、钓鱼、散步、慢饱等,但是运动量要适度,不可过于</span><a class="art-inlink" target="_blank" href="http://www.jkyd.net/2012/12-24/11537.html" style="box-sizing: border-box; background-color: rgb(255, 255, 255); color: rgb(82, 146, 9); text-decoration: none; font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px;">疲劳</a><span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">。而且不宜在烈日下或高温环境中进行运动锻炼,最好在清晨或傍晚天气凉爽时进行室外运动,运动时应穿宽松、舒适、吸汗又有良好透气性的棉织物为好,便于身体散热。</span><img src="http://img.jkyd.net/data/upload/ueditor/20170406/58e5cc99cb3fd.jpg">')
GO
GO
INSERT INTO [healthcare].[news] ([id], [user_id], [user_name], [date_time], [new_content]) VALUES (N'15', N'4', N'admin', N'2017-05-03 11:35:03.450', N'<span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">&nbsp; 夏季人体消耗较大,</span><a class="art-inlink" target="_blank" href="http://www.jkyd.net/yundong/" style="box-sizing: border-box; background-color: rgb(255, 255, 255); color: rgb(82, 146, 9); text-decoration: none; font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px;">运动</a><span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">调摄应动静结合,可选择游泳、钓鱼、散步、慢饱等,但是运动量要适度,不可过于</span><a class="art-inlink" target="_blank" href="http://www.jkyd.net/2012/12-24/11537.html" style="box-sizing: border-box; background-color: rgb(255, 255, 255); color: rgb(82, 146, 9); text-decoration: none; font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px;">疲劳</a><span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">。而且不宜在烈日下或高温环境中进行运动锻炼,最好在清晨或傍晚天气凉爽时进行室外运动,运动时应穿宽松、舒适、吸汗又有良好透气性的棉织物为好,便于身体散热。</span><img src="http://img.jkyd.net/data/upload/ueditor/20170406/58e5cc99cb3fd.jpg">')
GO
GO
INSERT INTO [healthcare].[news] ([id], [user_id], [user_name], [date_time], [new_content]) VALUES (N'16', N'4', N'admin', N'2017-05-03 11:35:03.450', N'<span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">&nbsp; 夏季人体消耗较大,</span><a class="art-inlink" target="_blank" href="http://www.jkyd.net/yundong/" style="box-sizing: border-box; background-color: rgb(255, 255, 255); color: rgb(82, 146, 9); text-decoration: none; font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px;">运动</a><span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">调摄应动静结合,可选择游泳、钓鱼、散步、慢饱等,但是运动量要适度,不可过于</span><a class="art-inlink" target="_blank" href="http://www.jkyd.net/2012/12-24/11537.html" style="box-sizing: border-box; background-color: rgb(255, 255, 255); color: rgb(82, 146, 9); text-decoration: none; font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px;">疲劳</a><span style="color: rgb(51, 51, 51); font-family: 宋体, Arial, Helvetica; font-size: 16px; text-indent: 32px; background-color: rgb(255, 255, 255);">。而且不宜在烈日下或高温环境中进行运动锻炼,最好在清晨或傍晚天气凉爽时进行室外运动,运动时应穿宽松、舒适、吸汗又有良好透气性的棉织物为好,便于身体散热。</span><img src="http://img.jkyd.net/data/upload/ueditor/20170406/58e5cc99cb3fd.jpg">')
GO
GO
SET IDENTITY_INSERT [healthcare].[news] OFF
GO

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE [healthcare].[question]
GO
CREATE TABLE [healthcare].[question] (
[id] int NOT NULL IDENTITY(1,1) ,
[user_id] int NOT NULL ,
[people_id] int NULL ,
[doctor_id] int NULL ,
[ask] nvarchar(MAX) NULL ,
[ans] nvarchar(MAX) NULL ,
[ps] nvarchar(50) NULL 
)


GO
DBCC CHECKIDENT(N'[healthcare].[question]', RESEED, 6)
GO

-- ----------------------------
-- Records of question
-- ----------------------------
SET IDENTITY_INSERT [healthcare].[question] ON
GO
INSERT INTO [healthcare].[question] ([id], [user_id], [people_id], [doctor_id], [ask], [ans], [ps]) VALUES (N'1', N'1', N'1', null, N'我想问问腰酸背痛是咋个回事', null, null)
GO
GO
INSERT INTO [healthcare].[question] ([id], [user_id], [people_id], [doctor_id], [ask], [ans], [ps]) VALUES (N'4', N'1', N'4', N'8', N'<font size="4">没毛病呀</font>', N'<b style="background-color: rgb(255, 102, 102);">没毛病你瞎逼比</b>', null)
GO
GO
SET IDENTITY_INSERT [healthcare].[question] OFF
GO

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE [healthcare].[users]
GO
CREATE TABLE [healthcare].[users] (
[id] int NOT NULL IDENTITY(1,1) ,
[login_name] nvarchar(50) NOT NULL ,
[login_password] nvarchar(50) NOT NULL ,
[user_type] nvarchar(50) NOT NULL ,
[user_section] nvarchar(50) NOT NULL ,
[register_date] datetime NOT NULL ,
[last_date] datetime NOT NULL ,
[photo] nvarchar(MAX) NULL 
)


GO
DBCC CHECKIDENT(N'[healthcare].[users]', RESEED, 9)
GO

-- ----------------------------
-- Records of users
-- ----------------------------
SET IDENTITY_INSERT [healthcare].[users] ON
GO
INSERT INTO [healthcare].[users] ([id], [login_name], [login_password], [user_type], [user_section], [register_date], [last_date], [photo]) VALUES (N'1', N'HEAVEN', N'797f69b345f300bafd556733f3035585', N'普通会员', N'正常', N'2017-05-01 09:09:38.000', N'2017-05-03 12:54:37.830', N'no')
GO
GO
INSERT INTO [healthcare].[users] ([id], [login_name], [login_password], [user_type], [user_section], [register_date], [last_date], [photo]) VALUES (N'4', N'admin', N'797f69b345f300bafd556733f3035585', N'超级管理员', N'正常', N'2017-05-02 16:19:30.000', N'2017-05-03 12:55:51.197', N'no')
GO
GO
INSERT INTO [healthcare].[users] ([id], [login_name], [login_password], [user_type], [user_section], [register_date], [last_date], [photo]) VALUES (N'8', N'doctor', N'797f69b345f300bafd556733f3035585', N'医生会员', N'正常', N'2017-05-02 20:04:09.000', N'2017-05-03 12:55:39.507', N'yes')
GO
GO
INSERT INTO [healthcare].[users] ([id], [login_name], [login_password], [user_type], [user_section], [register_date], [last_date], [photo]) VALUES (N'9', N'HEAVEN1', N'797f69b345f300bafd556733f3035585', N'普通会员', N'正常', N'2017-05-03 11:23:55.733', N'2017-05-03 11:28:22.280', N'no')
GO
GO
SET IDENTITY_INSERT [healthcare].[users] OFF
GO

-- ----------------------------
-- Indexes structure for table health_record
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table health_record
-- ----------------------------
ALTER TABLE [healthcare].[health_record] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table home
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table home
-- ----------------------------
ALTER TABLE [healthcare].[home] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table news
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table news
-- ----------------------------
ALTER TABLE [healthcare].[news] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table question
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table question
-- ----------------------------
ALTER TABLE [healthcare].[question] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table users
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE [healthcare].[users] ADD PRIMARY KEY ([id])
GO
