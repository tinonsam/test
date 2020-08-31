//
//  test2.swift
//  dentaku4
//
//  Created by ちーのん on 2020/08/27.
//  Copyright © 2020 ちーのん. All rights reserved.
// TextField("0", text: $display)

import SwiftUI

struct test2: View {
    
    let string:String = "511.1143"
    
    
    var body: some View {
        Text(String(format:"%.9g", stringToDouble))
    }
}

struct test2_Previews: PreviewProvider {
    static var previews: some View {
        test2()
    }
}
