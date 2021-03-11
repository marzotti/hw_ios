import UIKit
        //1
let a:Double = 1
let b:Double = 4
let c:Double = 1

var D = (b*b)-(4*a*c)

if D < 0 {
    print("Уравнение не имеет корней")
}
else if (D == 0) {
    let x1 = (-b + (sqrt(D))) / (2*a)
    print("x1 = \(x1)")
}
else if (D>0) {
    let x1 = (-b + (sqrt(D))) / (2*a)
    let x2 = (-b - (sqrt(D))) / (2*a)
    print("x1 = \(x1)")
    print("x2 = \(x2)")
}
        //2
let katet1:Double = 2
let katet2:Double = 3

let hypotenuza = sqrt(katet1*katet1 + katet2*katet2)
let square = (katet1 * katet2) / 2
let perimetr = katet1 + katet2 + hypotenuza

print("Гипотенуза = \(hypotenuza)")
print("Площадь = \(square)")
print("Периметр = \(perimetr)")
        //3
var deposit = 100
var percent = 5
var term_of_deposit = 5
var i = 0



for _ in 1...term_of_deposit {
    deposit = deposit * (100 + percent) / 100
    i+=1
    print("Сумма вклада через \(i) лет составит: \(deposit)")
}
