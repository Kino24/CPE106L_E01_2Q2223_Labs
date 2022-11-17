file=input("Enter File Name: ")
fileStream=open(file,'r').readlines()
choice=0
print("The file has",len(fileStream)," lines")
while(1):
    print("The file has",len(fileStream)," lines")
    choice=int(input("Select line to read, Enter 0 to exit the program: "))
    if choice <= len(fileStream) and choice > -1:
        if choice == 0:
            break
        choice=choice-1
        print(fileStream[choice])
    else:
        print("The line does not exist! Please enter another line number")

print("Thank you for using the program!")
input("Press Enter to Continue...")
