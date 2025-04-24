//
//  Transaction.swift
//  BudgetBuddy
//
//  Created by Aung Min Khant on 4/24/25.
//

import Foundation

struct Transaction: Identifiable, Codable {
    let id: UUID
    var title: String
    var amount: Double
    var type: TransactionType
    var category: String
    var date: Date
}

enum TransactionType: String, Codable, CaseIterable {
    case income, expense
}
