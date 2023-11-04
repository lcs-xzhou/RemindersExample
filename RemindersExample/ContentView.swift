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
                    .listRowInsets(EdgeInsets(top: 3, leading: 0, bottom: 3, trailing: 0))
                }
                .listStyle(.plain)
            }
            .padding()
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {}) {
                        Image(systemName: "chevron.backward")
                            .fontWeight(.bold)
                        Text("Lists")
                    }
                    .font(.body)
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {}) {
                        Image(systemName: "square.and.arrow.up")
                            .padding(.horizontal)
                        Image(systemName: "ellipsis.circle")
                    }
                }
                ToolbarItem(placement: .bottomBar) {
                    Button(action: {}) {
                        HStack {
                            ZStack {
                                Circle()
                                    .frame(width: 25)
                                Image(systemName: "plus")
                                    .foregroundColor(.white)
                                    .fontWeight(.heavy)
                                    .font(.system(size: 15))
                                    .scaledToFit()
                            }
                            Text("New Reminder")
                                .fontWeight(.bold)
                                .font(.body)
                        }
                    }
                }
            }
            .tint(.blue)
            .navigationTitle("To do")
        }
    }
}

#Preview {
    ContentView()
}
