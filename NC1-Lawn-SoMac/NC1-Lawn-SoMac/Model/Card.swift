//
//  Card.swift
//  NC1-Lawn-SoMac
//
//  Created by Jun.Mac on 2022/05/03.
//

import SwiftUI

struct Card: Identifiable,Decodable,Hashable {

    var id: String
    var download_url: String
    var author: String
}

