//
//  test.swift
//  dentaku4
//
//  Created by ちーのん on 2020/08/22.
//  Copyright © 2020 ちーのん. All rights reserved.
//

import SwiftUI

struct test: View {

    @State var display = "0"
    @State var middleTyping = false
    
    enum ButtonCase: String {
        case a,b,c,d,e,f,g,h,i,j,k,l
        case m,n,o,p,q
        case r,s,t
        
        var Name: String {
            switch self {
            case .a: return "AC"
            case .b: return "+/-"
            case .c: return "%"
            case .e: return "7"
            case .f: return "8"
            case .g: return "9"
            case .h: return "x"
            case .i: return "4"
            case .j: return "5"
            case .k: return "6"
            case .l: return "-"
            case .m: return "1"
            case .n: return "2"
            case .o: return "3"
            case .p: return "+"
            case .q: return "0"
            case .r: return "ちーのん"
            case .s: return "."
            case .t: return "="
            default: return "÷"
            }
        }


        
        var BottonColor: Color {
            switch self {
            case .e, .f, .g, .i, .j, .k, .m, .n, .o, .q, .r, .s:
                return Color(.darkGray)
            case .a,.b,.c:
                return Color(.lightGray)
            default:
                return .orange
            }
        }
    
    
        
    }
    
    let suujis: [[ButtonCase]] = [
        [.a, .b, .c ,.d],
        [.e, .f, .g ,.h],
        [.i, .j, .k ,.l],
        [.m, .n, .o ,.p],
        [.q, .r, .s ,.t],
    ]
    var body: some View {
        ZStack(alignment: .bottom){
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
            Text(display)
                .font(.system(size: 50))
                .padding(.all)
                .foregroundColor(.white)
                .frame(maxWidth:350,alignment: .trailing)
                .padding(.leading)
                .padding(.trailing)
            
            VStack(spacing: 12) {
                ForEach(suujis, id: \.self) {
                suuji in
                    HStack{
                        ForEach(suuji, id: \.self) { button in
                            
                            Button(action: {
                                if self.middleTyping{ self.display =  self.display + button.Name
                            }else{
                                self.display = button.Name
                                self.middleTyping = true
                                }
                            }) {
                                Text(button.Name)
                                .font(.title)
                                 .fontWeight(.bold)
                                 .foregroundColor(.white)
                                 .frame(width: 70, height: 70)
                                .background(button.BottonColor)
                                     .cornerRadius(40)
                            }
                        }
                    }
                }
            }.padding(.bottom)
        }
    }
}
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
