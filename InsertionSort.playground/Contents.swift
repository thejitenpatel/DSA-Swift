func insertionSort(_ array: inout [Int]) {
    guard array.count > 1 else {
        return
    }
    
    for i in 1..<array.count {
        let key = array[i] //Current element to be inserted
        var j = i - 1 // index of the last sorted element
        
        // compare and shift elements to right
        while j>=0 && array[j] > key {
            array[j+1] = array[j]
            j -= 1
        }
        
        // Insert the element into its correct position
        array[j+1] = key
    }
}

var array = [9, 5, 2, 7, 1, 8]
insertionSort(&array)
print(array) // Output: [1, 2, 5, 7, 8, 9]
