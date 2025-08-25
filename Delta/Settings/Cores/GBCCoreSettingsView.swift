//
//  GBCCoreSettingsView.swift
//  Delta
//
//  Created by Caroline Moore on 8/1/25.
//  Copyright © 2025 Riley Testut. All rights reserved.
//

import SwiftUI

struct GBCCoreSettingsView: CoreSettingsView
{
    var system: System { .gbc }
    @Environment(\.openURL) var openURL
    
    @SwiftUI.State private var selectedColorPalette: GBCColorPalette?
        
    var additionalSections: some View {
        Section {
            Picker("Color Palette", selection: $selectedColorPalette) {
                Label {
                    Text("Default")
                } icon: {
                    colorPreview(for: nil)
                }
                .tag(Optional<GBCColorPalette>.none)
                
                ForEach(GBCColorPalette.allCases, id: \.self) { palette in
                    Button {
                        selectedColorPalette = palette
                    } label: {
                        Label {
                            Text(palette.localizedName)
                        } icon: {
                            colorPreview(for: palette)
                        }
                        Text(palette.localizedDescription)
                    }
                    .tag(palette)
                }
            }
            .onChange(of: selectedColorPalette) { newPalette in
                Settings.preferredGBColorPalette = newPalette
            }
        } header: {
            Text("Colors")
        }
        .onAppear {
            selectedColorPalette = Settings.preferredGBColorPalette
        }
    }
}

extension GBCCoreSettingsView
{
    private func colorPreview(for palette: GBCColorPalette?) -> Image
    {
        Image(size: CGSize(width: 58, height: 22)) { ctx in
            // First preview color
            let ellipse1 = Path(ellipseIn: CGRect(origin: CGPoint(x: 1.5, y: 0.5), size: CGSize(width: 21, height: 21)))
            ctx.fill(
                ellipse1,
                with: .color(Color(uiColor: palette?.previewColors.0 ?? UIColor.white))
            )
            ctx.stroke(
                ellipse1,
                with: .color(Color(uiColor: .systemGray4)),
                lineWidth: 0.5
            )
            // Second preview color
            let ellipse2 = Path(ellipseIn: CGRect(origin: CGPoint(x: 26, y: 0.5), size: CGSize(width: 21, height: 21)))
            ctx.fill(
                ellipse2,
                with: .color(Color(uiColor: palette?.previewColors.1 ?? UIColor.black))
            )
            ctx.stroke(
                ellipse2,
                with: .color(Color(uiColor: .systemGray4)),
                lineWidth: 0.5
            )
        }
    }
}

#Preview {
    NavigationView {
        GBCCoreSettingsView()
    }
}
