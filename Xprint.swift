//
//  Xprint.swift
//  MeetpalApp
//
//  Created by Mojtaba Mirzadeh on 7/6/1400 AP.
//  Copyright © 1400 AP cql. All rights reserved.
//

import Foundation

var xprintIndex = 0

enum XprintType: String {
    case error = "🚑"
    case warning = "⚠️"
    case info = "ℹ️"
    case debug = "🔨"
}

func xprint(_ items: Any..., type: XprintType = .debug, file: String = #fileID, line: Int = #line) {

    let fileUrl = URL(string: file)
    let filename = fileUrl?.lastPathComponent ?? ""
    let message = items.map { "\($0)" }.joined(separator: " ")

    print("---[\(type.rawValue) \(xprintIndex).𝙓𝙋𝙍𝙄𝙉𝙏 @ \(filename):\(line) \(type.rawValue)]---")
    for item in items {
        print(item)
    }
    print(String(repeating: "-", count: 66))
    xprintIndex += 1
}
