//
//  GalleryView.swift
//  NC1-Lawn-SoMac
//
//  Created by Jun.Mac on 2022/05/03.
//

import SwiftUI

struct GalleryView: View {
    @StateObject var jsonModel = JSONViewModel()
    var body: some View {
        
        VStack{
            
            HStack {
                HStack{
                    
                    Image(systemName: "magnifyingglass")
                        .font(.title2)
                        .foregroundColor(.gray)
                    
                    TextField("Search", text: $jsonModel.search)
                }
                .padding(.vertical,10)
                .padding(.horizontal)
                .background(Color.primary.opacity(0.06))
                .cornerRadius(10)
                
                Button(action: {}, label: {
                    
                    Image(systemName: "qrcode.viewfinder")
                        .font(.system(size: 30))
                        .foregroundColor(.primary)
                })
            }
            .padding()
            
            if jsonModel.cards.isEmpty{
                
                ProgressView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            else{
                
                ScrollView{
                    
                    // Compositional Layout....
                    
                    VStack(spacing: 4){
                        
                        ForEach(jsonModel.compositionalArray.indices,id: \.self){index in
                            
                            // Basic Logic For Mixing Layouts...
                            
                            if index == 0 || index % 6 == 0{
                                
                                Layout1(cards: jsonModel.compositionalArray[index])
                            }
                            else if index % 3 == 0{
                                
                                Layout3(cards: jsonModel.compositionalArray[index])
                            }
                            else{
                                
                                Layout2(cards: jsonModel.compositionalArray[index])
                            }
                        }
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
