favoritecolor = ["white", "black", "green", "blue", "grey"]
print(favoritecolor)

list2 = list(range(30,61,3))
print(list2)

mydict = {"Sunny": "play", "Rainy": "watching TV", "Cloudy": "walk"}
print(mydict)
mydict.update({"snowy": "ski"})
print(mydict)

score = 80
if score >= 90:
    print('grade is A')
elif score >= 80:
    print('grade is B')
elif score >= 70:
    print('grade is c')
else:
    print('grade is F')