import matplotlib.pyplot as plt
import numpy as np

filename = "project.bin"

with open(filename, "rb") as datafile:
    data = datafile.read()

#data = data.split('\n')
decimal = np.array([x for x in data]).reshape(320, 240)
decimal = np.transpose(decimal)

plt.imshow(decimal, cmap='gray')
plt.show()
