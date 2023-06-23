func mergeSort(_ array: [Int]) -> [Int] {
    guard array.count > 1 else {
        return array
    }
    
    let mid = array.count / 2
    let leftArray = mergeSort(Array(array[..<mid]))
    let rightArray = mergeSort(Array(array[mid...]))
    
    return merge(leftArray, rightArray)
}

func merge(_ leftArray: [Int], _ rightArray: [Int]) -> [Int] {
    var mergedArray: [Int] = []
    var leftIndex = 0
    var rightIndex = 0
    
    while leftIndex < leftArray.count && rightIndex < rightArray.count {
        if leftArray[leftIndex] < rightArray[rightIndex]{
            mergedArray.append(leftArray[leftIndex])
            leftIndex += 1
        } else {
            mergedArray.append(rightArray[rightIndex])
            rightIndex += 1
        }
    }
    
    if leftIndex < leftArray.count {
        mergedArray.append(contentsOf: leftArray[leftIndex...])
    }
    
    if rightIndex < rightArray.count {
        mergedArray.append(contentsOf: rightArray[rightIndex...])
    }
    
    return mergedArray
}

let array = [9, 5, 2, 7, 1, 8]
let sortedArray = mergeSort(array)
print(sortedArray) // Output: [1, 2, 5, 7, 8, 9]

