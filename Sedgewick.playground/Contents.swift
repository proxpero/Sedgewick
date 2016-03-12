import Sedgewick

let l: List = ["A", "B", "C"]

var stack: List = [1, 2, 3]
var test: List = List<Int>().cons(1).cons(2).cons(3)
//test.cons(1).cons(2).cons(3)

let x = test.pop()

print(test)

var a = stack
var b = stack

a.pop()         // 1
a.pop()         // 2
a.pop()         // 3

stack.pop()     // 1
stack.push(4)   // [4, 2, 3]

for i in stack {
    print(i)
}

b.pop() // 1
b.pop() // 2
b.pop() // 3

stack.pop() // 4
stack.pop() // 2
stack.pop() // 3


var vertices = Dictionary<Int, Set<Int>>()
let vs = vertices.map { $0.1.count }.reduce(0, combine: Swift.max)


//var maxDegree: Int {
//    
//    return vertices.indices.map { vertices[$0].count }.reduce(0, combine: Swift.max)
//    
//    //        for (k, v) in vertices {
//    //
//    //        }
//    
//    //        let max = vertices.reduce(0, combine: Swift.max )
//    //        let max = vertices.indices.map { vertices[$0].1.count }.reduce(0, combine: Swift.max )
//}






