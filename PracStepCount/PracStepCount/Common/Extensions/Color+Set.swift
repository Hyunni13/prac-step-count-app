//
//  Color+Set.swift
//  PracStepCount
//
//  Created by James on 12/5/24.
//

import SwiftUI

extension Color {
    
    /// 헥스 코드로 Color 생성하기
    ///
    /// - Parameter hexCode:  "#"을 제외한 6자리 헥스 코드
    init(hexCode: String) {
        var code = hexCode.trimmingCharacters(in: .whitespaces).uppercased()
        if code.hasPrefix("#") {
            code.remove(at: code.startIndex)
        }
        
        var rgb: UInt64 = 0
        Scanner(string: code).scanHexInt64(&rgb)
        
        let red = Double((rgb & 0xFF0000) >> 16) / 255
        let green = Double((rgb & 0x00FF00) >> 8) / 255
        let blue = Double(rgb & 0x0000FF) / 255
        
        self.init(red: red, green: green, blue: blue)
    }
    
    static var white: Color {
        return Color(hexCode: "FFFFFF")
    }
    
    static var lightGray: Color {
        return Color(hexCode: "F2F5FF")
    }
    
    static var gray: Color {
        return Color(hexCode: "6A6E83")
    }
    
    static var black: Color {
        return Color(hexCode: "1F1F1F")
    }

    static var primary: Color {
        return Color(hexCode: "5A81FA")
    }
    
    static var secondary: Color {
        return Color(hexCode: "2C3D8F")
    }
    
}
