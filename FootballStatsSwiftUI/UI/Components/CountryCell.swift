//
//  CountryCell.swift
//  FootieStatsSwiftUI
//
//  Created by Krishna Kumar on 5/25/21.
//  Copyright © 2021 Magic Ive. All rights reserved.
//
//

import SwiftUI

struct CountryCell: View {
    
    let country: Country
    @Environment(\.locale) var locale: Locale
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(country.name(locale: locale))
                .font(.title)
            Text("Population \(country.population)")
                .font(.caption)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: 60, alignment: .leading)
    }
}

#if DEBUG
struct CountryCell_Previews: PreviewProvider {
    static var previews: some View {
        CountryCell(country: Country.mockedData[0])
            .previewLayout(.fixed(width: 375, height: 60))
    }
}
#endif
