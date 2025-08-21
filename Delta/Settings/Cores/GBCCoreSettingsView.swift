//
//  GBCCoreSettings.swift
//  Delta
//
//  Created by Caroline Moore on 8/1/25.
//  Copyright © 2025 Riley Testut. All rights reserved.
//

import SwiftUI
import GBCDeltaCore

struct GBCCoreSettingsView: View
{
    @SwiftUI.State private var selectedColorPalette: GBCColorPalette?
    private let localizedTitle = String(localized: "Game Boy Color")
        
    var body: some View {
        Form {
            Section {
                Picker("Color Palette", selection: $selectedColorPalette) {
                    Text("Default").tag(Optional<GBCColorPalette>.none)
                    ForEach(GBCColorPalette.allCases, id: \.self) { palette in
                        Text(palette.localizedName).tag(palette)
                    }
                }
                .onChange(of: selectedColorPalette) { newPalette in
                    Settings.preferredGBColorPalette = newPalette
                }
            } header: {
                Text("Colors")
            }
        }
        .navigationTitle(localizedTitle)
        .onAppear() {
            selectedColorPalette = Settings.preferredGBColorPalette
        }
    }
    
    static func makeViewController() -> UIHostingController<some View>
    {
        let settingsView = GBCCoreSettingsView()
        
        let hostingController = UIHostingController(rootView: settingsView)
        hostingController.navigationItem.largeTitleDisplayMode = .never
        hostingController.navigationItem.title = settingsView.localizedTitle
        
        return hostingController
    }
}

#Preview {
    NavigationView {
        GBCCoreSettingsView()
    }
}
