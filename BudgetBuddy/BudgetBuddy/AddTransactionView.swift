//
//  AddTransactionView.swift
//  BudgetBuddy
//
//  Created by Aung Min Khant on 4/30/25.
//

import SwiftUI

struct AddTransactionView: View {
    @ObservedObject var viewModel: TransactionViewModel
    
    @State private var title = ""
    @State private var amount = ""
    @State private var type: TransactionType = .expense
    @State private var category = ""
    @State private var showAlert = false

    var body: some View {
        Form {
            TextField("Title", text: $title)
            TextField("Amount", text: $amount)
                .keyboardType(.decimalPad)
            
            Picker("Type", selection: $type) {
                Text("Income").tag(TransactionType.income)
                Text("Expense").tag(TransactionType.expense)
            }

            TextField("Category", text: $category)

            Button("Save") {
                viewModel.addTransaction(
                    title: title,
                    amount: Double(amount) ?? 0,
                    category: category,
                    type: type
                )
                // Reset fields
                title = ""
                amount = ""
                category = ""
                type = .expense
                showAlert = true
            }
            .alert("Transaction Saved!", isPresented: $showAlert) {
                Button("OK", role: .cancel) { }
            }
        }
        .navigationTitle("Add Transaction")
    }
}

