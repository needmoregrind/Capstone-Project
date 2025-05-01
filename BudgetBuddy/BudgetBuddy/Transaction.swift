//
//  Transaction.swift
//  BudgetBuddy
//
//  Created by Aung Min Khant on 4/24/25.
//

import Foundation

enum TransactionType: String, Codable {
    case income, expense
}

struct Transaction: Identifiable, Codable {
    let id: UUID
    let title: String
    let amount: Double
    let type: TransactionType
    let category: String
    let date: Date
}
