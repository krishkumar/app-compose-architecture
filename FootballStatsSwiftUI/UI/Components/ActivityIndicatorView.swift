//
//  ActivityIndicatorView.swift
//  FootieStatsSwiftUI
//
//  Created by Krishna Kumar on 5/25/21.
//  Copyright © 2021 Magic Ive. All rights reserved.
//
//

import SwiftUI

struct ActivityIndicatorView: UIViewRepresentable {

    func makeUIView(context: UIViewRepresentableContext<ActivityIndicatorView>) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: .large)
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicatorView>) {
        uiView.startAnimating()
    }
}
