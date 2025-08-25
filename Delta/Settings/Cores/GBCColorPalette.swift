//
//  GBCColorPalette.swift
//  Delta
//
//  Created by Caroline Moore on 8/4/25.
//  Copyright © 2025 Riley Testut. All rights reserved.
//

import Foundation
import GBCDeltaCore

enum GBCColorPalette: String, CaseIterable
{
    case brown // Up
    case red // Up+A
    case darkBrown // Up+B
    case green // Right
    case darkGreen // Right+A
    case reverse // Right+B
    case paleYellow // Down
    case orange // Down+A
    case yellow // Down+B
    case blue // Left
    case darkBlue // Left+A
    case gray // Left+B
    
    var palettes: (GBCPalette, GBCPalette, GBCPalette) {
        switch self {
        case .brown:
            let palette = GBCPalette(color0: 0xFFFFFF, color1: 0xFFAD63, color2: 0x843100, color3: 0x000000)
            return (palette, palette, palette)

        case .red:
            let backgroundPalette = GBCPalette(color0: 0xFFFFFF, color1: 0xFF8484, color2: 0x943A3A, color3: 0x000000)
            let spritePalette = GBCPalette(color0: 0xFFFFFF, color1: 0x7BFF31, color2: 0x008400, color3: 0x000000)
            let foregroundPalette = GBCPalette(color0: 0xFFFFFF, color1: 0x63A5FF, color2: 0x0000FF, color3: 0x000000)
            return (backgroundPalette, spritePalette, foregroundPalette)

        case .darkBrown:
            let backgroundPalette = GBCPalette(color0: 0xFFE6C5, color1: 0xCE9C84, color2: 0x846B29, color3: 0x5A3108)
            let spritePalette = GBCPalette(color0: 0xFFFFFF, color1: 0xFFAD63, color2: 0x843100, color3: 0x000000)
            let foregroundPalette = GBCPalette(color0: 0xFFFFFF, color1: 0xFFAD63, color2: 0x843100, color3: 0x000000)
            return (backgroundPalette, spritePalette, foregroundPalette)

        case .blue:
            let backgroundPalette = GBCPalette(color0: 0xFFFFFF, color1: 0x63A5FF, color2: 0x0000FF, color3: 0x000000)
            let spritePalette = GBCPalette(color0: 0xFFFFFF, color1: 0xFF8484, color2: 0x943A3A, color3: 0x000000)
            let foregroundPalette = GBCPalette(color0: 0xFFFFFF, color1: 0x7BFF31, color2: 0x008400, color3: 0x000000)
            return (backgroundPalette, spritePalette, foregroundPalette)

        case .darkBlue:
            let backgroundPalette = GBCPalette(color0: 0xFFFFFF, color1: 0x8C8CDE, color2: 0x52528C, color3: 0x000000)
            let spritePalette = GBCPalette(color0: 0xFFFFFF, color1: 0xFF8484, color2: 0x943A3A, color3: 0x000000)
            let foregroundPalette = GBCPalette(color0: 0xFFFFFF, color1: 0xFFAD63, color2: 0x843100, color3: 0x000000)
            return (backgroundPalette, spritePalette, foregroundPalette)

        case .gray:
            let palette = GBCPalette(color0: 0xFFFFFF, color1: 0xA5A5A5, color2: 0x525252, color3: 0x000000)
            return (palette, palette, palette)

        case .paleYellow:
            let palette = GBCPalette(color0: 0xFFFFA5, color1: 0xFF9494, color2: 0x9494FF, color3: 0x000000)
            return (palette, palette, palette)

        case .orange:
            let palette = GBCPalette(color0: 0xFFFFFF, color1: 0xFFFF00, color2: 0xFF0000, color3: 0x000000)
            return (palette, palette, palette)

        case .yellow:
            let backgroundPalette = GBCPalette(color0: 0xFFFFFF, color1: 0xFFFF00, color2: 0x7B4A00, color3: 0x000000)
            let spritePalette = GBCPalette(color0: 0xFFFFFF, color1: 0x63A5FF, color2: 0x0000FF, color3: 0x000000)
            let foregroundPalette = GBCPalette(color0: 0xFFFFFF, color1: 0x7BFF31, color2: 0x008400, color3: 0x000000)
            return (backgroundPalette, spritePalette, foregroundPalette)

        case .green:
            let palette = GBCPalette(color0: 0xFFFFFF, color1: 0x52FF00, color2: 0xFF4200, color3: 0x000000)
            return (palette, palette, palette)

        case .darkGreen:
            let backgroundPalette = GBCPalette(color0: 0xFFFFFF, color1: 0x7BFF31, color2: 0x0063C5, color3: 0x000000)
            let spritePalette = GBCPalette(color0: 0xFFFFFF, color1: 0xFF8484, color2: 0x943A3A, color3: 0x000000)
            let foregroundPalette = GBCPalette(color0: 0xFFFFFF, color1: 0xFF8484, color2: 0x943A3A, color3: 0x000000)
            return (backgroundPalette, spritePalette, foregroundPalette)

        case .reverse:
            let palette = GBCPalette(color0: 0x000000, color1: 0x008484, color2: 0xFFDE00, color3: 0xFFFFFF)
            return (palette, palette, palette)
        }
    }
}

extension GBCColorPalette
{
    var localizedName: String
    {
        switch self
        {
        case .brown: return String(localized: "Brown")
        case .red: return String(localized: "Red")
        case .darkBrown: return String(localized: "Dark Brown")
        case .green: return String(localized: "Green")
        case .darkGreen: return String(localized: "Dark Green")
        case .reverse: return String(localized: "Reverse")
        case .paleYellow: return String(localized: "Pale Yellow")
        case .orange: return String(localized: "Orange")
        case .yellow: return String(localized: "Yellow")
        case .blue: return String(localized: "Blue")
        case .darkBlue: return String(localized: "Dark Blue")
        case .gray: return String(localized: "Gray")
        }
    }
    
    var localizedDescription: String
    {
        switch self
        {
        case .brown: return String(localized: "Up")
        case .red: return String(localized: "Up+A")
        case .darkBrown: return String(localized: "Up+B")
        case .green: return String(localized: "Right")
        case .darkGreen: return String(localized: "Right+A")
        case .reverse: return String(localized: "Right+B")
        case .paleYellow: return String(localized: "Down")
        case .orange: return String(localized: "Down+A")
        case .yellow: return String(localized: "Down+B")
        case .blue: return String(localized: "Left")
        case .darkBlue: return String(localized: "Left+A")
        case .gray: return String(localized: "Left+B")
        }
    }
    
    var previewColors: (UIColor, UIColor)
    {
        switch self
        {
        case .brown:
            let color0 = UIColor(hexString: "FFAD63")! // Tan
            let color1 = UIColor(hexString: "843100")! // Chocolate
            return (color0, color1)
        case .red:
            let color0 = UIColor(hexString: "FF8484")! // Pink
            let color1 = UIColor(hexString: "943A3A")! // Maroon
            return (color0, color1)
        case .darkBrown:
            let color0 = UIColor(hexString: "A58452")! // Camel
            let color1 = UIColor(hexString: "6B5231")! // Coffee
            return (color0, color1)
        case .green:
            let color0 = UIColor(hexString: "52FF00")! // Lime
            let color1 = UIColor(hexString: "FF4200")! // Orange
            return (color0, color1)
        case .darkGreen:
            let color0 = UIColor(hexString: "7BFF31")! // Lime
            let color1 = UIColor(hexString: "0063C5")! // Blue
            return (color0, color1)
        case .reverse:
            let color0 = UIColor(hexString: "000000")! // Black
            let color1 = UIColor(hexString: "FFDE00")! // Yellow
            return (color0, color1)
        case .paleYellow:
            let color0 = UIColor(hexString: "FFFFA5")! // Cream
            let color1 = UIColor(hexString: "FF9494")! // Pink
            return (color0, color1)
        case .orange:
            let color0 = UIColor(hexString: "FFFF00")! // Yellow
            let color1 = UIColor(hexString: "FF0000")! // Red
            return (color0, color1)
        case .yellow:
            let color0 = UIColor(hexString: "FFFF00")! // Yellow
            let color1 = UIColor(hexString: "3A2900")! // Brown
            return (color0, color1)
        case .blue:
            let color0 = UIColor(hexString: "63A5FF")! // Sky
            let color1 = UIColor(hexString: "0000FF")! // Blue
            return (color0, color1)
        case .darkBlue:
            let color0 = UIColor(hexString: "8C8CDE")! // Lavender
            let color1 = UIColor(hexString: "52528C")! // Indigo
            return (color0, color1)
        case .gray:
            let color0 = UIColor(hexString: "949494")! // Gray
            let color1 = UIColor(hexString: "000000")! // Black
            return (color0, color1)
        }
    }
}
