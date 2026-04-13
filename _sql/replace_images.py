# -*- coding: utf-8 -*-
import re

# 读取SQL文件
with open('update_to_medical.sql', 'r', encoding='utf-8') as f:
    content = f.read()

# 统计原始占位URL数量
original_count = content.count('img.alicdn.com/imgextra')
print(f'发现 {original_count} 个占位图片URL需要替换')

# 使用正则表达式替换所有阿里云的占位URL为picsum.photos的真实图片
# 匹配模式: https://img.alicdn.com/imgextra/i[数字]/O1CN01xXXXXX/[尺寸].jpg

def replace_url(match):
    full_url = match.group(0)
    # 提取尺寸信息
    size_match = re.search(r'(\d+)x(\d+)', full_url)
    if size_match:
        width = size_match.group(1)
        height = size_match.group(2)
        # 生成随机数 (100-999)
        import random
        random_num = random.randint(100, 999)
        return f'https://picsum.photos/{width}/{height}?random={random_num}'
    return full_url

# 执行替换
content = re.sub(r'https://img\.alicdn\.com/imgextra/i\d+/O1CN01xXXXXX/\d+x\d+\.jpg', replace_url, content)

# 统计替换后的数量
new_count = content.count('picsum.photos')
print(f'替换完成！共替换为 {new_count} 个picsum.photos真实图片URL')

# 保存文件
with open('update_to_medical.sql', 'w', encoding='utf-8') as f:
    f.write(content)

print('✅ SQL文件已更新保存！')
