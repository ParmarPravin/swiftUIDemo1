//
//  LoginView.swift
//  SwiftUIDemo1
//
//  Created by Pravin Parmar on 11/11/24.
//

import SwiftUI

struct LoginView: View {
    @State private var username:String = ""
    @State private var password:String = "";
    @State private var isEnablebutton :Bool = true

    var body: some View {
    
        ZStack{
            Color.gray.ignoresSafeArea(.all)
            NavigationView{
                
                VStack{
                   
                        Text("Login \(username)").padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                            .foregroundColor(Color.blue).font(.system(size: 25,weight: .bold))
                        TextField("User name",text:$username ).textFieldStyle(RoundedBorderTextFieldStyle()).frame(height: 100).cornerRadius(24).font(.system(size: 24))
                        SecureField("password", text: $password).textFieldStyle(RoundedBorderTextFieldStyle()).frame(height: 100).cornerRadius(24).font(.system(size:24))

                  
                    NavigationLink(destination: DashboardScreen(strName: username)) {
                        Button(
                            action: {
                                print(" Tap ...")
                            }
                            , label:{
                                Text("Login ").foregroundColor(.white)
                                
                            }).frame(width: 150,height: 48).background(Color.purple).cornerRadius(24).font(.system(size: 18,weight: .medium))

                    }
                        
                    .padding(.all).background(Color.gray)
                }
                
            }

        }
    }
}

#Preview {
    LoginView()
}
