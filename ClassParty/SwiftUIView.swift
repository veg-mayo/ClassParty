//
//  SwiftUIView.swift
//  ClassParty
//
//  Created by Red Phoenix on 13/12/20.
//

import Foundation

import SwiftUI
import WidgetKit

struct EmojiWidgetView: View {
    @Environment(\.widgetFamily) var family: WidgetFamily
     
      @ViewBuilder
      var body: some View {
        switch family {
        case .systemSmall:
          SmallWidgetView()
        case .systemMedium:
          MediumWidgetView()
        case .systemLarge:
          LargeWidgetView()
        @unknown default:
          EmptyView()
        }
      }

  
}


struct SmallWidgetView: View {
    

    var body: some View {
        ZStack {
            
            Image(uiImage: #imageLiteral(resourceName: "music"))
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            
            Color.red.opacity(0.9)
                .frame(width: 200 , alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .blendMode(/*@START_MENU_TOKEN@*/.darken/*@END_MENU_TOKEN@*/)
            
            VStack {
                Spacer()
                ZStack {
                    Color.black.opacity(0.6)
                        .frame(width: 200 , height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                       
                    VStack (spacing: 5) {
                        ZStack {
                            Color.white.opacity(0.9)
                                .frame(width: 200, height: 18, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .offset(y:-10)
                            HStack {
                                Image(systemName: "music.note")
                                    .foregroundColor(.red)
                                    .font(.system(size: 12))
                                
                                Text("Music Masterclass")
                                    .foregroundColor(.red)
                                    .fontWeight(.semibold)
                                    .font(.system(size: 12))
                                    
                            }
                            .offset(y:-10)
                        }
                        
                        HStack {
                            Image(systemName: "calendar.badge.clock")
                                .foregroundColor(.white)
                            Text("3:00 PM - 5:00 PM")
                                .font(.system(size: 12))
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                        }.opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                        .offset(y:-5)
                    }
                }
            }
        }
       
    }
    
}




struct MediumWidgetView: View {
    

    var body: some View {
     
        HStack {
            
            ZStack {
                Image(uiImage: #imageLiteral(resourceName: "tr-ng-trung-c-p-kinh-t-du-l-ch-thanh-ph-h-chi-minh-cet-ix1-9lPsIK4-unsplash"))
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
            
                Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)).opacity(0.7)
                    
                    
                
            }
                
          
           
            
            VStack(alignment: .leading) {
                HStack {
                    
                    Image(systemName: "alarm")
                        .font(.system(size: 13))
                        .foregroundColor(Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))
                        .padding(.bottom)
                    
                    
                    Text("Chef Classes: ")
                        .foregroundColor(Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))
                        .fontWeight(.semibold)
                        .font(.system(size: 15))
                        .padding(.bottom)
                }
                VStack(alignment: .leading, spacing: 10) {
                    Text("Mexican Food - 12:30PM")
                        .font(.system(size: 12))
                        .fontWeight(.semibold)
                    
                    Text("Spicy Food - 2:30PM")
                        .font(.system(size: 12))
                        .fontWeight(.semibold)
                    Text("Italian Food - 3:30PM")
                        .font(.system(size: 12))
                        .fontWeight(.semibold)
                    
                Text("Fried Food - 4:30PM")
                    .font(.system(size: 12))
                    .fontWeight(.semibold)
                }
                .padding(.trailing, 60)
              
            }
            .frame(width: 220, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .padding(.trailing)
           
            
          
        }
       
    }
    
}


struct LargeWidgetView: View {
    

    var body: some View {
        ZStack {
            
         
            Image(uiImage: #imageLiteral(resourceName: "pexels-aleksandr-slobodianyk-989917") )
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            
            Color.green.opacity(0.6)
                
                
            
            VStack {
                Spacer()
                ZStack {
                    Color.black.opacity(0.6)
                        .frame(width: 400 , height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                       
                    VStack (spacing: 5) {
                        ZStack {
                            Color.white.opacity(0.9)
                                .frame(width: 400, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .offset(y:-35)
                            HStack {
                                Image(systemName: "paintbrush.pointed.fill")
                                    .foregroundColor(Color(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)))
                                    .font(.system(size: 12))
                                
                                Text("Painting Masterclass")
                                    .foregroundColor(Color(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)))
                                    .fontWeight(.semibold)
                                    .font(.system(size: 12))
                                    
                            }
                            .offset(y:-35)
                        }
                        
                        VStack (alignment: .leading) {
                            
                            HStack {
                               Text("MON |")
                                .font(.system(size: 12))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                
                                Text("3:00 PM - 5:00 PM")
                                    .font(.system(size: 12))
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                
                                

                            }.opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                            
                            HStack {
                               Text("MON |")
                                .font(.system(size: 12))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                
                                Text("3:00 PM - 5:00 PM")
                                    .font(.system(size: 12))
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                
                                

                            }.opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                            HStack {
                               Text("MON |")
                                .font(.system(size: 12))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                
                                Text("3:00 PM - 5:00 PM")
                                    .font(.system(size: 12))
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                
                                

                            }.opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                            HStack {
                               Text("MON |")
                                .font(.system(size: 12))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                
                                Text("3:00 PM - 5:00 PM")
                                    .font(.system(size: 12))
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                
                                

                            }.opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                        }
                    }
                }
            }
        }
       
    }
    
}


