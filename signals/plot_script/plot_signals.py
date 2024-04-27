import os
import matplotlib.pyplot as plt
import csv

from pathlib import Path

p = list(sorted(Path(os.getcwd()).parent.glob('*.txt')))
n = len(p)
fig, axs = plt.subplots(n)
print(p)
for index, filename in enumerate(p):
    t = []
    x = []
    with open(filename, 'r') as datafile:
        plotting = csv.reader(datafile, delimiter=',')
        next(plotting, None)
        for row in plotting:
            t.append(int(row[0]))
            x.append(int(row[1]))
        
        
        for i in range(1, len(x)):
            if x[i] * x[i-1] < 0:
                loc = ((t[i-1] * x[i]) - (t[i] * x[i-1])) / (x[i] - x[i-1])
                t.append(loc)
                x.append(0)

        print(t)
        print(x)
        # print(zeros)

        t1 = [t0 for t0, _ in sorted(zip(t, x))]
        x1 = [x0 for _, x0 in sorted(zip(t, x))]
        for i in range(1, len(x1)):
            if x1[i] > 0:
                x1[i] = 1
            elif x1[i] < 0:
                x1[i] = -1
        
        print(t1)
        print(x1)

        # print(filename.name)
        axs[index].plot(t1, x1)
        axs[index].set_title(filename.name)
        axs[index].axhline(0, color='black')
        axs[index].get_xaxis().set_visible(False)
        axs[index].get_yaxis().set_visible(False)
        for t0, x0 in zip(t1, x1):
            if x0 == 0:
                axs[index].annotate('%s' % t0, xy=(t0, x0), textcoords='data')

plt.tight_layout()
plt.show()

