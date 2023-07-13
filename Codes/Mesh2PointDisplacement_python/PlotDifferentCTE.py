import matplotlib.pyplot as plt

timeline = []
for i in range(0, 55+1):
    timeline.append(i)
Origin_txt = 'Origin.txt'
Origin_0005_txt = 'Origin_0.0005_txt.txt'
Origin_00005_txt = 'Origin_0.00005_txt.txt'
Origin_00005_txt = 'Origin_0.000005_txt.txt'

def extractPlot(txtfile):
    temp = []
    with open(txtfile,'r') as f:
        lines = f.readlines()
    # content = f.read()
    # print(content)
        ToPlot = lines[0].split()
        for i in ToPlot:
            temp.append(float(i))
    return temp

Origin_tobeplot = extractPlot(Origin_txt)
Origin_0005_tobeplot = extractPlot(Origin_0005_txt)
Origin_00005_tobeplot = extractPlot(Origin_00005_txt)
Origin_000005_tobeplot = extractPlot(Origin_00005_txt)


plt.plot(timeline,Origin_tobeplot,'s-',color = 'r',markersize = 3,label="CTE=0.005")#s-:方形
plt.plot(timeline,Origin_0005_tobeplot,'o-',color = 'g',markersize = 3,label="CTE=0.0005")#s-:方形
plt.plot(timeline,Origin_00005_tobeplot,'s-',color = 'b',markersize = 3,label="CTE=0.00005")#s-:方形
# plt.plot(timeline,Origin_000005_tobeplot,'s-',color = 'r',markersize = 3,label="CTE=0.000005")#s-:方形
# plt.plot(x,k2,'o-',color = 'g',label="CNN-RLSTM")#o-:圆形
plt.xlabel("Time")#横坐标名字
plt.ylabel("Displacement")#纵坐标名字
plt.legend(loc = "best")#图例
plt.ylim((0, 0.4))
plt.show()
pass