//
//  DashboardScreen.swift
//  SwiftUIDemo1
//
//  Created by Pravin Parmar on 11/11/24.
//

import SwiftUI

struct DashboardScreen: View {
    @State var  strName:String = ""
    
    var body: some View {
        
      
        VStack{
    
                Color.green
                Text("Dashboard  screen  Comming").font(.title).background(Color.blue)
                Text("Dashboard  screen  \(strName)").font(.title).background(Color.blue)

                
                Button(
                    action: {
                        
                        print(" back  ...")
                    }
                    , label:{
                        Text("Back ").foregroundColor(.white)
                        
                    }).frame(width: 150,height: 48).background(Color.purple).cornerRadius(24).font(.system(size: 18,weight: .medium))
        }.padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
            
      
    }
}

#Preview {
    DashboardScreen()
}
