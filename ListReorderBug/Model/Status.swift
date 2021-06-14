//
//  Status.swift
//  Questlog
//
//  Created by Jason Ji on 5/5/20.
//  Copyright © 2020 Jason Ji. All rights reserved.
//

import AppKit
import SwiftUI

enum Status: String, CaseIterable, Hashable, Codable {
    case active, waiting, idle, complete
}

extension Status {
    var title: String {
        switch self {
        case .active: return "Active"
        case .waiting: return "Waiting"
        case .idle: return "Idle"
        case .complete: return "Complete"
        }
    }
    
    var nsImage: NSImage? {
        switch self {
        case .active: return NSImage(named: NSImage.statusUnavailableName)
        case .waiting: return NSImage(named: NSImage.statusPartiallyAvailableName)
        case .idle: return NSImage(named: NSImage.statusNoneName)
        case .complete: return NSImage(named: NSImage.statusAvailableName)
        }
    }
    
    var color: Color {
        switch self {
        case .active: return Color(red: 231/255, green: 87/255, blue: 76/255)
        case .waiting: return Color(red: 255/255, green: 191/255, blue: 46/255)
        case .idle: return Color(red: 205/255, green: 205/255, blue: 205/255)
        case .complete: return Color(red: 102/255, green: 198/255, blue: 85/255)
        }
    }
    
    var image: Image? {
        guard let nsImage = nsImage else { return nil }
        return Image(nsImage: nsImage)
    }
    
    var rank: Int {
        switch self {
            case .active: return 3
            case .waiting: return 2
            case .idle: return 1
            case .complete: return 0
        }
    }
}
