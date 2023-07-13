# import matplotlib.pyplot as plt
# import numpy as np

# # 这里决定了散射体的范围和密度
# XRANGE = 30
# XSTEP = 5
# YRANGE = 30
# YSTEP = 5
# ZRANGE = 30
# ZSTEP = 5

# x,y,z = [[],[],[]]
# points = []
# k,j,i = [0]*3
# while k < XRANGE:
#     while j < YRANGE:
#         while i < ZRANGE:
#             x.append(k)
#             y.append(j)
#             z.append(i)
#             points.append([k,j,i])
#             i = i + ZSTEP
#         j = j + YSTEP
#         i = 0
#     k = k + XSTEP
#     j = 0

# fig = plt.figure()
# ax = fig.add_subplot(111,projection = '3d')
# ax.scatter(x, y, z, s=1)
# plt.show()
# pass

XRANGE = 3
XSTEP = 1 
YRANGE = 3
YSTEP = 1
ZRANGE = 3
ZSTEP = 1

def Creat_Scatter():
    points = []
    k,j,i = [0]*3
    while k < XRANGE:
        while j < YRANGE:
            while i < ZRANGE:
                points.append([k,j,i])
                i = i + ZSTEP
            j = j + YSTEP
            i = 0
        k = k + XSTEP
        j = 0
    return points
points = Creat_Scatter()

pass