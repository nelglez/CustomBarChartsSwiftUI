//
//  ContentView.swift
//  CustomBarChartsSwiftUI
//
//  Created by Nelson Gonzalez on 1/13/20.
//  Copyright © 2020 Nelson Gonzalez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var spendingController = SpendingController()
    var body: some View {
        HStack(alignment: .bottom, spacing: 8) {
            ForEach(spendingController.spendings) { spending in
                BarView(percent: spending.percentage, day: spending.day)
                
            }
        }.frame(height: 250)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
