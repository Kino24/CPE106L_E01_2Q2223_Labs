"""
function is used for finding the mode
"""
def getMode(arr, length):
    arr.sort()
    arrNum=[None]*length
    currentNum=arr[0]
    count=0
    for i in arr:
        if (currentNum==i):
           arrNum[count]=currentNum
        else:
            currentNum=i
            count=count+1
            arrNum[count]=currentNum
    arrCount=[0]*length
    currentNum=arrNum[0]
    count=0
    for i in arr:
        if (currentNum==i):
           arrCount[count]+=1
        else:
            currentNum=i
            count=count+1
            arrCount[count]+=1
    currentNum=0
    index=0
    for i in range(length):
        if arrCount[i] > currentNum and arrCount[i]!=None:
            currentNum=arrCount[i]
            index=i
    return arrNum[index]


"""
This function is used for finding the median
"""
def getMedian(arr, len):
    arr.sort()
    count=len/2
    match len%2:
        case 0:
            return (float(arr[(int(count)-1)]+arr[int(count)])/2)
        case _:
            return (arr[int(count)])

arr=[1,2,9,2,2]
arr2=[1,5,4,6,5,7,9,8]
print("Median for Array 1: ", getMedian(arr,len(arr)))
print("Median for Array 2: ", getMedian(arr2,len(arr2)))
print("Mode for Array 1: ", getMode(arr,len(arr)))
print("Mode for Array 2: ", getMode(arr2,len(arr2)))
input("Press Enter to continue...")