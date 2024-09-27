//
//  SwiftUIView.swift
//  SE-Project
//
//  Created by admin on 2024/9/27.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        Image("mouse")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.gray,lineWidth: 4)
            }
            .shadow(radius: 10)
    }
}

#Preview {
    SwiftUIView()
}
