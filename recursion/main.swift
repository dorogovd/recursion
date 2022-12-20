//
//  main.swift
//  recursion
//
//  Created by Dmitrii Dorogov on 18.12.2022.
//

import Foundation


func countdown(quantity: Int) -> () { // Базовый случай и рекурсивный случай. Пример кода, стр.64
    print("\(quantity)...")
    if quantity <= 1 { // базовый случай
        return print("countdown is over\n")
    } else {
        countdown(quantity: quantity - 1) // рекурсивный случай
    }
}
countdown(quantity: 10)


func greet() { // Стек вызовов. Пример кода, стр.66
    print("Hello, \(name)!")
    greet2()
    print("getting ready to say bye...")
}
func greet2() {
    print("how are you, \(name)?")
}
func bye() {
    print("ok bye!")
}
var name = "Maggie"
greet()


// Стек вызовов с рекурсией. Пример кода, стр.69
func fact(x: Int) -> Int {
    if x == 1 {
        return 1
    } else {
        return x * fact(x: x - 1)
    }
}
print("\n\(fact(x: 3))\n")

// Шпаргалка:
// - рекурсия - это когда функция вызывает саму себя
// - в каждой рекурсивной функции должно быть два случая: базовый и рекурсивный
// - стек поддерживает две операции: занесение и извлечение элементов
// - все вызовы функций сохраняются в стеке функций
// - если стек вызовов станет очень большим, он займет слишком много памяти
