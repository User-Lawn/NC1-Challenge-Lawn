//
//  HomeView.swift
//  NC1-Lawn-SoMac
//
//  Created by Jun.Mac on 2022/05/02.
//

import SwiftUI

struct HomeView: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
                
        
        NavigationView{
            
            ZStack{
                
                Image("BG1").ignoresSafeArea()
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationTitle("쏘맥")
                    .toolbar {
                        
                        ToolbarItem(placement: .navigationBarTrailing) {
                            
                            Button { showSheet.toggle()} label: {
                                
                                Image(systemName:"person.text.rectangle")
                                    .frame(width: 30)
                                    .accentColor(.black)
                            
                                    }
                                    .halfSheet(showSheet: $showSheet) {
                                        ZStack{
                                       
                                            Image("Rectangle")
                                       
                                            VStack(spacing: -200){
                                       
                                                Image("Certification")
                                                    .padding(.top, 300)
                                       
                                                Button {showSheet.toggle()} label: {
                                                    Image("Close")
                                                   
                                                }
                                                
                                       
                                            }
                                        }
                                                   .ignoresSafeArea()
                        } onEnd: {print("Dismissed")}
                    }
                }
                
                VStack{
                    
                    VStack(spacing: -10){
                       
                        Button {
                            
                        } label: {
                            
                            NavigationLink(destination: ChoiceView()) {
                                
                                Image("GoToSoMac")
                                
                                    .frame(width: 30)
                            }
                        }
                       
                        Button {
                            
                        } label: {
                            
                            NavigationLink(destination: GalleryView()) {
                                
                                Image("GoToGallery")
                                
                                    .frame(width: 30)
                            }
                        }
                        
                    }
                    
                    
                    Image("Mention")
                    
                    
                }.offset(y: 180)
            }
        }
      
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

