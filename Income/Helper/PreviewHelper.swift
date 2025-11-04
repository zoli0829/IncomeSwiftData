//
//  PreviewHelper.swift
//  Income
//
//

import Foundation
import SwiftData

@MainActor
class PreviewHelper {
    
    static var previewContainer: ModelContainer {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        do {
            let container = try ModelContainer(for: TransactionModel.self, configurations: config)
            // dummy transaction
            let transaction = TransactionModel(id: UUID(), title: "Test title", type: .expense, amount: 5, date: Date())
            container.mainContext.insert(transaction)
            return container
        } catch {
            fatalError("Failed to create model container")
        }
    }
    
}
