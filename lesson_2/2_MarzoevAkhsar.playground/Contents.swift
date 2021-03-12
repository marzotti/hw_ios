import UIKit
        //1. функция четного числа
func Even(a: Int) -> Bool {
    return a % 2 == 0
}
        //2. функция деление на 3
func devisibleByThree(b: Int) -> Bool {
    return b % 3 == 0
    }
        //3. массив из 100 чисел
var array = [Int] ()
for value in 0...99 {
    array.append(value)
}
/*print(array)*/
        //4. удалить из массива четные и не делящиеся на 3 числа
var i = 0
while i < array.count {
    if array[i] % 2 == 0 || array[i] % 3 != 0 {
    array.remove(at: i)
        i -= 1 //я не понимаю для чего эта строчка, подсмотрел ее в решении :(
    }
    i += 1
}
print(array)
        //5. массив из чисел фибоначчи
func fibonacci(count: Int) -> [Int] {
    var fArray = [0,1]
    for index in 2...count {
        fArray.append(fArray[index - 1] + fArray[index - 2])
    }
    return fArray
}
print(fibonacci(count: 50))
        //6.я слишком глуп чтобы посчитать простые числа. Но после просмотра объяснения все стало понятно)
