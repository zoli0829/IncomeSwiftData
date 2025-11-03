//
//  IncomeApp.swift
//  Income
//
//

import SwiftUI
import SwiftData

@main
struct IncomeApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .modelContainer(for: [
                    TransactionModel.self
                ])
        }
    }
}
