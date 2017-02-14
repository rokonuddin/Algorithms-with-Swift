//: Playground - noun: a place where people can play

func insertionSort<T>(_ array: [T], inOrder isOrderedBefore: (T, T) -> Bool) -> [T] {
    var a = array
    for x in 1..<a.count {
        var y = x
        let temp = a[y]
        while y > 0 && isOrderedBefore(temp, a[y - 1]) {
            a[y] = a[y - 1]
            y -= 1
        }
        a[y] = temp
    }
    return a
}

let unsortedArray = [ 50, 23, -92, 100, 7, 12, 43, -3, 1, 3, -8, 19, 0, -5, 21 ]
insertionSort(unsortedArray, inOrder: <)
insertionSort(unsortedArray, inOrder: >)
