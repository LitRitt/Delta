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
        case .brown: return String(localized: "Brown (Up)")
        case .red: return String(localized: "Red (Up+A)")
        case .darkBrown: return String(localized: "Dark Brown (Up+B)")
        case .green: return String(localized: "Green (Right)")
        case .darkGreen: return String(localized: "Dark Green (Right+A)")
        case .reverse: return String(localized: "Reverse (Right+B)")
        case .paleYellow: return String(localized: "Pale Yellow (Down)")
        case .orange: return String(localized: "Orange (Down+A)")
        case .yellow: return String(localized: "Yellow (Down+B)")
        case .blue: return String(localized: "Blue (Left)")
        case .darkBlue: return String(localized: "Dark Blue (Left+A)")
        case .gray: return String(localized: "Gray (Left+B)")
        }
    }
}
