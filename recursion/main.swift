//
//  main.swift
//  recursion
//
//  Created by Dmitrii Dorogov on 18.12.2022.
//

import Foundation

func countdown(quantity: Int) -> () {
    print("\(quantity)...")
    if quantity <= 1 { // базовый случай
        return print("countdown is over\n")
    } else {
        countdown(quantity: quantity - 1) // рекурсивный случай
    }
}
countdown(quantity: 10)
