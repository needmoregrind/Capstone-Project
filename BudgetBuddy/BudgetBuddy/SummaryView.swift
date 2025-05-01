//
//  SummaryView.swift
//  BudgetBuddy
//
//  Created by Aung Min Khant on 5/1/25.
//

import SwiftUI
import Charts

struct SummaryView: View {
    @ObservedObject var viewModel: TransactionViewModel

    var body: some View {
        let income = viewModel.totalIncome()
        let expense = viewModel.totalExpense()
        
        let chartData = [
            (label: "Income", value: income),
            (label: "Expense", value: expense)
        ]

        VStack {
            Text("Budget Summary").font(.title2).padding()

            Chart(chartData, id: \.label) { item in
                SectorMark(
                    angle: .value("Amount", item.value),
                    innerRadius: .ratio(0.5),
                    angularInset: 1.5
                )
                .foregroundStyle(by: .value("Category", item.label))
            }
            .frame(height: 250)

            Text("Balance: \((income - expense), specifier: "%.2f")")
                .font(.headline)
                .padding(.top)
        }
        .padding()
    }
}
