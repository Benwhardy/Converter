//
//  UIControls.swift
//  Converter
//
//  Created by Ben Hardy on 10/26/23.
//


// UIApplicationExtensions.swift

import SwiftUI
import UIKit

extension UIApplication {
    func endEditing(_ force: Bool) {
        if let windowScene = self.connectedScenes.first as? UIWindowScene {
            windowScene.windows
                .first(where: { $0.isKeyWindow })?
                .endEditing(force)
        }
    }
}
