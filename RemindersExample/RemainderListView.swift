//
//  RemainderListView.swift
//  RemindersExample
//
//  Created by Fiona ZHOU on 2023-11-03.
//

import SwiftUI

struct RemainderListView: View {
    
    let remainderText: String
    let remainderDate: String
    
    var body: some View {
        HStack {
            VStack {
                CircleView()
                Spacer()
            }
            VStack {
                HStack {
                    Text(remainderText)
                        .font(.body)
                        .foregroundColor(.black)
                    Spacer()
                }
                HStack {
                    Text(remainderDate)
                        .font(.footnote)
                        .foregroundColor(Color("Dark Gray"))
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    RemainderListView(
        remainderText: "Call auto body shop",
        remainderDate: "2023-11-16"
    )
}
