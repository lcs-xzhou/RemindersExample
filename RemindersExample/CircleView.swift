//
//  CircleView.swift
//  RemindersExample
//
//  Created by Fiona ZHOU on 2023-11-03.
//

import SwiftUI

struct CircleView: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 25)
                .foregroundColor(Color("Light Gray"))
            Circle()
                .frame(width: 22)
                .foregroundColor(.white)
        }
    }
}

#Preview {
    CircleView()
}
