//
//  ContextModifier.swift
//  NC1-Lawn-SoMac
//
//  Created by Jun.Mac on 2022/05/03.
//

import SwiftUI

struct ContextModifier: ViewModifier {

    // ContextMenu Modifier...
    var card: Card
    
    func body(content: Content) -> some View {
        
        content
            .contextMenu(menuItems: {

                Text("By \(card.author)")
            })
            .contentShape(RoundedRectangle(cornerRadius: 5))
    }
}
