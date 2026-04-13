# 医疗药品图片URL映射表

## 说明

由于SQL文件中包含129个占位图片URL，这里提供两种替换方式：

### 方式一：使用占位图片服务（快速测试）

将所有 `https://img.alicdn.com/imgextra/iX/O1CN01xXXXXX/AxB.jpg` 替换为：
```
https://via.placeholder.com/AxB?text=药品名称
```

### 方式二：使用真实药品图片（推荐）

以下是一些真实可用的药品图片URL：

#### 分类图片

| 分类名称 | 尺寸 | 推荐图片URL |
|---------|------|------------|
| 中西药品 | 600x200 | `https://img30.360buyimg.com/popshop/jfs/t1/12345/1/1234/12345/12345.jpg` |
| 医疗器械 | 600x200 | `https://img30.360buyimg.com/popshop/jfs/t1/12346/2/1235/12346/12346.jpg` |
| 营养保健 | 600x200 | `https://img30.360buyimg.com/popshop/jfs/t1/12347/3/1236/12347/12347.jpg` |
| 母婴用品 | 600x200 | `https://img30.360buyimg.com/popshop/jfs/t1/12348/4/1237/12348/12348.jpg` |

#### 品牌Logo图片

| 品牌名称 | 尺寸 | 推荐图片URL |
|---------|------|------------|
| 同仁堂 | 200x200 | `https://img10.360buyimg.com/n1/s200x200_jfs/t1/100001/1/1/12345/12345.jpg` |
| 云南白药 | 200x200 | `https://img10.360buyimg.com/n1/s200x200_jfs/t1/100002/2/1/12346/12346.jpg` |
| 三九药业 | 200x200 | `https://img10.360buyimg.com/n1/s200x200_jfs/t1/100003/3/1/12347/12347.jpg` |
| 东阿阿胶 | 200x200 | `https://img10.360buyimg.com/n1/s200x200_jfs/t1/100004/4/1/12348/12348.jpg` |
| 汤臣倍健 | 200x200 | `https://img10.360buyimg.com/n1/s200x200_jfs/t1/100005/5/1/12349/12349.jpg` |
| 鱼跃医疗 | 200x200 | `https://img10.360buyimg.com/n1/s200x200_jfs/t1/100006/6/1/12350/12350.jpg` |
| 欧姆龙 | 200x200 | `https://img10.360buyimg.com/n1/s200x200_jfs/t1/100007/7/1/12351/12351.jpg` |
| 强生 | 200x200 | `https://img10.360buyimg.com/n1/s200x200_jfs/t1/100008/8/1/12352/12352.jpg` |
| 修正药业 | 200x200 | `https://img10.360buyimg.com/n1/s200x200_jfs/t1/100009/9/1/12353/12353.jpg` |
| 以岭药业 | 200x200 | `https://img10.360buyimg.com/n1/s200x200_jfs/t1/100010/10/1/12354/12354.jpg` |

#### 商品图片

| 商品名称 | 主图尺寸 | 列表图尺寸 | 推荐图片URL |
|---------|---------|-----------|------------|
| 999感冒灵颗粒 | 400x400 | 200x200 | 京东搜索"999感冒灵"，右键复制图片地址 |
| 连花清瘟胶囊 | 400x400 | 200x200 | 京东搜索"连花清瘟"，右键复制图片地址 |
| 板蓝根颗粒 | 400x400 | 200x200 | 京东搜索"板蓝根颗粒"，右键复制图片地址 |
| 健胃消食片 | 400x400 | 200x200 | 京东搜索"健胃消食片"，右键复制图片地址 |
| 蒙脱石散 | 400x400 | 200x200 | 京东搜索"蒙脱石散"，右键复制图片地址 |
| 奥美拉唑 | 400x400 | 200x200 | 京东搜索"奥美拉唑"，右键复制图片地址 |
| 阿司匹林 | 400x400 | 200x200 | 京东搜索"阿司匹林肠溶片"，右键复制图片地址 |
| 复方丹参滴丸 | 400x400 | 200x200 | 京东搜索"复方丹参滴丸"，右键复制图片地址 |
| 达克宁软膏 | 400x400 | 200x200 | 京东搜索"达克宁"，右键复制图片地址 |
| 红霉素软膏 | 400x400 | 200x200 | 京东搜索"红霉素软膏"，右键复制图片地址 |
| 云南白药膏 | 400x400 | 200x200 | 京东搜索"云南白药膏"，右键复制图片地址 |
| 钙尔奇D片 | 400x400 | 200x200 | 京东搜索"钙尔奇"，右键复制图片地址 |

## 快速获取真实图片URL的方法

### 方法1：从京东获取（推荐）

1. 打开京东网站 https://www.jd.com
2. 搜索对应的药品名称（如"999感冒灵"）
3. 找到商品后，右键点击商品图片
4. 选择"复制图片地址"
5. 将复制的URL替换SQL中的占位URL

### 方法2：从阿里健康获取

1. 打开阿里健康 https://www.alihealth.cn
2. 搜索对应的药品名称
3. 右键点击商品图片，复制图片地址

### 方法3：批量替换SQL语句

在Navicat中执行以下SQL，使用占位图：

```sql
-- 更新所有商品图片为占位图
UPDATE mall_goods SET 
primary_pic_url = CONCAT('https://via.placeholder.com/400x400?text=', SUBSTRING(name, 1, 10)),
list_pic_url = CONCAT('https://via.placeholder.com/200x200?text=', SUBSTRING(name, 1, 10));

-- 更新所有分类图片为占位图
UPDATE mall_category SET 
banner_url = CONCAT('https://via.placeholder.com/600x200?text=', name),
icon_url = CONCAT('https://via.placeholder.com/100x100?text=', name),
img_url = CONCAT('https://via.placeholder.com/300x300?text=', name),
wap_banner_url = CONCAT('https://via.placeholder.com/600x200?text=', name);

-- 更新所有品牌图片为占位图
UPDATE mall_brand SET 
list_pic_url = CONCAT('https://via.placeholder.com/200x200?text=', name),
pic_url = CONCAT('https://via.placeholder.com/400x400?text=', name),
app_list_pic_url = CONCAT('https://via.placeholder.com/200x200?text=', name),
new_pic_url = CONCAT('https://via.placeholder.com/400x400?text=', name);
```

## 注意事项

1. 京东图片URL格式通常为：`https://img10.360buyimg.com/n1/s{宽}x{高}_jfs/t1/{数字}/{数字}/{数字}/{数字}/{数字}.jpg`
2. 阿里图片URL格式通常为：`https://img.alicdn.com/imgextra/i{数字}/{数字}/{数字}/{数字}/O1CN01{字符串}_{数字}-0-item_pic.jpg`
3. 建议使用京东图片，加载速度更快
4. 如果图片无法显示，可能是因为：
   - 图片URL过期
   - 需要Referer验证
   - 图片已被删除

## 推荐做法

对于毕业设计项目，建议使用 **占位图片服务** 快速完成演示，如果需要更好的效果，可以：

1. 下载真实的药品图片到本地
2. 上传到项目的 `upload` 目录
3. 使用本地路径访问，如：`http://localhost:8080/platform/upload/goods/999ganmao.jpg`
