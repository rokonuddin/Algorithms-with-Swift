//: Playground - noun: a place where people can play


func selectionSort<T>(unsortedArray array: [T], inOrder isOrderedBefore:(T, T) -> Bool) -> [T] {
    
    guard array.count > 1 else { return array }
    var a = array
    for x in 0 ..< a.count-1 {
        var lowest = x
        for y in x+1 ..< a.count {
            if isOrderedBefore(a[y], a[lowest]) {
                lowest = y
            }
        }

        if x != lowest {
            swap(&a[x], &a[lowest])
        }
    }
    
    return a
    
}

let unsortedArray = [ 50, 23, -92, 100, 7, 12, 43, -3, 1, 3, -8, 19, 0, -5, 21 ]
selectionSort(unsortedArray: unsortedArray, inOrder: >)
selectionSort(unsortedArray: unsortedArray, inOrder: <)