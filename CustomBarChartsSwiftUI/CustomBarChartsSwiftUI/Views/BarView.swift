//
//  BarView.swift
//  CustomBarChartsSwiftUI
//
//  Created by Nelson Gonzalez on 1/13/20.
//  Copyright © 2020 Nelson Gonzalez. All rights reserved.
//

import SwiftUI

struct BarView: View {
    var percent: CGFloat = 0
    var day = ""
    
    var body: some View{
        
        VStack {
            
            Text(String(format: "%.0f", Double(percent)) + "%").foregroundColor(Color.black.opacity(0.5))
            
            Rectangle().fill(Color.red).frame(width: UIScreen.main.bounds.width / 7 - 12, height: getHeight())
            
            Text(day).foregroundColor(Color.black.opacity(0.5))
        }
        
    }
    
    func getHeight()->CGFloat{
        
        return 200 / 100 * percent
    }

}
struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView()
    }
}
