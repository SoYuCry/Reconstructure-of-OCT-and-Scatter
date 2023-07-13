# 在0-255的3D范围随机生成散射点
import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
from PIL import Image

# 定义散点的数量
num_points = 1000
SUP = 127
INF = 129
MID = (SUP + INF) /2

# 在0-255的范围内生成随机的x，y，z坐标
x = np.random.randint(0, 256, num_points)
y = np.random.randint(0, 256, num_points)
z = np.random.randint(0, 256, num_points)

# 生成随机的灰度值
colors = np.random.rand(num_points)

# 选择z在127-129之间的点
indicaes = (SUP <= y) & (y <= INF)
x_slice = x[indicaes]
z_slice = z[indicaes]
y_slice = np.full(len(z_slice), MID)
colors_slice = colors[indicaes]


################################# 保存2D截面散点图 ##############################
# 创建一个256x256的全0矩阵
image = np.zeros((256, 256))

# 根据散点的坐标和强度来修改矩阵的值
for i in range(len(x_slice)):
    image[int(x_slice[i]), int(z_slice[i])] = colors_slice[i]

# 转换为8位深度并保存图像
image_8bit = np.uint8(image * 255)  # 把0-1的浮点数转换为0-255的整数
Image.fromarray(image_8bit).save('slice_plot.png')


pass