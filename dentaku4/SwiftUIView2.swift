//
//  SwiftUIView2.swift
//  dentaku4
//
//  Created by ちーのん on 2020/08/30.
//  Copyright © 2020 ちーのん. All rights reserved.
//

import SwiftUI


struct SwiftUIView2: View {
    
    @State var flug: Bool = false
        @State var urlString:String = "https://www.youtube.com/channel/UCS81FSMo6BQCKxhjJi3JihQ"
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: SwiftUIView2(), isActive: $flug) {
                    EmptyView()
                }
                
                Button("ボタン") {
                    self.flug = true
                }
            }
        }
    }
}

struct SwiftUIView2_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView2()
    }
}
