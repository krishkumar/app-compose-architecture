//
//  ModalDetailsView.swift
//  FootieStatsSwiftUI
//
//  Created by Krishna Kumar on 5/25/21.
//  Copyright © 2021 Magic Ive. All rights reserved.
//
//

import SwiftUI

struct ModalDetailsView: View {
    
    let country: Country
    @Binding var isDisplayed: Bool
    let inspection = Inspection<Self>()
    
    var body: some View {
        NavigationView {
            VStack {
                country.flag.map { url in
                    HStack {
                        Spacer()
                        SVGImageView(imageURL: url)
                            .frame(width: 300, height: 200)
                        Spacer()
                    }
                }
                closeButton.padding(.top, 40)
            }
            .navigationBarTitle(Text(country.name), displayMode: .inline)
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .onReceive(inspection.notice) { self.inspection.visit(self, $0) }
        .attachEnvironmentOverrides()
    }
    
    private var closeButton: some View {
        Button(action: {
            self.isDisplayed = false
        }, label: { Text("Close") })
    }
}

#if DEBUG
struct ModalDetailsView_Previews: PreviewProvider {
    
    @State static var isDisplayed: Bool = true
    
    static var previews: some View {
        ModalDetailsView(country: Country.mockedData[0], isDisplayed: $isDisplayed)
            .inject(.preview)
    }
}
#endif
