-- ========================================================
-- 更新专题精选为医疗药品内容的SQL脚本
-- ========================================================

-- 设置字符集
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- 1. 清空原有专题数据
TRUNCATE TABLE `mall_topic`;
TRUNCATE TABLE `mall_topic_category`;

-- 2. 插入医疗专题分类
INSERT INTO `mall_topic_category` (`id`, `title`, `pic_url`) VALUES
('1', '健康科普', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/800x400.jpg'),
('2', '季节养生', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/800x400.jpg'),
('3', '慢病管理', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/800x400.jpg'),
('4', '家庭常备', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/800x400.jpg'),
('5', '医疗器械', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/800x400.jpg');

-- 3. 插入医疗专题内容
INSERT INTO `mall_topic` (`id`, `title`, `content`, `avatar`, `item_pic_url`, `subtitle`, `topic_category_id`, `price_info`, `read_count`, `scene_pic_url`, `topic_template_id`, `topic_tag_id`) VALUES

('301', '冬季感冒预防指南', '<p><strong>冬季是感冒高发季节，做好预防和备药非常重要。</strong></p><h3>一、常见感冒类型</h3><p>1. <strong>风寒感冒</strong>：怕冷重、发热轻、无汗、头痛身痛，鼻塞流清涕</p><p>2. <strong>风热感冒</strong>：发热重、微恶风、头胀痛、有汗、咽喉红肿疼痛</p><h3>二、家庭常备药品</h3><p>999感冒灵颗粒 - 解热镇痛</p><p>连花清瘟胶囊 - 清瘟解毒</p><p>板蓝根颗粒 - 清热解毒</p><p>维生素C泡腾片 - 增强免疫力</p><h3>三、预防感冒小贴士</h3><p>注意保暖，适时增减衣物</p><p>勤洗手，保持室内通风</p><p>多喝水，保证充足睡眠</p><p>适当运动，增强体质</p>', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/100x100.jpg', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/400x300.jpg', '冬季感冒高发，这些药品要备好', '2', '59.90', '12.5k', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/750x400.jpg', '0', '0'),

('302', '高血压患者的日常管理指南', '<p><strong>高血压是最常见的慢性病之一，需要长期管理和控制。</strong></p><h3>一、什么是高血压</h3><p>在未使用降压药物的情况下，非同日3次测量血压，收缩压大于等于140mmHg和/或舒张压大于等于90mmHg，即可诊断为高血压。</p><h3>二、日常监测很重要</h3><p>建议家庭自备电子血压计，每天定时测量并记录。</p><p>鱼跃电子血压计 - 全自动测量，语音播报</p><p>欧姆龙血压计 - 日本品牌，精准可靠</p><h3>三、生活方式调整</h3><p>1. <strong>低盐饮食</strong>：每日食盐摄入量不超过6克</p><p>2. <strong>控制体重</strong>：保持BMI在18.5-23.9之间</p><p>3. <strong>适量运动</strong>：每周至少150分钟中等强度运动</p><p>4. <strong>戒烟限酒</strong>：彻底戒烟，限制饮酒</p><h3>四、营养补充建议</h3><p>深海鱼油 - 辅助降血脂</p><p>大豆卵磷脂 - 保护心脑血管</p>', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/100x100.jpg', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/400x300.jpg', '科学管理血压，远离并发症', '3', '199.00', '8.3k', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/750x400.jpg', '0', '0'),

('303', '家庭急救箱配置指南', '<p><strong>一个完善的家庭急救箱，能在紧急时刻发挥重要作用。</strong></p><h3>一、基础药品清单</h3><p><strong>外用药：</strong></p><p>云南白药膏 - 活血散瘀，消肿止痛</p><p>红霉素软膏 - 抗菌消炎</p><p>碘伏消毒液 - 伤口消毒</p><p>创可贴 - 小伤口包扎</p><p><strong>内服药：</strong></p><p>蒙脱石散 - 急慢性腹泻</p><p>健胃消食片 - 消化不良</p><p>阿司匹林 - 解热镇痛</p><h3>二、医疗器械</h3><p>电子体温计 - 监测体温</p><p>医用棉签、纱布</p><p>医用胶带、绷带</p><p>一次性手套</p><h3>三、急救知识</h3><p>烫伤：冷水冲洗15-20分钟</p><p>割伤：压迫止血，清洁伤口</p><p>中暑：转移到阴凉处，补充水分</p><p>异物卡喉：海姆立克急救法</p>', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/100x100.jpg', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/400x300.jpg', '建议每个家庭都准备一个', '4', '89.00', '15.7k', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/750x400.jpg', '0', '0'),

('304', '春季过敏防护全攻略', '<p><strong>春季花粉、尘螨增多，过敏体质人群需要格外注意。</strong></p><h3>一、常见春季过敏源</h3><p>花粉：树木花粉、杂草花粉</p><p>尘螨：床褥、地毯中的螨虫</p><p>霉菌：潮湿环境中的霉菌孢子</p><p>宠物皮屑：猫狗等宠物的毛发和皮屑</p><h3>二、防护措施</h3><p><strong>外出防护：</strong></p><p>佩戴口罩（推荐N95或医用外科口罩）</p><p>佩戴眼镜，减少眼部接触</p><p>避免在花粉浓度高的时段外出</p><p><strong>居家防护：</strong></p><p>定期清洁，使用除螨仪</p><p>保持室内干燥通风</p><p>使用空气净化器</p><h3>三、缓解症状</h3><p>生理盐水洗鼻</p><p>维生素C增强免疫力</p><p>严重时及时就医</p>', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/100x100.jpg', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/400x300.jpg', '春季过敏高发，做好防护', '2', '45.00', '9.2k', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/750x400.jpg', '0', '0'),

('305', '中老年人骨骼健康', '<p><strong>随着年龄增长，骨骼健康问题日益突出，需要提前预防。</strong></p><h3>一、骨质疏松的危害</h3><p>骨质疏松症是中老年人最常见的骨骼疾病，容易导致：</p><p>腰背疼痛、身高变矮</p><p>驼背、脊柱变形</p><p>骨折风险增加（尤其是髋部、脊柱、腕部）</p><h3>二、营养补充方案</h3><p><strong>补钙：</strong></p><p>钙尔奇D片 - 钙+维生素D3，促进吸收</p><p>液体钙软胶囊 - 易吸收，适合中老年人</p><p><strong>保护关节：</strong></p><p>氨糖软骨素钙片 - 补充氨糖，养护关节</p><p>胶原蛋白 - 维持骨骼韧性</p><h3>三、生活方式建议</h3><p>适量运动：散步、太极拳、游泳</p><p>晒太阳：促进维生素D合成</p><p>均衡饮食：奶制品、豆制品、深绿色蔬菜</p><p>避免烟酒：影响钙吸收</p><h3>四、定期检查</h3><p>建议50岁以上人群每年进行骨密度检查，早发现早干预。</p>', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/100x100.jpg', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/400x300.jpg', '关爱骨骼，远离骨质疏松', '3', '158.00', '6.8k', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/750x400.jpg', '0', '0'),

('306', '办公室人群健康指南', '<p><strong>久坐、用眼过度、压力大，办公室人群的健康问题不容忽视。</strong></p><h3>一、常见问题</h3><p>颈椎病、腰椎病</p><p>眼睛干涩、视力下降</p><p>肠胃不适、消化不良</p><p>精神压力大、睡眠质量差</p><h3>二、健康建议</h3><p><strong>保护颈椎：</strong></p><p>每小时起身活动5-10分钟</p><p>做颈部保健操</p><p>使用颈椎按摩仪</p><p><strong>保护眼睛：</strong></p><p>遵循20-20-20法则</p><p>使用人工泪液缓解干涩</p><p>补充维生素A、叶黄素</p><p><strong>调理肠胃：</strong></p><p>规律饮食，避免暴饮暴食</p><p>备一些健胃消食片</p><p>多吃膳食纤维，促进消化</p><h3>三、营养补充</h3><p>维生素B族 - 缓解疲劳</p><p>蛋白粉 - 补充蛋白质</p><p>益生菌 - 调节肠道</p>', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/100x100.jpg', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/400x300.jpg', '关爱自己，从健康开始', '1', '128.00', '11.3k', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/750x400.jpg', '0', '0'),

('307', '儿童用药安全指南', '<p><strong>儿童不是缩小版的成人，用药需要格外谨慎。</strong></p><h3>一、儿童用药原则</h3><p>遵医嘱：不要自行给孩子用药</p><p>按体重计算剂量：不要按成人剂量估算</p><p>选择儿童专用药：避免使用成人药物</p><p>注意禁忌：某些药物儿童禁用</p><h3>二、家庭常备儿童药品</h3><p>退热药：对乙酰氨基酚、布洛芬</p><p>止泻药：蒙脱石散（儿童可用）</p><p>外用药：炉甘石洗剂（止痒）</p><p>维生素D滴剂：促进钙吸收</p><h3>三、常见误区</h3><p>用牛奶送服药物</p><p>擅自增加剂量</p><p>多种药物混合使用</p><p>使用过期药物</p><h3>四、何时就医</h3><p>持续高热不退</p><p>精神萎靡、嗜睡</p><p>呼吸困难</p><p>严重腹泻呕吐</p>', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/100x100.jpg', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/400x300.jpg', '孩子健康，家长安心', '1', '68.00', '7.5k', 'https://img.alicdn.com/imgextra/i3/O1CN01xXXXXX/750x400.jpg', '0', '0'),

('308', '中医养生智慧', '<p><strong>中医讲究天人合一，顺应四时变化调养身体。</strong></p><h3>一、春季养肝</h3><p>春季万物生发，宜养肝护肝：</p><p>保持心情舒畅，避免生气</p><p>多吃绿色蔬菜：菠菜、芹菜、韭菜</p><p>适当运动，舒展筋骨</p><p>艾灸养肝穴位：太冲、肝俞</p><h3>二、夏季养心</h3><p>夏季阳气最盛，宜养心安神：</p><p>避免过度劳累，保证充足睡眠</p><p>饮食清淡，多吃苦味食物</p><p>适当午休，避开正午烈日</p><p>可饮用菊花茶、绿豆汤清热</p><h3>三、秋季养肺</h3><p>秋季干燥，宜养肺润燥：</p><p>多吃润肺食物：梨、百合、银耳</p><p>注意保暖，预防呼吸道感染</p><p>适当运动，增强肺功能</p><h3>四、冬季养肾</h3><p>冬季收藏，宜养肾藏精：</p><p>注意保暖，尤其是腰部和脚部</p><p>适当进补：阿胶、枸杞、核桃</p><p>早睡晚起，保证充足睡眠</p><p>艾灸关元、肾俞穴</p><h3>五、养生好物推荐</h3><p>同仁堂阿胶 - 补血滋阴</p><p>艾灸盒套装 - 温经通络</p><p>枸杞、红枣 - 日常养生</p>', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/100x100.jpg', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/400x300.jpg', '传承中医智慧，科学养生保健', '2', '199.00', '5.6k', 'https://img.alicdn.com/imgextra/i4/O1CN01xXXXXX/750x400.jpg', '0', '0'),

('309', '家用医疗器械使用指南', '<p><strong>正确使用家用医疗器械，能更好地监测和管理健康。</strong></p><h3>一、血压计使用</h3><p><strong>测量前准备：</strong></p><p>静坐5-10分钟</p><p>避免咖啡、运动、吸烟后30分钟内测量</p><p>选择合适尺寸的袖带</p><p><strong>测量姿势：</strong></p><p>坐位，背部有支撑</p><p>手臂平放在桌面上，与心脏同高</p><p>双脚平放，不要交叉</p><h3>二、血糖仪使用</h3><p>洗手并擦干</p><p>采血针一次性使用</p><p>试纸不要过期</p><p>定期校准血糖仪</p><h3>三、体温计使用</h3><p>电子体温计：测量前确保电量充足</p><p>测量时间：腋温5-10分钟</p><p>测量前避免喝冷热饮</p><h3>四、制氧机使用</h3><p>遵医嘱调节氧流量</p><p>定期清洗过滤网</p><p>注意防火安全</p><h3>五、推荐产品</h3><p>鱼跃电子血压计 - 精准可靠</p><p>欧姆龙血糖仪 - 操作简便</p><p>鱼跃制氧机 - 医用级别</p>', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/100x100.jpg', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/400x300.jpg', '正确使用，健康监测更准确', '5', '299.00', '4.2k', 'https://img.alicdn.com/imgextra/i1/O1CN01xXXXXX/750x400.jpg', '0', '0'),

('310', '常态化疫情防护指南', '<p><strong>虽然疫情趋于平稳，但个人防护仍然不能松懈。</strong></p><h3>一、个人防护</h3><p><strong>佩戴口罩：</strong></p><p>人员密集场所佩戴口罩</p><p>选择医用外科口罩或N95口罩</p><p>正确佩戴，确保密合</p><p>口罩潮湿或污染后及时更换</p><p><strong>手部卫生：</strong></p><p>勤洗手，使用肥皂或洗手液</p><p>没有条件时可用免洗洗手液</p><p>避免用手触摸口鼻眼</p><h3>二、居家防护</h3><p>保持室内通风</p><p>定期清洁消毒</p><p>门把手、手机等高频接触表面定期消毒</p><h3>三、健康监测</h3><p>关注自身健康状况</p><p>出现发热、咳嗽等症状及时就医</p><p>家中常备体温计、抗原检测试剂</p><h3>四、增强免疫力</h3><p>均衡饮食，保证营养</p><p>适量运动，增强体质</p><p>充足睡眠，避免熬夜</p><p>补充维生素C、蛋白粉</p><h3>五、防护用品清单</h3><p>一次性医用外科口罩</p><p>N95防护口罩</p><p>免洗洗手液</p><p>84消毒液/酒精消毒液</p><p>电子体温计</p>', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/100x100.jpg', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/400x300.jpg', '做好防护，守护健康', '4', '59.00', '18.9k', 'https://img.alicdn.com/imgextra/i2/O1CN01xXXXXX/750x400.jpg', '0', '0');

-- 4. 更新自增ID起始值
ALTER TABLE `mall_topic` AUTO_INCREMENT = 311;
ALTER TABLE `mall_topic_category` AUTO_INCREMENT = 6;

-- 恢复外键检查
SET FOREIGN_KEY_CHECKS = 1;

-- ========================================================
-- 脚本执行完成
-- 注意：图片URL使用的是示例地址，请替换为实际的专题图片URL
-- ========================================================
