import os
import subprocess


class Human:
    def __init__(self, name, age) -> None:
        self.name = name
        self.age = age

    def show_info(self) -> None:
        print(f"Name: {self.name}, Age: {self.age}")

tom = Human("Tom", 23)
tom.show_info()

if os.path.isfile("foo"):
    print(True)
else:
    print(False)


for i in range(10):
    print(i)


print(True or False)
print(not True)
print(True is None)
print('this')
