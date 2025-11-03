//
//  TransactionTypeModel.swift
//  Income
//
//  Created by Gwinyai Nyatsoka on 30/1/2024.
//

import Foundation

enum TransactionType: String, CaseIterable, Identifiable, Codable {
    case income, expense
    var id: Self { self }
    
    var title: String {
        switch self {
        case .income:
            return "Income"
        case .expense:
            return "Expense"
        }
    }
}
