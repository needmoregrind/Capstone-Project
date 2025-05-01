//
//  DashboardView.swift
//  BudgetBuddy
//
//  Created by Aung Min Khant on 4/30/25.
//

import SwiftUI

struct DashboardView: View {
    @ObservedObject var viewModel: TransactionViewModel

    var body: some View {
        VStack(spacing: 24) {
            Text("Budget Overview")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top)

            VStack(spacing: 12) {
                HStack {
                    Text("Income")
                    Spacer()
                    Text("\(viewModel.totalIncome(), specifier: "%.2f")")
                        .foregroundColor(.green)
                }

                HStack {
                    Text("Expense")
                    Spacer()
                    Text("\(viewModel.totalExpense(), specifier: "%.2f")")
                        .foregroundColor(.red)
                }

                Divider()

                HStack {
                    Text("Balance")
                        .fontWeight(.semibold)
                    Spacer()
                    Text("\((viewModel.totalIncome() - viewModel.totalExpense()), specifier: "%.2f")")
                        .fontWeight(.semibold)
                        .foregroundColor((viewModel.totalIncome() - viewModel.totalExpense()) >= 0 ? .green : .red)
                }
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 16).fill(Color(UIColor.secondarySystemBackground)))
            .shadow(radius: 2)

            Spacer()
        }
        .padding()
    }
}
