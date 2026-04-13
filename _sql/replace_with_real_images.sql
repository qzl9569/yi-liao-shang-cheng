-- ========================================================-- 将占位图片URL替换为真实医疗药品图片URL-- ========================================================-- 说明：-- 1. 先执行 update_to_medical.sql 导入数据-- 2. 然后执行此脚本替换图片URL-- 3. 以下URL为示例，建议替换为真实的京东/阿里健康图片URL

-- ========================================================-- 第一部分：更新分类图片-- ========================================================

UPDATE mall_category SET 
banner_url = 'https://img30.360buyimg.com/popshop/jfs/t1/12345/1/1234/12345/12345.jpg',
icon_url = 'https://img30.360buyimg.com/popshop/jfs/t1/12345/1/1234/12345/12346.jpg',
img_url = 'https://img30.360buyimg.com/popshop/jfs/t1/12345/1/1234/12345/12347.jpg',
wap_banner_url = 'https://img30.360buyimg.com/popshop/jfs/t1/12345/1/1234/12345/12345.jpg'
WHERE id = '1005000';

UPDATE mall_category SET 
banner_url = 'https://img30.360buyimg.com/popshop/jfs/t1/12346/2/1235/12346/12346.jpg',
icon_url = 'https://img30.360buyimg.com/popshop/jfs/t1/12346/2/1235/12346/12347.jpg',
img_url = 'https://img30.360buyimg.com/popshop/jfs/t1/12346/2/1235/12346/12348.jpg',
wap_banner_url = 'https://img30.360buyimg.com/popshop/jfs/t1/12346/2/1235/12346/12346.jpg'
WHERE id = '1005001';

UPDATE mall_category SET 
banner_url = 'https://img30.360buyimg.com/popshop/jfs/t1/12347/3/1236/12347/12347.jpg',
icon_url = 'https://img30.360buyimg.com/popshop/jfs/t1/12347/3/1236/12347/12348.jpg',
img_url = 'https://img30.360buyimg.com/popshop/jfs/t1/12347/3/1236/12347/12349.jpg',
wap_banner_url = 'https://img30.360buyimg.com/popshop/jfs/t1/12347/3/1236/12347/12347.jpg'
WHERE id = '1005002';

UPDATE mall_category SET 
banner_url = 'https://img30.360buyimg.com/popshop/jfs/t1/12348/4/1237/12348/12348.jpg',
icon_url = 'https://img30.360buyimg.com/popshop/jfs/t1/12348/4/1237/12348/12349.jpg',
img_url = 'https://img30.360buyimg.com/popshop/jfs/t1/12348/4/1237/12348/12350.jpg',
wap_banner_url = 'https://img30.360buyimg.com/popshop/jfs/t1/12348/4/1237/12348/12348.jpg'
WHERE id = '1005003';

-- ========================================================-- 第二部分：更新品牌图片-- ========================================================

UPDATE mall_brand SET 
list_pic_url = 'https://img10.360buyimg.com/n1/s200x200_jfs/t1/100001/1/1/12345/12345.jpg',
pic_url = 'https://img10.360buyimg.com/n1/s400x400_jfs/t1/100001/1/1/12345/12346.jpg',
app_list_pic_url = 'https://img10.360buyimg.com/n1/s200x200_jfs/t1/100001/1/1/12345/12347.jpg'
WHERE id = '1001000';

UPDATE mall_brand SET 
list_pic_url = 'https://img10.360buyimg.com/n1/s200x200_jfs/t1/100002/2/1/12346/12346.jpg',
pic_url = 'https://img10.360buyimg.com/n1/s400x400_jfs/t1/100002/2/1/12346/12347.jpg',
app_list_pic_url = 'https://img10.360buyimg.com/n1/s200x200_jfs/t1/100002/2/1/12346/12348.jpg'
WHERE id = '1001001';

UPDATE mall_brand SET 
list_pic_url = 'https://img10.360buyimg.com/n1/s200x200_jfs/t1/100003/3/1/12347/12347.jpg',
pic_url = 'https://img10.360buyimg.com/n1/s400x400_jfs/t1/100003/3/1/12347/12348.jpg',
app_list_pic_url = 'https://img10.360buyimg.com/n1/s200x200_jfs/t1/100003/3/1/12347/12349.jpg'
WHERE id = '1001002';

UPDATE mall_brand SET 
list_pic_url = 'https://img10.360buyimg.com/n1/s200x200_jfs/t1/100004/4/1/12348/12348.jpg',
pic_url = 'https://img10.360buyimg.com/n1/s400x400_jfs/t1/100004/4/1/12348/12349.jpg',
app_list_pic_url = 'https://img10.360buyimg.com/n1/s200x200_jfs/t1/100004/4/1/12348/12350.jpg'
WHERE id = '1001003';

UPDATE mall_brand SET 
list_pic_url = 'https://img10.360buyimg.com/n1/s200x200_jfs/t1/100005/5/1/12349/12349.jpg',
pic_url = 'https://img10.360buyimg.com/n1/s400x400_jfs/t1/100005/5/1/12349/12350.jpg',
app_list_pic_url = 'https://img10.360buyimg.com/n1/s200x200_jfs/t1/100005/5/1/12349/12351.jpg',
new_pic_url = 'https://img10.360buyimg.com/n1/s400x400_jfs/t1/100005/5/1/12349/12352.jpg'
WHERE id = '1001004';

UPDATE mall_brand SET 
list_pic_url = 'https://img10.360buyimg.com/n1/s200x200_jfs/t1/100006/6/1/12350/12350.jpg',
pic_url = 'https://img10.360buyimg.com/n1/s400x400_jfs/t1/100006/6/1/12350/12351.jpg',
app_list_pic_url = 'https://img10.360buyimg.com/n1/s200x200_jfs/t1/100006/6/1/12350/12352.jpg',
new_pic_url = 'https://img10.360buyimg.com/n1/s400x400_jfs/t1/100006/6/1/12350/12353.jpg'
WHERE id = '1001005';

UPDATE mall_brand SET 
list_pic_url = 'https://img10.360buyimg.com/n1/s200x200_jfs/t1/100007/7/1/12351/12351.jpg',
pic_url = 'https://img10.360buyimg.com/n1/s400x400_jfs/t1/100007/7/1/12351/12352.jpg',
app_list_pic_url = 'https://img10.360buyimg.com/n1/s200x200_jfs/t1/100007/7/1/12351/12353.jpg'
WHERE id = '1001006';

UPDATE mall_brand SET 
list_pic_url = 'https://img10.360buyimg.com/n1/s200x200_jfs/t1/100008/8/1/12352/12352.jpg',
pic_url = 'https://img10.360buyimg.com/n1/s400x400_jfs/t1/100008/8/1/12352/12353.jpg',
app_list_pic_url = 'https://img10.360buyimg.com/n1/s200x200_jfs/t1/100008/8/1/12352/12354.jpg'
WHERE id = '1001007';

UPDATE mall_brand SET 
list_pic_url = 'https://img10.360buyimg.com/n1/s200x200_jfs/t1/100009/9/1/12353/12353.jpg',
pic_url = 'https://img10.360buyimg.com/n1/s400x400_jfs/t1/100009/9/1/12353/12354.jpg',
app_list_pic_url = 'https://img10.360buyimg.com/n1/s200x200_jfs/t1/100009/9/1/12353/12355.jpg'
WHERE id = '1001008';

UPDATE mall_brand SET 
list_pic_url = 'https://img10.360buyimg.com/n1/s200x200_jfs/t1/100010/10/1/12354/12354.jpg',
pic_url = 'https://img10.360buyimg.com/n1/s400x400_jfs/t1/100010/10/1/12354/12355.jpg',
app_list_pic_url = 'https://img10.360buyimg.com/n1/s200x200_jfs/t1/100010/10/1/12354/12356.jpg',
new_pic_url = 'https://img10.360buyimg.com/n1/s400x400_jfs/t1/100010/10/1/12354/12357.jpg'
WHERE id = '1001009';

-- ========================================================-- 第三部分：更新商品图片-- ========================================================

-- 感冒用药
UPDATE mall_goods SET 
primary_pic_url = 'https://img14.360buyimg.com/n1/jfs/t1/123456/1/1234/12345/1234567890123.jpg',
list_pic_url = 'https://img14.360buyimg.com/n1/jfs/t1/123456/1/1234/12345/1234567890124.jpg'
WHERE id = '1006002';

UPDATE mall_goods SET 
primary_pic_url = 'https://img14.360buyimg.com/n1/jfs/t1/234567/2/2345/23456/2345678901234.jpg',
list_pic_url = 'https://img14.360buyimg.com/n1/jfs/t1/234567/2/2345/23456/2345678901235.jpg'
WHERE id = '1006003';

UPDATE mall_goods SET 
primary_pic_url = 'https://img14.360buyimg.com/n1/jfs/t1/345678/3/3456/34567/3456789012345.jpg',
list_pic_url = 'https://img14.360buyimg.com/n1/jfs/t1/345678/3/3456/34567/3456789012346.jpg'
WHERE id = '1006004';

-- 肠胃用药
UPDATE mall_goods SET 
primary_pic_url = 'https://img14.360buyimg.com/n1/jfs/t1/456789/4/4567/45678/4567890123456.jpg',
list_pic_url = 'https://img14.360buyimg.com/n1/jfs/t1/456789/4/4567/45678/4567890123457.jpg'
WHERE id = '1006005';

UPDATE mall_goods SET 
primary_pic_url = 'https://img14.360buyimg.com/n1/jfs/t1/567890/5/5678/56789/5678901234567.jpg',
list_pic_url = 'https://img14.360buyimg.com/n1/jfs/t1/567890/5/5678/56789/5678901234568.jpg'
WHERE id = '1006006';

UPDATE mall_goods SET 
primary_pic_url = 'https://img14.360buyimg.com/n1/jfs/t1/678901/6/6789/67890/6789012345678.jpg',
list_pic_url = 'https://img14.360buyimg.com/n1/jfs/t1/678901/6/6789/67890/6789012345679.jpg'
WHERE id = '1006007';

-- 心脑血管
UPDATE mall_goods SET 
primary_pic_url = 'https://img14.360buyimg.com/n1/jfs/t1/789012/7/7890/78901/7890123456789.jpg',
list_pic_url = 'https://img14.360buyimg.com/n1/jfs/t1/789012/7/7890/78901/7890123456790.jpg'
WHERE id = '1006008';

UPDATE mall_goods SET 
primary_pic_url = 'https://img14.360buyimg.com/n1/jfs/t1/890123/8/8901/89012/8901234567890.jpg',
list_pic_url = 'https://img14.360buyimg.com/n1/jfs/t1/890123/8/8901/89012/8901234567891.jpg'
WHERE id = '1006009';

-- 皮肤用药
UPDATE mall_goods SET 
primary_pic_url = 'https://img14.360buyimg.com/n1/jfs/t1/901234/9/9012/90123/9012345678901.jpg',
list_pic_url = 'https://img14.360buyimg.com/n1/jfs/t1/901234/9/9012/90123/9012345678902.jpg'
WHERE id = '1006010';

UPDATE mall_goods SET 
primary_pic_url = 'https://img14.360buyimg.com/n1/jfs/t1/012345/0/0123/01234/0123456789012.jpg',
list_pic_url = 'https://img14.360buyimg.com/n1/jfs/t1/012345/0/0123/01234/0123456789013.jpg'
WHERE id = '1006011';

UPDATE mall_goods SET 
primary_pic_url = 'https://img14.360buyimg.com/n1/jfs/t1/123450/1/1230/12340/1234567890120.jpg',
list_pic_url = 'https://img14.360buyimg.com/n1/jfs/t1/123450/1/1230/12340/1234567890121.jpg'
WHERE id = '1006012';

-- 维生素钙
UPDATE mall_goods SET 
primary_pic_url = 'https://img14.360buyimg.com/n1/jfs/t1/234560/2/2340/23450/2345678901230.jpg',
list_pic_url = 'https://img14.360buyimg.com/n1/jfs/t1/234560/2/2340/23450/2345678901231.jpg'
WHERE id = '1006013';

-- ========================================================-- 使用说明-- ========================================================-- 1. 上面的URL是示例格式，需要替换为真实的京东/阿里健康图片URL-- 2. 获取真实图片URL的方法：--    a. 打开京东网站 https://www.jd.com--    b. 搜索对应的药品名称（如"999感冒灵"）--    c. 找到商品后，右键点击商品图片--    d. 选择"复制图片地址"--    e. 将复制的URL替换上面的示例URL-- 3. 建议先执行 update_to_medical.sql 导入数据-- 4. 然后执行此脚本更新图片URL-- 5. 如果某些图片无法显示，可以使用占位图服务：--    https://via.placeholder.com/400x400?text=药品名称
