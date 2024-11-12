//
//  ListDataView.swift
//  SwiftUIDemo1
//
//  Created by Pravin Parmar on 12/11/24.
//

import SwiftUI

struct ListDataView: View {
    
    @State var itemList : [ItemList] = []
    
    var body: some View {
        List(itemList){  item in
        
        HStack{
            AsyncImage(url: URL(string: ""))
            {                    phase in
                                    switch phase {
                                    case .failure: Image(systemName: "photo") .font(.largeTitle)
                                    case .success(let image):
                                        image.resizable()
                                    default: ProgressView()
                                        
                                    }
            }.frame(width: 100, height: 100, alignment: .leading)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            VStack(alignment: .leading){
                Text(item.title ?? "").font(.title)
                Text("\(item.id ?? 0)").font(.title3)
            }

        }
            
        }.scrollContentBackground(.hidden)
        .onAppear{
            fetchdatalist()
        }
       
    }
    private func  fetchdatalist(){
        let url = URL.init(string: "https://jsonplaceholder.typicode.com/photos")!
        var request  = URLRequest.init(url: url)
        request.httpMethod = "GET"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            if  error != nil {
                print("Fetch Data Error")
                
            }
            
            guard  data != nil else {
                return
            }
            
            
            do {
                let  jsondataList   = try  JSONDecoder().decode([ItemList].self, from: data!)
                itemList = jsondataList
                
            } catch  let jsonerror {
                
                print("Error  for decode  json\(jsonerror.localizedDescription)")
            }
             
            
        }
        task.resume()
    
    }
    
}

#Preview {
    ListDataView()
}
