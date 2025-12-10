import arithmetic
import geometry as geo

print("Hello World!")

a = int(input("Enter 1st number: "))
b = int(input("Enter 2nd Number: "))

arithmetic.add(a, b)
arithmetic.subtract(a, b)

len = int(input("Enter length :"))
br = int(input("Enter Breadth: "))


geo.calc_rect_area(len, br)
geo.calc_rect_peri(len, br)
