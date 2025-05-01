//
//  MainTabView.swift
//  BudgetBuddy
//
//  Created by Aung Min Khant on 4/30/25.
//

import SwiftUI

struct MainTabView: View {
    @StateObject var viewModel = TransactionViewModel()

    var body: some View {
        TabView {
            DashboardView(viewModel: viewModel)
                .tabItem { Label("Dashboard", systemImage: "house") }

            TransactionListView(viewModel: viewModel)
                .tabItem { Label("Transactions", systemImage: "list.bullet") }

            AddTransactionView(viewModel: viewModel)
                .tabItem { Label("Add", systemImage: "plus") }
            
            SummaryView(viewModel: viewModel)
                .tabItem { Label("Summary", systemImage: "chart.pie") }
        }
    }
}
