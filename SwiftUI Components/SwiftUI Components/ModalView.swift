//
//  ModalView.swift
//  SwiftUI Components
//
//  Created by Rudrank Riyam on 25/04/20.
//  Copyright © 2020 Rudrank Riyam. All rights reserved.
//

import SwiftUI

struct ModalView: View {
    var body: some View {
        NavigationView {
            Text("Hello, World!")
                .navigationBarTitle("Modal")
                .navigationBarItems(trailing:
                    BarButtonView(imageName: "xmark.circle", accessibilityName: "Close")
            )
        }
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
