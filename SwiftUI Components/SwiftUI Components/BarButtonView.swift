//
//  BarButtonView.swift
//  SwiftUI Components
//
//  Created by Rudrank Riyam on 25/04/20.
//  Copyright © 2020 Rudrank Riyam. All rights reserved.
//

import SwiftUI

struct BarButtonView: View {
    var imageName: String
    var accessibilityName: String

    var body: some View {
        Image(systemName: imageName)
            .resizable()
            .font(.system(size: 25))
            .foregroundColor(.primary)
            .accessibility(label: Text(accessibilityName))
            .frame(width: 25, height: 25, alignment: .trailing)
    }
}

struct BarButtonView_Previews: PreviewProvider {
    static var previews: some View {
        BarButtonView(imageName: "gear", accessibilityName: "Settings")
    }
}
