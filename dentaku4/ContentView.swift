//
//  ContentView.swift
//  dentaku
//
//  Created by ちーのん on 2020/08/19.
//  Copyright © 2020 ちーのん. All rights reserved.
// "\(self.result)"

import SwiftUI

struct ContentView: View {

    
    @State var display = "0"
    @State var middleTyping = false
    @State var firstORsecondCHK = true
    @State var ButtonOFF = false
    @State var thirdCHK = false
    @State var zeroCHK = false
    @State var firstNumber:Double = 0
    @State var secondNumber:Double = 0
    @State var result:Double = 0
    @State var equal = ""
    @State var StringDoubleCHK = false
    @State var equalCHK = true
    @State var tenCHK = true
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Text(String(format:"%.9g", result))
                    .font(.system(size: 50))
                    .padding(.all)
                    .foregroundColor(.white)
                    .frame(maxWidth:350,alignment: .trailing)
                    .multilineTextAlignment(.trailing)
                    .padding(.leading)
                    .padding(.trailing)
        HStack {
            VStack {
                HStack(spacing: 15){
                        VStack(spacing: 15){
                            Button(action: {
                                self.display = "0"
                                self.middleTyping = false
                                self.firstORsecondCHK = true
                                self.ButtonOFF = false
                                self.thirdCHK = false
                                self.zeroCHK = false
                                self.firstNumber = 0
                                self.secondNumber = 0
                                self.result = 0
                                self.equal = ""
                                self.StringDoubleCHK = false
                                self.equalCHK = true
                                self.tenCHK = true
                            }){
                            Text("AC")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(width:64, height: 64)
                            .background(Color.blue)
                                .cornerRadius(30)
                            }
                            Button(action: {
                            if self.middleTyping{ self.display =  self.display + "4"
                                self.result = Double(self.display)!
                                self.ButtonOFF = true
                            }else{
                                self.display = "4"
                                self.result = Double(self.display)!
                                self.middleTyping = true
                                self.ButtonOFF = true
                            }
                            }){
                            Text("7")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(width:64, height: 64)
                            .background(Color.gray)
                                .cornerRadius(30)
                            }
                            Button(action: {
                                if self.middleTyping{ self.display =  self.display + "4"
                                    self.result = Double(self.display)!
                                    self.ButtonOFF = true
                                }else{
                                    self.display = "4"
                                    self.result = Double(self.display)!
                                    self.middleTyping = true
                                    self.ButtonOFF = true
                                }
                                }){
                            Text("4")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(width:64, height: 64)
                            .background(Color.gray)
                                .cornerRadius(30)
                            }
                            Button(action: {
                                if self.middleTyping{ self.display =  self.display + "1"
                                    self.result = Double(self.display)!
                                    self.ButtonOFF = true
                                }else{
                                    self.display = "1"
                                    self.result = Double(self.display)!
                                    self.middleTyping = true
                                    self.ButtonOFF = true
                                }
                            }) {
                            Text("1")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(width:64, height: 64)
                            .background(Color.gray)
                                .cornerRadius(30)
                            }
                            Button(action: {
                                    if self.middleTyping{ self.display =  self.display + "0"
                                        self.result = Double(self.display)!
                                        self.ButtonOFF = true
                                    }else{
                                        self.display = "0"
                                        self.result = Double(self.display)!
                                        self.middleTyping = true
                                        self.ButtonOFF = true
                                    }
                                }) {
                            Text("0")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(width:64, height: 64)
                            .background(Color.gray)
                                .cornerRadius(30)
                            }
                        }
                        VStack(spacing: 15) {
                            Button(action: {
                                self.result = self.result * -1
                            }){
                            Text("+/-")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(width:64, height: 64)
                            .background(Color.blue)
                                .cornerRadius(30)
                            }
                            Button(action: {
                                if self.middleTyping{ self.display =  self.display + "8"
                                    self.result = Double(self.display)!
                                    self.ButtonOFF = true
                                }else{
                                    self.display = "8"
                                    self.result = Double(self.display)!
                                    self.middleTyping = true
                                    self.ButtonOFF = true
                            }
                            }){
                            Text("8")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(width:64, height: 64)
                            .background(Color.gray)
                                .cornerRadius(30)
                            }
                            Button(action: {
                                 if self.middleTyping{ self.display =  self.display + "5"
                                        self.result = Double(self.display)!
                                        self.ButtonOFF = true
                                    }else{
                                        self.display = "5"
                                        self.result = Double(self.display)!
                                        self.middleTyping = true
                                        self.ButtonOFF = true
                                    }
                            }){
                            Text("5")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(width:64, height: 64)
                            .background(Color.gray)
                                .cornerRadius(30)
                            }
                            Button(action: {
                                if self.middleTyping{ self.display =  self.display + "2"
                                    self.result = Double(self.display)!
                                    self.ButtonOFF = true
                                }else{
                                    self.display = "2"
                                    self.result = Double(self.display)!
                                    self.middleTyping = true
                                    self.ButtonOFF = true
                                }
                            }) {
                            Text("2")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(width:64, height: 64)
                            .background(Color.gray)
                                .cornerRadius(30)
                            }
                            Button(action: {
                            }){
                            Text("ち")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(width:64, height: 64)
                            .background(Color.gray)
                                .cornerRadius(30)
                            }
                        }
                        VStack(spacing: 15) {
                            Button(action: {
                                self.result = self.result / 100
                            }){
                            Text("%")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(width:64, height: 64)
                            .background(Color.blue)
                                .cornerRadius(30)
                            }
                            Button(action: {
                                if self.middleTyping{ self.display =  self.display + "9"
                                    self.result = Double(self.display)!
                                    self.ButtonOFF = true
                                }else{
                                    self.display = "9"
                                    self.result = Double(self.display)!
                                    self.middleTyping = true
                                    self.ButtonOFF = true
                                }
                            }){
                            Text("9")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(width:64, height: 64)
                            .background(Color.gray)
                                .cornerRadius(30)
                            }
                            Button(action: {
                                if self.middleTyping{ self.display =  self.display + "6"
                                    self.result = Double(self.display)!
                                    self.ButtonOFF = true
                                }else{
                                    self.display = "6"
                                    self.result = Double(self.display)!
                                    self.middleTyping = true
                                    self.ButtonOFF = true
                                }
                            }){
                            Text("6")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(width:64, height: 64)
                            .background(Color.gray)
                                .cornerRadius(30)
                            }
                            Button(action: {
                                if self.middleTyping{ self.display =  self.display + "3"
                                    self.result = Double(self.display)!
                                    self.ButtonOFF = true
                                }else{
                                    self.display = "3"
                                    self.result = Double(self.display)!
                                    self.middleTyping = true
                                    self.ButtonOFF = true
                                }
                            }){
                            Text("3")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(width:64, height: 64)
                            .background(Color.gray)
                                .cornerRadius(30)
                            }
                            Button(action: {
                                if self.middleTyping{
                                    if self.tenCHK {
                                    self.display = self.display + "."
                                    self.result = Double(self.display)!
                                    }
                                    self.tenCHK = false
                                }
                            }){
                            Text(".")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(width:64, height: 64)
                            .background(Color.gray)
                                .cornerRadius(30)
                            }
                        }
                        VStack(spacing: 15) {
                            Button(action: {
                                if self.ButtonOFF {
                                if self.firstORsecondCHK {
                                    self.firstNumber = self.result
                                    self.firstORsecondCHK = false
                                    self.middleTyping = false
                                    self.ButtonOFF = false
                                }
                                else {
                                    self.secondNumber = self.result
                                    self.result = self.firstNumber / self.secondNumber
                                    self.firstNumber = self.result
                                    self.middleTyping = false
                                    self.ButtonOFF = false
                                }
                                }
                                self.equal = "/"
                                self.tenCHK = true
                            }){
                            Text("÷")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(width:64, height: 64)
                            .background(Color.orange)
                                .cornerRadius(30)
                            }
                            Button(action: {
                                if self.ButtonOFF {
                                if self.firstORsecondCHK {
                                    self.firstNumber = self.result
                                    self.firstORsecondCHK = false
                                    self.middleTyping = false
                                    self.ButtonOFF = false
                                }
                                else {
                                    self.secondNumber = self.result
                                    self.result = self.firstNumber * self.secondNumber
                                    self.firstNumber = self.result
                                    self.middleTyping = false
                                    self.ButtonOFF = false
                                }
                                }
                            self.equal = "x"
                            self.tenCHK = true
                            }
                            ){
                            Text("×")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(width:64, height: 64)
                            .background(Color.orange)
                                .cornerRadius(30)
                            }
                            Button(action: {
                                if self.ButtonOFF {
                                if self.firstORsecondCHK {
                                    self.firstNumber = self.result
                                    self.firstORsecondCHK = false
                                    self.middleTyping = false
                                    self.ButtonOFF = false
                                }
                                else {
                                    self.secondNumber = self.result
                                    self.result = self.firstNumber - self.secondNumber
                                    self.firstNumber = self.result
                                    self.middleTyping = false
                                    self.ButtonOFF = false
                                }
                                }
                                self.equal = "-"
                                self.tenCHK = true
                            }){
                            Text("-")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(width:64, height: 64)
                            .background(Color.orange)
                                .cornerRadius(30)
                            }
                            Button(action: {
                                if self.ButtonOFF {
                                if self.firstORsecondCHK {
                                    self.firstNumber = self.result
                                    self.firstORsecondCHK = false
                                    self.middleTyping = false
                                    self.ButtonOFF = false
                                }
                                else {
                                    self.secondNumber = self.result
                                    self.result = self.firstNumber + self.secondNumber
                                    self.firstNumber = self.result
                                    self.middleTyping = false
                                    self.ButtonOFF = false
                                }
                                }
                                self.equal = "+"
                                self.tenCHK = true
                            }){
                            Text("+")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(width:64, height: 64)
                            .background(Color.orange)
                                .cornerRadius(30)
                            }
                            Button(action: {
                                if self.equal == "+" {
                                        self.secondNumber = self.result
                                        self.result = self.firstNumber + self.secondNumber
                                        self.firstNumber = self.result
                                        self.middleTyping = false
                                        self.ButtonOFF = false
                                        self.equalCHK = false
                                        self.equal = "+"
                                        self.tenCHK = true
                                        } else if self.equal == "-" {
                                         self.secondNumber = self.result
                                         self.result = self.firstNumber - self.secondNumber
                                         self.firstNumber = self.result
                                         self.middleTyping = false
                                         self.ButtonOFF = false
                                         self.equalCHK = false
                                         self.equal = "-"
                                        } else if self.equal == "/" {
                                            self.secondNumber = self.result
                                         self.result = self.firstNumber / self.secondNumber
                                         self.firstNumber = self.result
                                         self.middleTyping = false
                                         self.ButtonOFF = false
                                         self.equalCHK = false
                                         self.equal = "/"
                                        } else if self.equal == "x" {
                                        self.secondNumber = self.result
                                        self.result = self.firstNumber * self.secondNumber
                                        self.firstNumber = self.result
                                        self.middleTyping = false
                                        self.ButtonOFF = false
                                        self.equalCHK = false
                                        self.equal = "x"
                                    }
                                self.tenCHK = true
                            }){
                            Text("=")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(width:64, height: 64)
                            .background(Color.orange)
                                .cornerRadius(30)
                            }
                        }
                    }
                    .padding()
                }
            }
        }
    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
