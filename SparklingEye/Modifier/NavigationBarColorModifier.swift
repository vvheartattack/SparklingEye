

import SwiftUI

fileprivate struct NavigationBarColorModifier: ViewModifier {

    init(backgroundColor: UIColor, tintColor: UIColor, hiddenShadow: Bool = false) {
    let coloredAppearance = UINavigationBarAppearance()
    coloredAppearance.configureWithOpaqueBackground()
    coloredAppearance.backgroundColor = backgroundColor
    coloredAppearance.titleTextAttributes = [.foregroundColor: tintColor]
    coloredAppearance.largeTitleTextAttributes = [.foregroundColor: tintColor]
    
        if hiddenShadow {
        coloredAppearance.shadowColor = .clear
        
    }
                   
    UINavigationBar.appearance().standardAppearance = coloredAppearance
    UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
    UINavigationBar.appearance().compactAppearance = coloredAppearance
    UINavigationBar.appearance().tintColor = tintColor
  }

  func body(content: Content) -> some View {
    content
  }
}

extension View {
    func navigationBarColor(backgroundColor: UIColor, tintColor: UIColor, hiddenShadow: Bool) -> some View {
    self.modifier(NavigationBarColorModifier(backgroundColor: backgroundColor, tintColor: tintColor, hiddenShadow: hiddenShadow))
  }
}

