//
//  TransactionViewModel.swift
//  BudgetBuddy
//
//  Created by Aung Min Khant on 4/24/25.
//

import Foundation

class TransactionViewModel: ObservableObject {
    @Published var transactions: [Transaction] = [] {
        didSet {
            saveTransactions()
        }
    }
    private let transactionsKey = "transactions_key"
    
    init() {
        loadTransactions()
    }
    
    func addTransaction(title: String, amount: Double, category: String, type: TransactionType) {
        let new = Transaction(id: UUID(), title: title, amount: amount, type: type, category: category, date: Date())
        transactions.append(new)
    }
    
    func totalIncome() -> Double {
        transactions.filter { $0.type == .income }.map(\.amount).reduce(0, +)
    }
    
    func totalExpense() -> Double {
        transactions.filter { $0.type == .expense }.map(\.amount).reduce(0, +)
    }
    
    private func saveTransactions() {
        if let data = try? JSONEncoder().encode(transactions) {
            UserDefaults.standard.set(data, forKey: transactionsKey)
        }
    }

    private func loadTransactions() {
        if let data = UserDefaults.standard.data(forKey: transactionsKey),
           let saved = try? JSONDecoder().decode([Transaction].self, from: data) {
            transactions = saved
        }
    }

}
