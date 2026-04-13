-- ========================================================
-- 将商城数据更新为医疗药品数据的SQL脚本
-- ========================================================

-- 设置字符集
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- 1. 清空原有商品数据
TRUNCATE TABLE `mall_goods`;
TRUNCATE TABLE `mall_product`;
TRUNCATE TABLE `mall_goods_gallery`;
TRUNCATE TABLE `mall_goods_attribute`;
TRUNCATE TABLE `mall_goods_specification`;
TRUNCATE TABLE `mall_related_goods`;
TRUNCATE TABLE `mall_category`;
TRUNCATE TABLE `mall_brand`;

-- 2. 插入医疗药品分类
INSERT INTO `mall_category` (`id`, `name`, `keywords`, `front_desc`, `parent_id`, `sort_order`, `show_index`, `is_show`, `banner_url`, `icon_url`, `img_url`, `wap_banner_url`, `level`, `type`, `front_name`) VALUES
-- 一级分类
('1005000', '中西药品', '药品,西药,中药', '正品保障，专业用药指导', '0', '1', '1', '1', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/600x200.jpg', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/100x100.jpg', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/300x300.jpg', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/600x200.jpg', 'L1', '0', '正品保障，专业用药指导'),
('1005001', '医疗器械', '器械,医疗,健康', '家用医疗器械，守护家庭健康', '0', '2', '2', '1', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/600x200.jpg', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/100x100.jpg', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/300x300.jpg', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/600x200.jpg', 'L1', '0', '家用医疗器械，守护家庭健康'),
('1005002', '营养保健', '保健,营养,养生', '科学营养，健康生活', '0', '3', '3', '1', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/600x200.jpg', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/100x100.jpg', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/300x300.jpg', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/600x200.jpg', 'L1', '0', '科学营养，健康生活'),
('1005003', '母婴用品', '母婴,孕婴,宝宝', '呵护母婴健康', '0', '4', '4', '1', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/600x200.jpg', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/100x100.jpg', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/300x300.jpg', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/600x200.jpg', 'L1', '0', '呵护母婴健康'),
-- 二级分类 - 中西药品
('1008001', '感冒用药', '感冒,发烧,咳嗽', '缓解感冒症状', '1005000', '1', '1', '1', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/200x200.jpg', '', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/200x200.jpg', '', 'L2', '0', '感冒发热，对症用药'),
('1008002', '肠胃用药', '肠胃,消化,胃痛', '调理肠胃健康', '1005000', '2', '2', '1', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/200x200.jpg', '', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/200x200.jpg', '', 'L2', '0', '肠胃调理，消化健康'),
('1008003', '心脑血管', '心血管,血压,血脂', '心脑血管健康', '1005000', '3', '3', '1', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/200x200.jpg', '', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/200x200.jpg', '', 'L2', '0', '心脑血管健康守护'),
('1008004', '皮肤用药', '皮肤,外用,药膏', '皮肤健康护理', '1005000', '4', '4', '1', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/200x200.jpg', '', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/200x200.jpg', '', 'L2', '0', '皮肤健康护理'),
('1008005', '维生素钙', '维生素,钙片,营养', '补充维生素矿物质', '1005000', '5', '5', '1', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/200x200.jpg', '', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/200x200.jpg', '', 'L2', '0', '补充维生素矿物质'),
-- 二级分类 - 医疗器械
('1008006', '血压血糖', '血压计,血糖仪,测量', '血压血糖监测', '1005001', '1', '1', '1', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/200x200.jpg', '', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/200x200.jpg', '', 'L2', '0', '血压血糖监测'),
('1008007', '康复护理', '康复,护理,辅助', '康复护理用品', '1005001', '2', '2', '1', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/200x200.jpg', '', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/200x200.jpg', '', 'L2', '0', '康复护理用品'),
('1008008', '中医保健', '中医,理疗,艾灸', '中医养生保健', '1005001', '3', '3', '1', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/200x200.jpg', '', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/200x200.jpg', '', 'L2', '0', '中医养生保健'),
('1008009', '口罩防护', '口罩,防护,消毒', '个人防护用品', '1005001', '4', '4', '1', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/200x200.jpg', '', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/200x200.jpg', '', 'L2', '0', '个人防护用品'),
-- 二级分类 - 营养保健
('1008010', '增强免疫', '免疫,抵抗力,保健', '增强免疫力', '1005002', '1', '1', '1', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/200x200.jpg', '', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/200x200.jpg', '', 'L2', '0', '增强免疫力'),
('1008011', '调节三高', '三高,血脂,血糖', '调节三高健康', '1005002', '2', '2', '1', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/200x200.jpg', '', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/200x200.jpg', '', 'L2', '0', '调节三高健康'),
('1008012', '骨骼健康', '骨骼,关节,钙片', '骨骼关节健康', '1005002', '3', '3', '1', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/200x200.jpg', '', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/200x200.jpg', '', 'L2', '0', '骨骼关节健康');

-- 3. 插入药品品牌
INSERT INTO `mall_brand` (`id`, `name`, `list_pic_url`, `simple_desc`, `pic_url`, `sort_order`, `is_show`, `floor_price`, `app_list_pic_url`, `is_new`, `new_pic_url`, `new_sort_order`) VALUES
('1001000', '同仁堂', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/200x200.jpg', '中华老字号，中药世家，品质保证', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/400x400.jpg', '1', '1', '9.90', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/200x200.jpg', '0', '', '10'),
('1001001', '云南白药', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/200x200.jpg', '伤科圣药，国家保密配方', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/400x400.jpg', '2', '1', '19.90', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/200x200.jpg', '0', '', '10'),
('1001002', '三九药业', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/200x200.jpg', '999感冒灵，家庭常备药', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/400x400.jpg', '3', '1', '12.90', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/200x200.jpg', '0', '', '10'),
('1001003', '东阿阿胶', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/200x200.jpg', '滋补国宝，东阿阿胶', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/400x400.jpg', '4', '1', '299.00', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/200x200.jpg', '0', '', '10'),
('1001004', '汤臣倍健', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/200x200.jpg', '营养补充剂领导品牌', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/400x400.jpg', '5', '1', '89.00', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/200x200.jpg', '1', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/400x400.jpg', '1'),
('1001005', '鱼跃医疗', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/200x200.jpg', '家用医疗器械专业品牌', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/400x400.jpg', '6', '1', '59.00', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/200x200.jpg', '1', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/400x400.jpg', '2'),
('1001006', '欧姆龙', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/200x200.jpg', '日本精密医疗器械品牌', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/400x400.jpg', '7', '1', '199.00', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/200x200.jpg', '0', '', '10'),
('1001007', '强生', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/200x200.jpg', '全球医疗健康领导品牌', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/400x400.jpg', '8', '1', '29.90', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/200x200.jpg', '0', '', '10'),
('1001008', '修正药业', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/200x200.jpg', '良心药，放心药，选修正', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/400x400.jpg', '9', '1', '15.90', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/200x200.jpg', '0', '', '10'),
('1001009', '以岭药业', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/200x200.jpg', '连花清瘟，以岭药业', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/400x400.jpg', '10', '1', '25.90', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/200x200.jpg', '1', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/400x400.jpg', '3');

-- 4. 插入药品商品数据
INSERT INTO `mall_goods` (`id`, `category_id`, `goods_sn`, `name`, `brand_id`, `goods_number`, `keywords`, `goods_brief`, `goods_desc`, `is_on_sale`, `add_time`, `sort_order`, `is_delete`, `attribute_category`, `counter_price`, `extra_price`, `is_new`, `goods_unit`, `primary_pic_url`, `list_pic_url`, `retail_price`, `sell_volume`, `primary_product_id`, `unit_price`, `promotion_desc`, `promotion_tag`, `app_exclusive_price`, `is_app_exclusive`, `is_limited`, `is_hot`, `market_price`, `create_user_id`, `update_user_id`, `update_time`, `create_user_dept_id`) VALUES
-- 感冒用药
('1006002', '1008001', '1006002', '999感冒灵颗粒 10g*9袋', '1001002', '1000', '感冒,发烧,头痛,999', '解热镇痛，用于感冒引起的头痛、发热、鼻塞、流涕、咽痛', '<p><strong>【药品名称】</strong>999感冒灵颗粒</p><p><strong>【成分】</strong>三叉苦、金盏银盘、野菊花、岗梅、咖啡因、对乙酰氨基酚、马来酸氯苯那敏、薄荷油</p><p><strong>【功能主治】</strong>解热镇痛。用于感冒引起的头痛，发热，鼻塞，流涕，咽痛</p><p><strong>【用法用量】</strong>开水冲服，一次10克，一日3次</p><p><strong>【注意事项】</strong>忌烟、酒及辛辣、生冷、油腻食物</p>', '1', NOW(), '1', '0', '0', '18.00', '0.00', '0', '盒', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/400x400.jpg', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/200x200.jpg', '12.90', '5680', '1006003', '0.00', '限时特惠', '', '0.00', '0', '0', '1', '18.00', NULL, NULL, NULL, NULL),
('1006003', '1008001', '1006003', '连花清瘟胶囊 0.35g*24粒', '1001009', '800', '连花清瘟,感冒,流感,发热', '清瘟解毒，宣肺泄热，用于治疗流行性感冒', '<p><strong>【药品名称】</strong>连花清瘟胶囊</p><p><strong>【成分】</strong>连翘、金银花、炙麻黄、炒苦杏仁、石膏、板蓝根、绵马贯众、鱼腥草、广藿香、大黄、红景天、薄荷脑、甘草</p><p><strong>【功能主治】</strong>清瘟解毒，宣肺泄热。用于治疗流行性感冒属热毒袭肺证</p><p><strong>【用法用量】</strong>口服，一次4粒，一日3次</p>', '1', NOW(), '2', '0', '0', '25.00', '0.00', '1', '盒', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/400x400.jpg', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/200x200.jpg', '19.90', '3250', '1006004', '0.00', '热销', '', '0.00', '0', '0', '1', '25.00', NULL, NULL, NULL, NULL),
('1006004', '1008001', '1006004', '板蓝根颗粒 10g*20袋', '1001008', '1200', '板蓝根,感冒,咽喉,清热', '清热解毒，凉血利咽，用于肺胃热盛所致的咽喉肿痛', '<p><strong>【药品名称】</strong>板蓝根颗粒</p><p><strong>【成分】</strong>板蓝根，辅料为蔗糖、糊精</p><p><strong>【功能主治】</strong>清热解毒，凉血利咽。用于肺胃热盛所致的咽喉肿痛、口咽干燥</p><p><strong>【用法用量】</strong>开水冲服，一次5-10克，一日3-4次</p>', '1', NOW(), '3', '0', '0', '15.00', '0.00', '0', '盒', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/400x400.jpg', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/200x200.jpg', '9.90', '2890', '1006005', '0.00', '', '', '0.00', '0', '0', '0', '15.00', NULL, NULL, NULL, NULL),
-- 肠胃用药
('1006005', '1008002', '1006005', '健胃消食片 0.8g*32片', '1001008', '1500', '健胃,消食,胃胀,消化不良', '健胃消食，用于脾胃虚弱所致的食积', '<p><strong>【药品名称】</strong>健胃消食片</p><p><strong>【成分】</strong>太子参、陈皮、山药、麦芽（炒）、山楂</p><p><strong>【功能主治】</strong>健胃消食。用于脾胃虚弱所致的食积，症见不思饮食、嗳腐酸臭、脘腹胀满</p><p><strong>【用法用量】</strong>口服，一次3片，一日3次</p>', '1', NOW(), '1', '0', '0', '18.00', '0.00', '0', '盒', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/400x400.jpg', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/200x200.jpg', '13.50', '4560', '1006006', '0.00', '家庭常备', '', '0.00', '0', '0', '1', '18.00', NULL, NULL, NULL, NULL),
('1006006', '1008002', '1006006', '蒙脱石散 3g*10袋', '1001007', '2000', '蒙脱石,腹泻,止泻,肠胃', '用于成人及儿童急、慢性腹泻', '<p><strong>【药品名称】</strong>蒙脱石散</p><p><strong>【成分】</strong>蒙脱石</p><p><strong>【功能主治】</strong>用于成人及儿童急、慢性腹泻</p><p><strong>【用法用量】</strong>口服，成人每次1袋，一日3次；儿童酌减</p><p><strong>【特点】</strong>天然蒙脱石微粒粉剂，不进入血液循环系统</p>', '1', NOW(), '2', '0', '0', '22.00', '0.00', '0', '盒', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/400x400.jpg', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/200x200.jpg', '16.80', '3890', '1006007', '0.00', '', '', '0.00', '0', '0', '0', '22.00', NULL, NULL, NULL, NULL),
('1006007', '1008002', '1006007', '奥美拉唑肠溶胶囊 20mg*14粒', '1001003', '800', '奥美拉唑,胃酸,胃溃疡,胃痛', '用于胃酸过多引起的烧心和反酸症状的短期缓解', '<p><strong>【药品名称】</strong>奥美拉唑肠溶胶囊</p><p><strong>【成分】</strong>奥美拉唑</p><p><strong>【功能主治】</strong>用于胃酸过多引起的烧心和反酸症状的短期缓解</p><p><strong>【用法用量】</strong>口服，成人一次1粒，一日1-2次，晨起吞服或早晚各一次</p>', '1', NOW(), '3', '0', '0', '35.00', '0.00', '0', '盒', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/400x400.jpg', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/200x200.jpg', '28.50', '2150', '1006008', '0.00', '', '', '0.00', '0', '0', '0', '35.00', NULL, NULL, NULL, NULL),
-- 心脑血管
('1006008', '1008003', '1006008', '阿司匹林肠溶片 100mg*30片', '1001006', '600', '阿司匹林,心脑血管,抗血栓', '用于预防一过性脑缺血发作、心肌梗死、心房颤动等', '<p><strong>【药品名称】</strong>阿司匹林肠溶片</p><p><strong>【成分】</strong>阿司匹林</p><p><strong>【功能主治】</strong>用于预防一过性脑缺血发作、心肌梗死、心房颤动、人工心脏瓣膜、动静脉瘘或其他手术后的血栓形成</p><p><strong>【用法用量】</strong>口服，一日75-150mg，一日1次</p><p><strong>【注意事项】</strong>请遵医嘱服用</p>', '1', NOW(), '1', '0', '0', '28.00', '0.00', '0', '盒', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/400x400.jpg', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/200x200.jpg', '22.00', '1680', '1006009', '0.00', '', '', '0.00', '0', '0', '0', '28.00', NULL, NULL, NULL, NULL),
('1006009', '1008003', '1006009', '复方丹参滴丸 27mg*180丸', '1001000', '500', '丹参,心脑血管,冠心病,心绞痛', '活血化瘀，理气止痛，用于气滞血瘀所致的胸痹', '<p><strong>【药品名称】</strong>复方丹参滴丸</p><p><strong>【成分】</strong>丹参、三七、冰片</p><p><strong>【功能主治】</strong>活血化瘀，理气止痛。用于气滞血瘀所致的胸痹，症见胸闷、心前区刺痛</p><p><strong>【用法用量】</strong>口服或舌下含服，一次10丸，一日3次</p>', '1', NOW(), '2', '0', '0', '45.00', '0.00', '0', '盒', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/400x400.jpg', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/200x200.jpg', '38.00', '1250', '1006010', '0.00', '', '', '0.00', '0', '0', '0', '45.00', NULL, NULL, NULL, NULL),
-- 皮肤用药
('1006010', '1008004', '1006010', '达克宁软膏 20g', '1001007', '1000', '达克宁,脚气,真菌,皮肤', '用于体癣、股癣、手癣、足癣、花斑癣等', '<p><strong>【药品名称】</strong>达克宁软膏（硝酸咪康唑乳膏）</p><p><strong>【成分】</strong>硝酸咪康唑</p><p><strong>【功能主治】</strong>用于体癣、股癣、手癣、足癣、花斑癣以及真菌性甲沟炎和念珠菌性外阴阴道炎</p><p><strong>【用法用量】</strong>外用，涂搽于洗净的患处，一日2次</p>', '1', NOW(), '1', '0', '0', '32.00', '0.00', '0', '支', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/400x400.jpg', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/200x200.jpg', '25.80', '2890', '1006011', '0.00', '', '', '0.00', '0', '0', '0', '32.00', NULL, NULL, NULL, NULL),
('1006011', '1008004', '1006011', '红霉素软膏 10g', '1001008', '1500', '红霉素,软膏,消炎,皮肤', '用于脓疱疮等化脓性皮肤病、小面积烧伤、溃疡面感染', '<p><strong>【药品名称】</strong>红霉素软膏</p><p><strong>【成分】</strong>红霉素</p><p><strong>【功能主治】</strong>用于脓疱疮等化脓性皮肤病、小面积烧伤、溃疡面感染和寻常痤疮</p><p><strong>【用法用量】</strong>局部外用，取本品适量涂于患处，一日2次</p><p><strong>【特点】</strong>家庭常备外用药，价格实惠</p>', '1', NOW(), '2', '0', '0', '8.00', '0.00', '0', '支', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/400x400.jpg', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/200x200.jpg', '5.50', '4560', '1006012', '0.00', '超值', '', '0.00', '0', '0', '1', '8.00', NULL, NULL, NULL, NULL),
('1006012', '1008004', '1006012', '云南白药膏 6.5cm*10cm*5贴', '1001001', '800', '云南白药,膏药,跌打,止痛', '活血散瘀，消肿止痛，祛风除湿', '<p><strong>【药品名称】</strong>云南白药膏</p><p><strong>【成分】</strong>国家保密方</p><p><strong>【功能主治】</strong>活血散瘀，消肿止痛，祛风除湿。用于跌打损伤，瘀血肿痛，风湿疼痛</p><p><strong>【用法用量】</strong>外用，贴患处</p>', '1', NOW(), '3', '0', '0', '38.00', '0.00', '0', '盒', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/400x400.jpg', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/200x200.jpg', '29.90', '2150', '1006013', '0.00', '', '', '0.00', '0', '0', '0', '38.00', NULL, NULL, NULL, NULL),
-- 维生素钙
('1006013', '1008005', '1006013', '钙尔奇D片 60片', '1001007', '600', '钙尔奇,钙片,维生素D,补钙', '用于妊娠和哺乳期妇女、更年期妇女、老年人等的钙补充剂', '<p><strong>【药品名称】</strong>钙尔奇D片</p><p><strong>【成分】</strong>碳酸钙、维生素D3</p><p><strong>【功能主治】</strong>用于妊娠和哺乳期妇女、更年期妇女、老年人等的钙补充剂，并帮助防治骨质疏松症</p><p><strong>【用法用量】</strong>口服，一次1片，一日1-2次</p>', '1', NOW(), '1', '0', '0', '89.00', '0.00', '0', '瓶', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/400x400.jpg', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/200x200.jpg', '69.00', '1890', '1006014', '0.00', '', '', '0.00', '0', '0', '0', '89.00', NULL, NULL, NULL, NULL),
('1006014', '1008005', '1006014', '维生素C泡腾片 1g*10片', '1001004', '1200', '维生素C,维C,泡腾片,免疫', '增强机体抵抗力，用于预防和治疗各种急、慢性传染性疾病', '<p><strong>【药品名称】</strong>维生素C泡腾片</p><p><strong>【成分】</strong>维生素C</p><p><strong>【功能主治】</strong>增强机体抵抗力，用于预防和治疗各种急、慢性传染性疾病或其他疾病</p><p><strong>【用法用量】</strong>将本品放入一杯水中，溶解后饮用，一日1片</p><p><strong>【口味】</strong>橙子味，口感好</p>', '1', NOW(), '2', '0', '0', '28.00', '0.00', '1', '管', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/400x400.jpg', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/200x200.jpg', '19.90', '3250', '1006015', '0.00', '热销', '', '0.00', '0', '0', '1', '28.00', NULL, NULL, NULL, NULL),
-- 血压血糖
('1006015', '1008006', '1006015', '鱼跃电子血压计 YE660D', '1001005', '300', '血压计,电子血压计,鱼跃,测量', '全自动上臂式电子血压计，语音播报，大屏显示', '<p><strong>【产品名称】</strong>鱼跃电子血压计 YE660D</p><p><strong>【产品特点】</strong></p><ul><li>全自动智能加压测量</li><li>语音播报功能</li><li>大屏幕液晶显示</li><li>双人各60组记忆</li><li>心律不齐检测</li></ul><p><strong>【适用人群】</strong>家庭日常血压监测</p>', '1', NOW(), '1', '0', '0', '299.00', '0.00', '0', '台', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/400x400.jpg', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/200x200.jpg', '199.00', '890', '1006016', '0.00', '爆款', '', '0.00', '0', '0', '1', '299.00', NULL, NULL, NULL, NULL),
('1006016', '1008006', '1006016', '欧姆龙血糖仪 HGM-112', '1001006', '250', '血糖仪,欧姆龙,血糖,测量', '家用血糖测试仪，5秒快速出结果', '<p><strong>【产品名称】</strong>欧姆龙血糖仪 HGM-112</p><p><strong>【产品特点】</strong></p><ul><li>5秒快速测量</li><li>微量采血（0.5μL）</li><li>500组记忆功能</li><li>餐前餐后标记</li><li>大屏幕显示</li></ul><p><strong>【套装包含】</strong>血糖仪1台+采血笔1支+试纸50片+采血针50支</p>', '1', NOW(), '2', '0', '0', '399.00', '0.00', '1', '套', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/400x400.jpg', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/200x200.jpg', '299.00', '560', '1006017', '0.00', '新品', '', '0.00', '0', '0', '0', '399.00', NULL, NULL, NULL, NULL),
-- 康复护理
('1006017', '1008007', '1006017', '鱼跃制氧机 8F-3AW', '1001005', '100', '制氧机,氧气机,鱼跃,吸氧', '3升医用级制氧机，雾化功能，老人家用', '<p><strong>【产品名称】</strong>鱼跃制氧机 8F-3AW</p><p><strong>【产品特点】</strong></p><ul><li>医用级3升大流量</li><li>氧浓度高达93%±3%</li><li>雾化功能一体</li><li>低噪音设计</li><li>智能定时功能</li><li>远程遥控</li></ul><p><strong>【适用人群】</strong>中老年人、呼吸系统疾病患者、高原地区</p>', '1', NOW(), '1', '0', '0', '2680.00', '0.00', '0', '台', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/400x400.jpg', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/200x200.jpg', '1980.00', '230', '1006018', '0.00', '', '', '0.00', '0', '0', '0', '2680.00', NULL, NULL, NULL, NULL),
('1006018', '1008007', '1006018', '医用拐杖 铝合金腋下拐', '1001005', '400', '拐杖,腋下拐,助行器,康复', '铝合金材质，高度可调，防滑设计', '<p><strong>【产品名称】</strong>医用铝合金腋下拐杖</p><p><strong>【产品特点】</strong></p><ul><li>加厚铝合金材质，承重强</li><li>9档高度可调</li><li>防滑腋托，舒适海绵垫</li><li>防滑橡胶脚垫</li><li>单支/一对可选</li></ul>', '1', NOW(), '2', '0', '0', '128.00', '0.00', '0', '支', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/400x400.jpg', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/200x200.jpg', '89.00', '780', '1006019', '0.00', '', '', '0.00', '0', '0', '0', '128.00', NULL, NULL, NULL, NULL),
-- 中医保健
('1006019', '1008008', '1006019', '同仁堂阿胶 250g', '1001000', '200', '阿胶,同仁堂,补血,滋补', '补血滋阴，润燥，止血', '<p><strong>【产品名称】</strong>同仁堂阿胶</p><p><strong>【成分】</strong>驴皮</p><p><strong>【功能主治】</strong>补血滋阴，润燥，止血。用于血虚萎黄、眩晕心悸、心烦不眠、肺燥咳嗽</p><p><strong>【用法用量】</strong>烊化兑服，3-9克</p><p><strong>【特点】</strong>中华老字号，传统工艺熬制</p>', '1', NOW(), '1', '0', '0', '1280.00', '0.00', '0', '盒', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/400x400.jpg', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/200x200.jpg', '999.00', '450', '1006020', '0.00', '精品', '', '0.00', '0', '0', '1', '1280.00', NULL, NULL, NULL, NULL),
('1006020', '1008008', '1006020', '艾灸盒随身灸 家用套装', '1001000', '500', '艾灸,艾灸盒,随身灸,养生', '家用便携式艾灸盒，温经通络，祛湿散寒', '<p><strong>【产品名称】</strong>艾灸盒随身灸家用套装</p><p><strong>【套装包含】</strong></p><ul><li>艾灸盒2个</li><li>艾柱54粒</li><li>穴位图1张</li><li>防烫套2个</li></ul><p><strong>【功效】</strong>温经通络，祛湿散寒，缓解疲劳</p><p><strong>【适用部位】</strong>腹部、腰部、颈部、腿部等</p>', '1', NOW(), '2', '0', '0', '89.00', '0.00', '0', '套', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/400x400.jpg', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/200x200.jpg', '59.00', '1230', '1006021', '0.00', '', '', '0.00', '0', '0', '0', '89.00', NULL, NULL, NULL, NULL),
-- 口罩防护
('1006021', '1008009', '1006021', '一次性医用外科口罩 50只', '1001005', '2000', '口罩,医用口罩,外科口罩,防护', '三层防护，医用级别，透气舒适', '<p><strong>【产品名称】</strong>一次性医用外科口罩</p><p><strong>【规格】</strong>50只/盒</p><p><strong>【产品特点】</strong></p><ul><li>三层过滤防护</li><li>医用熔喷布</li><li>细菌过滤效率≥95%</li><li>透气不闷热</li><li>独立包装可选</li></ul><p><strong>【适用范围】</strong>日常防护、医疗机构</p>', '1', NOW(), '1', '0', '0', '45.00', '0.00', '0', '盒', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/400x400.jpg', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/200x200.jpg', '29.90', '5680', '1006022', '0.00', '热销', '', '0.00', '0', '0', '1', '45.00', NULL, NULL, NULL, NULL),
('1006022', '1008009', '1006022', 'N95防护口罩 10只装', '1001005', '800', 'N95,防护口罩,KN95,防尘', 'N95级别防护，过滤效率≥95%', '<p><strong>【产品名称】</strong>N95防护口罩</p><p><strong>【规格】</strong>10只/盒</p><p><strong>【产品特点】</strong></p><ul><li>N95级别防护</li><li>五层过滤</li><li>3D立体设计</li><li>舒适透气</li><li>独立包装</li></ul><p><strong>【适用范围】</strong>医疗防护、粉尘环境</p>', '1', NOW(), '2', '0', '0', '89.00', '0.00', '0', '盒', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/400x400.jpg', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/200x200.jpg', '59.00', '2150', '1006023', '0.00', '', '', '0.00', '0', '0', '0', '89.00', NULL, NULL, NULL, NULL),
('1006023', '1008009', '1006023', '免洗洗手液 500ml', '1001007', '1000', '洗手液,免洗,消毒,杀菌', '75%酒精免洗洗手液，快速杀菌', '<p><strong>【产品名称】</strong>免洗洗手液</p><p><strong>【规格】</strong>500ml</p><p><strong>【主要成分】</strong>75%酒精、甘油、维生素E</p><p><strong>【特点】</strong></p><ul><li>快速杀菌，杀菌率99.9%</li><li>免水洗，方便快捷</li><li>添加甘油，滋润不伤手</li><li>大容量家庭装</li></ul>', '1', NOW(), '3', '0', '0', '35.00', '0.00', '0', '瓶', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/400x400.jpg', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/200x200.jpg', '25.80', '3450', '1006024', '0.00', '', '', '0.00', '0', '0', '0', '35.00', NULL, NULL, NULL, NULL),
-- 增强免疫
('1006024', '1008010', '1006024', '汤臣倍健蛋白粉 450g', '1001004', '400', '蛋白粉,蛋白质,免疫,营养', '双蛋白配方，增强免疫力', '<p><strong>【产品名称】</strong>汤臣倍健蛋白粉</p><p><strong>【规格】</strong>450g/罐</p><p><strong>【主要成分】</strong>大豆分离蛋白、浓缩乳清蛋白</p><p><strong>【保健功能】</strong>增强免疫力</p><p><strong>【适宜人群】</strong>免疫力低下者</p><p><strong>【食用方法】</strong>每日10g，温水冲调</p>', '1', NOW(), '1', '0', '0', '298.00', '0.00', '0', '罐', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/400x400.jpg', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/200x200.jpg', '238.00', '980', '1006025', '0.00', '', '', '0.00', '0', '0', '0', '298.00', NULL, NULL, NULL, NULL),
('1006025', '1008010', '1006025', '维生素E软胶囊 100粒', '1001004', '600', '维生素E,维E,美容,抗氧化', '天然维生素E，美容养颜，抗氧化', '<p><strong>【产品名称】</strong>天然维生素E软胶囊</p><p><strong>【规格】</strong>100粒/瓶</p><p><strong>【保健功能】</strong>抗氧化、美容养颜</p><p><strong>【适宜人群】</strong>成人</p><p><strong>【食用方法】</strong>每日1粒，饭后服用</p>', '1', NOW(), '2', '0', '0', '128.00', '0.00', '0', '瓶', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/400x400.jpg', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/200x200.jpg', '89.00', '1560', '1006026', '0.00', '', '', '0.00', '0', '0', '0', '128.00', NULL, NULL, NULL, NULL),
-- 调节三高
('1006026', '1008011', '1006026', '鱼油软胶囊 100粒', '1001004', '500', '鱼油,深海鱼油,DHA,血脂', '深海鱼油，辅助降血脂', '<p><strong>【产品名称】</strong>深海鱼油软胶囊</p><p><strong>【规格】</strong>100粒/瓶</p><p><strong>【主要成分】</strong>DHA、EPA</p><p><strong>【保健功能】</strong>辅助降血脂</p><p><strong>【适宜人群】</strong>血脂偏高者</p><p><strong>【食用方法】</strong>每日2次，每次1粒</p>', '1', NOW(), '1', '0', '0', '168.00', '0.00', '0', '瓶', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/400x400.jpg', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/200x200.jpg', '128.00', '780', '1006027', '0.00', '', '', '0.00', '0', '0', '0', '168.00', NULL, NULL, NULL, NULL),
('1006027', '1008011', '1006027', '大豆卵磷脂胶囊 100粒', '1001004', '450', '卵磷脂,大豆磷脂,血管,血脂', '辅助降血脂，保护心脑血管', '<p><strong>【产品名称】</strong>大豆卵磷脂胶囊</p><p><strong>【规格】</strong>100粒/瓶</p><p><strong>【保健功能】</strong>辅助降血脂</p><p><strong>【适宜人群】</strong>血脂偏高者</p><p><strong>【食用方法】</strong>每日2次，每次1粒</p>', '1', NOW(), '2', '0', '0', '158.00', '0.00', '0', '瓶', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/400x400.jpg', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/200x200.jpg', '118.00', '650', '1006028', '0.00', '', '', '0.00', '0', '0', '0', '158.00', NULL, NULL, NULL, NULL),
-- 骨骼健康
('1006028', '1008012', '1006028', '氨糖软骨素钙片 60片', '1001004', '500', '氨糖,软骨素,关节,钙片', '补充氨糖，养护关节', '<p><strong>【产品名称】</strong>氨糖软骨素钙片</p><p><strong>【规格】</strong>60片/瓶</p><p><strong>【主要成分】</strong>氨基葡萄糖、硫酸软骨素、钙</p><p><strong>【保健功能】</strong>增加骨密度</p><p><strong>【适宜人群】</strong>中老年人</p><p><strong>【食用方法】</strong>每日2次，每次1片</p>', '1', NOW(), '1', '0', '0', '198.00', '0.00', '0', '瓶', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/400x400.jpg', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/200x200.jpg', '158.00', '890', '1006029', '0.00', '', '', '0.00', '0', '0', '0', '198.00', NULL, NULL, NULL, NULL),
('1006029', '1008012', '1006029', '液体钙软胶囊 100粒', '1001004', '600', '液体钙,钙片,补钙,骨骼', '液体钙易吸收，补充维生素D3', '<p><strong>【产品名称】</strong>液体钙软胶囊</p><p><strong>【规格】</strong>100粒/瓶</p><p><strong>【主要成分】</strong>碳酸钙、维生素D3</p><p><strong>【保健功能】</strong>补充钙、维生素D</p><p><strong>【适宜人群】</strong>需要补钙的成人</p><p><strong>【食用方法】</strong>每日2次，每次1粒</p>', '1', NOW(), '2', '0', '0', '138.00', '0.00', '0', '瓶', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/400x400.jpg', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/200x200.jpg', '98.00', '1120', '1006030', '0.00', '', '', '0.00', '0', '0', '0', '138.00', NULL, NULL, NULL, NULL);

-- 5. 插入商品规格数据
INSERT INTO `mall_product` (`id`, `goods_id`, `goods_specification_ids`, `goods_sn`, `goods_number`, `retail_price`, `market_price`) VALUES
('1', '1006002', '', '1006002', '1000', '12.90', '18.00'),
('2', '1006003', '', '1006003', '800', '19.90', '25.00'),
('3', '1006004', '', '1006004', '1200', '9.90', '15.00'),
('4', '1006005', '', '1006005', '1500', '13.50', '18.00'),
('5', '1006006', '', '1006006', '2000', '16.80', '22.00'),
('6', '1006007', '', '1006007', '800', '28.50', '35.00'),
('7', '1006008', '', '1006008', '600', '22.00', '28.00'),
('8', '1006009', '', '1006009', '500', '38.00', '45.00'),
('9', '1006010', '', '1006010', '1000', '25.80', '32.00'),
('10', '1006011', '', '1006011', '1500', '5.50', '8.00'),
('11', '1006012', '', '1006012', '800', '29.90', '38.00'),
('12', '1006013', '', '1006013', '600', '69.00', '89.00'),
('13', '1006014', '', '1006014', '1200', '19.90', '28.00'),
('14', '1006015', '', '1006015', '300', '199.00', '299.00'),
('15', '1006016', '', '1006016', '250', '299.00', '399.00'),
('16', '1006017', '', '1006017', '100', '1980.00', '2680.00'),
('17', '1006018', '', '1006018', '400', '89.00', '128.00'),
('18', '1006019', '', '1006019', '200', '999.00', '1280.00'),
('19', '1006020', '', '1006020', '500', '59.00', '89.00'),
('20', '1006021', '', '1006021', '2000', '29.90', '45.00'),
('21', '1006022', '', '1006022', '800', '59.00', '89.00'),
('22', '1006023', '', '1006023', '1000', '25.80', '35.00'),
('23', '1006024', '', '1006024', '400', '238.00', '298.00'),
('24', '1006025', '', '1006025', '600', '89.00', '128.00'),
('25', '1006026', '', '1006026', '500', '128.00', '168.00'),
('26', '1006027', '', '1006027', '450', '118.00', '158.00'),
('27', '1006028', '', '1006028', '500', '158.00', '198.00'),
('28', '1006029', '', '1006029', '600', '98.00', '138.00');

-- 6. 更新自增ID起始值
ALTER TABLE `mall_goods` AUTO_INCREMENT = 1006030;
ALTER TABLE `mall_product` AUTO_INCREMENT = 30;
ALTER TABLE `mall_category` AUTO_INCREMENT = 1008013;
ALTER TABLE `mall_brand` AUTO_INCREMENT = 1001010;

-- 恢复外键检查
SET FOREIGN_KEY_CHECKS = 1;

-- ========================================================
-- 脚本执行完成
-- 注意：图片URL使用的是占位地址，请替换为实际的药品图片URL
-- ========================================================