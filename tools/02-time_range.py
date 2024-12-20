#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
@author: zhang.yan
@date: 2024-12-17 
"""

import datetime

startStr = '2024/12/20 06:57:06.645'
endStr = '2024/12/20 06:57:17.253'

time_format = '%Y/%m/%d %H:%M:%S.%f'
start = datetime.datetime.strptime(startStr, time_format)
end = datetime.datetime.strptime(endStr, time_format)

# 计算两个时间的差
time_difference = end - start

hours, remainder = divmod(time_difference.seconds, 3600)
minutes, seconds = divmod(remainder, 60)
milliseconds = time_difference.microseconds // 1000  # 将微秒转换为毫秒

print(f"{hours}h:{minutes}m:{seconds}s.{milliseconds:03d}")