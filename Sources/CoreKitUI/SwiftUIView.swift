//
//  SwiftUIView.swift
//  CoreKitUI
//
//  Created by Franck Tchuisseu on 2025-07-28.
//

import SwiftUI


public struct H1: View {
    private let text: String
    private let color: Color
    private let alignment: TextAlignment
    
    public init(
        _ text: String,
        color: Color = .primary,
        alignment: TextAlignment = .leading
    ) {
        self.text = text
        self.color = color
        self.alignment = alignment
    }     
    
    public var body: some View {
        Text(text)
            .font(.system(size: 34, weight: .bold))
            .foregroundColor(color)
            .multilineTextAlignment(alignment)
            .padding(.vertical, 4)
    }
}

#Preview {
    VStack(spacing: 16) {
        H1("Default H1")
        H1("Centered Blue", color: .blue, alignment: .center)
        H1("Trailing Red", color: .red, alignment: .trailing)
    }
    .padding()
}

