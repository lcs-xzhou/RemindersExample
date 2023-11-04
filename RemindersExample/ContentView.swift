//
//  ContentView.swift
//  RemindersExample
//
//  Created by Fiona ZHOU on 2023-11-03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading){
                List {
                    Group {
                        RemainderListView(
                            remainderText: "Call auto body shop",
                            remainderDate: "2023-11-16"
                        )
                        RemainderListView(
                            remainderText: "Feed Piper",
                            remainderDate: "Tomorrow, 8:00AM, Daily"
                        )
                        RemainderListView(
                            remainderText: "Write lesson about interactive apps",
                            remainderDate: "Tomorrow, 6:00 PM"
                        )
                        RemainderListView(
                            remainderText: "Take Piper to the vet",
                            remainderDate: "2023-11-29, 3:00 PM"
                        )
                        RemainderListView(
                            remainderText: "Drop off donations at Goodwill",
                            remainderDate: "2023-11-11"
                        )
                        RemainderListView(
                            remainderText: "Call plumber about clog in sink",
                            remainderDate: "Tomorrow, 2:00 PM"
                        )
                        RemainderListView(
                            remainderText: "Call dentist to schedule appointment",
                            remainderDate: "2023-11-06, 4:00 PM"
                        )
                        RemainderListView(
                            remainderText: "Call mechanic to get TARDIS repaired",
                            remainderDate: "Tomorrow, 12:00 PM"
                        )
                    }
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                }
                .listStyle(.plain)
                .padding()
                HStack {
                    ZStack {
                        Circle()
                            .frame(width: 25)
                        Image(systemName: "plus")
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                    }
                    .padding(.leading)
                    Text("New Reminder")
                        .fontWeight(.bold)
                        .font(.body)
                }
                .foregroundColor(Color(.blue))
            }
            .padding()
            .navigationTitle("To do")
                .fontWeight(.bold)
                .foregroundColor(Color(.blue))
        }
    }
}

#Preview {
    ContentView()
}
