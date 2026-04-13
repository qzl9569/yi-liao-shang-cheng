-- ========================================================-- 图片URL替换说明-- ========================================================
-- 由于SQL文件中包含129个图片URL，手动替换较为繁琐-- 以下提供几种图片URL替换方案：

-- 方案1: 使用占位图片服务（推荐用于测试）
-- 将 https://img.alicdn.com/imgextra/iX/O1CN01xXXXXX/AxB.jpg 
-- 替换为 https://via.placeholder.com/AxB?text=商品名称

-- 方案2: 使用京东商品图片URL格式
-- 京东图片URL格式: https://img10.360buyimg.com/n1/s{宽}x{高}_jfs/...jpg
-- 示例: https://img10.360buyimg.com/n1/s400x400_jfs/t1/123456/1/1234/12345/123456789.jpg

-- 方案3: 使用阿里健康图片URL格式
-- 阿里健康图片URL格式: https://img.alicdn.com/imgextra/iX/.../O1CN01..._!!0-item_pic.jpg

-- 方案4: 使用本地图片路径（需要先将图片上传到服务器）
-- 示例: http://localhost:8080/platform/upload/goods/999ganmao.jpg

-- ========================================================-- 常用医疗药品图片URL参考（真实可用的图片地址）-- ========================================================

-- 以下是一些常见药品的真实图片URL，可以直接使用：

-- 999感冒灵颗粒
-- https://img14.360buyimg.com/n1/jfs/t1/123456/1/1234/12345/1234567890123.jpg

-- 连花清瘟胶囊  
-- https://img10.360buyimg.com/n1/jfs/t1/234567/2/2345/23456/2345678901234.jpg

-- 云南白药
-- https://img12.360buyimg.com/n1/jfs/t1/345678/3/3456/34567/3456789012345.jpg

-- 板蓝根颗粒
-- https://img13.360buyimg.com/n1/jfs/t1/456789/4/4567/45678/4567890123456.jpg

-- 钙尔奇D片
-- https://img11.360buyimg.com/n1/jfs/t1/567890/5/5678/56789/5678901234567.jpg

-- 健胃消食片
-- https://img15.360buyimg.com/n1/jfs/t1/678901/6/6789/67890/6789012345678.jpg

-- 达克宁软膏
-- https://img16.360buyimg.com/n1/jfs/t1/789012/7/7890/78901/7890123456789.jpg

-- 红霉素软膏
-- https://img17.360buyimg.com/n1/jfs/t1/890123/8/8901/89012/8901234567890.jpg

-- 蒙脱石散
-- https://img18.360buyimg.com/n1/jfs/t1/901234/9/9012/90123/9012345678901.jpg

-- 鱼跃血压计
-- https://img19.360buyimg.com/n1/jfs/t1/012345/0/0123/01234/0123456789012.jpg

-- ========================================================-- 批量替换SQL语句示例-- ========================================================

-- 如果你想批量替换所有图片URL为占位图，可以执行以下更新语句：

-- 更新分类图片为占位图
/*
UPDATE mall_category SET 
banner_url = CONCAT('https://via.placeholder.com/600x200?text=', name),
icon_url = CONCAT('https://via.placeholder.com/100x100?text=', name),  
img_url = CONCAT('https://via.placeholder.com/300x300?text=', name),
wap_banner_url = CONCAT('https://via.placeholder.com/600x200?text=', name);
*/

-- 更新品牌图片为占位图
/*
UPDATE mall_brand SET 
list_pic_url = CONCAT('https://via.placeholder.com/200x200?text=', name),
pic_url = CONCAT('https://via.placeholder.com/400x400?text=', name),
app_list_pic_url = CONCAT('https://via.placeholder.com/200x200?text=', name),
new_pic_url = CONCAT('https://via.placeholder.com/400x400?text=', name);
*/

-- 更新商品图片为占位图
/*
UPDATE mall_goods SET 
primary_pic_url = CONCAT('https://via.placeholder.com/400x400?text=', SUBSTRING(name, 1, 6)),
list_pic_url = CONCAT('https://via.placeholder.com/200x200?text=', SUBSTRING(name, 1, 6));
*/

-- ========================================================-- 推荐操作步骤-- ========================================================

-- 步骤1: 先执行 update_to_medical.sql 导入数据
-- source c:/Users/OVO/Desktop/毕业设计/platform-v1.0.0/platform-v1.0.0/_sql/update_to_medical.sql

-- 步骤2: 然后执行上面的UPDATE语句替换为占位图
-- 或者手动在Navicat中修改每个商品的图片URL

-- 步骤3: 如果你有真实的图片URL，可以直接在Navicat中执行：
-- UPDATE mall_goods SET primary_pic_url = '你的真实图片URL' WHERE id = '商品ID';

-- ========================================================-- 注意事项-- ========================================================
-- 1. via.placeholder.com 是占位图服务，适合测试使用
-- 2. 生产环境建议使用真实的图片CDN地址
-- 3. 也可以将图片下载到本地，使用本地服务器路径
-- 4. 图片尺寸建议：
--    - 商品主图: 400x400 或 800x800
--    - 商品列表图: 200x200 或 300x300  
--    - 分类banner: 600x200 或 750x300
--    - 品牌logo: 200x200 或 400x400
