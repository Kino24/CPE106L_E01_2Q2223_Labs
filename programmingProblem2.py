file=input("Enter File Name: ")
fileName=file+'.txt'
fileStream=open(fileName,'r').readlines()
choice=0
print("The file has",len(file)," lines")
while(1):
    choice=int(input("Select line to read, Enter 0 to exit the program: "))
    if choice==0:
        break
    choice=choice-1
    print(fileStream[choice])

print("Thank you for using the program!")
input("Press Enter to Continue...")