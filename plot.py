# Using readlines()
import matplotlib.pyplot as plt
import numpy as np
import math

# Open our file
file = open('Output.txt', 'r')
lines = file.readlines()

# Capture the output from fortran
x = []
y = []
for line in lines:
    row = line.strip().split()
    x.append(float(row[0]))
    y.append(float(row[1]))

# Create i to plot our actual function.
i = np.linspace(0,4,100)

plt.style.use('seaborn-v0_8-whitegrid')
plt.figure(figsize=(15,10))
plt.xlim((0, 4))
plt.ylim((-14, 8))

plt.xticks(np.arange(0, 4, 0.5))
plt.yticks(np.arange(-14, 8, 2))
# Plot the derivative
plt.plot(x, y, color='blue')

# Plot the original function

plt.plot(i, (np.cos(i) * (i**3 - 3*i**2)), color='black')
plt.title('Derivative using Central Difference')
plt.xlabel('X')
plt.ylabel('Y')
plt.savefig('display')