//
//  TransactionListView.swift
//  BudgetBuddy
//
//  Created by Aung Min Khant on 4/30/25.
//

import SwiftUI

struct TransactionListView: View {
    @ObservedObject var viewModel: TransactionViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.transactions) { txn in
                VStack(alignment: .leading) {
                    Text(txn.title)
                    Text("\(txn.amount, specifier: "%.2f") - \(txn.type.rawValue.capitalized)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            .onDelete(perform: deleteTransaction)
        }
    }
    
    func deleteTransaction(at offsets: IndexSet) {
        viewModel.transactions.remove(atOffsets: offsets)
    }
}

