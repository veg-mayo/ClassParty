//
//  ContentView.swift
//  ClassParty
//
//  Created by Red Phoenix on 11/12/20.
// Final commit

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                
                HStack {
                    Text("Live & Upcoming Classes")
                        .font(.custom("BentonSans-Bold", size: 21, relativeTo: .body))
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(.secondary)
                }.padding(.leading)
                .padding(.trailing)
                .padding(.top)
                
                
                
              
                    
                VStack {
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack(spacing: 18) {
                            ForEach(upcomingClassesData) { item in
                                ClassCards(classes: item)
                            }
                        }
                    }.frame(height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    
                }.padding(.leading)
               
                
                
                VStack {
                    HStack {
                        Text("Categories")
                            .font(.custom("BentonSans-Bold", size: 21, relativeTo: .body))
                       
                        Spacer()
                    }.padding()
                    .padding(.bottom, -25)
                    
                    
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack (spacing: 20) {
                            ForEach(categoryData) { item in
                                CategoryCard(categories: item)
                            }
                           

                        }.padding(27)
                    }
                    
                    
                }
                
                HStack {
                    Text("Daily Courses & Classes")
                        .font(.custom("BentonSans-Bold", size: 21, relativeTo: .body))
                    Spacer()
                }.padding()
                
                //daily classes comes here
                DailyClass()
              
                
                HStack {
                    Text("Featured Classes")
                        .font(.custom("BentonSans-Bold", size: 21, relativeTo: .body))
                    Spacer()
                }.padding()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 15) {
                        ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                            FeaturedView()
                        }
                    }
                }
                DailyClass()
                
                
                HStack {
                    Text("Instructors")
                        .font(.custom("BentonSans-Bold", size: 21, relativeTo: .body))
                    Spacer()
                }.padding()
               
                ScrollView(.horizontal) {
                    HStack(spacing: 20) {
                        Image(uiImage: #imageLiteral(resourceName: "pexels-pixabay-220453"))
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        
                        Image(uiImage: #imageLiteral(resourceName: "pexels-andrea-piacquadio-3778876"))
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        
                        Image(uiImage: #imageLiteral(resourceName: "pexels-andrea-piacquadio-3785079"))
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        
                        Image(uiImage: #imageLiteral(resourceName: "pexels-andrea-piacquadio-3778876"))
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        
                        Image(uiImage: #imageLiteral(resourceName: "pexels-andrea-piacquadio-3785079"))
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        
                        Image(uiImage: #imageLiteral(resourceName: "pexels-andrea-piacquadio-3778876"))
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    }
                }.padding(.leading)
                
               
                   
                
                //ends
                
                
                
            }
        }
        
    
        
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ClassCards: View {
    
    var classes: Upcoming
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray.opacity(0.3), lineWidth: 2)
                
            ZStack {
                
                
                VStack {
                    classes.image
                        
                        
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 339, height: 190, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .clipShape(Rectangle())
                       
                        .cornerRadius(10)
                        
                        .shadow(color: Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)).opacity(0.9), radius: 9, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 6)
                        
                    
                    
                    
                    HStack {
                        Image(systemName: "circle.fill")
                            .foregroundColor(.red)
                            .font(.system(size: 10))
                        
                        Text("LIVE")
                            .font(.subheadline)
                            .foregroundColor(.red)
                            
                        
                        Spacer()
                    }
                    .padding(.leading)
                    .padding(.top, 6)
                    .padding(.bottom, -60)
                    
                    
                    HStack {
                        Text(classes.title)
                            .font(.custom("BentonSans-Medium", size: 18, relativeTo: .body))
                            .padding(.top, -20)
                        
                        Spacer()
                        
                        Button(action: {}) {
                            Text("Join Now")
                                .fontWeight(.semibold)
                            
                            
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.red)
                        .cornerRadius(6)
                        .shadow(color: Color(#colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)).opacity(0.5), radius: 9, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 6)
                        
                    }.padding()
                    
                    HStack {
                        Text("30 mins")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        Spacer()
                        
                    }.padding(.leading)
                    .padding(.top, -46)
                    
                    
                }
                
                //ends
                
                VStack {
                    HStack {
                        Text(classes.tag)
                            .font(.system(size: 14))
                            .foregroundColor(.white)
                            .frame(width: 70, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                           
                            .background(Color(#colorLiteral(red: 0, green: 0.7721495032, blue: 0.8195834756, alpha: 1)))
                            
                            .cornerRadius(8)
                            .padding()
                        Spacer()
                    }
                    Spacer()
                }
                    
            }
            
            
            
            
        }
        //ends
        
    }
}

struct CategoryCard: View {
    var categories : Category
    var body: some View {
        ZStack {
            
            
            
            
            categories.image
                .resizable()
                
                .aspectRatio(contentMode: .fill)
                
                .frame(width: 220, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipShape(Rectangle())
                .cornerRadius(10)
                .cornerRadius(6)
                .shadow(color: categories.color.opacity(0.6), radius: 9, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 6)
            
            categories.color
                .aspectRatio(contentMode: .fill)
                
                .frame(width: 220, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipShape(Rectangle())
                .cornerRadius(10)
                
                .blendMode(.darken)
            
            
            Text(categories.title)
                .foregroundColor(.white)
                .font(.custom("BentonSans-Bold", size: 18, relativeTo: .body))
        }
    }
}


struct Category: Identifiable {
    var id = UUID()
    var title: String
    var image: Image
    var color: Color
}


let categoryData = [
    Category(title: "Fitness", image: Image(uiImage: #imageLiteral(resourceName: "fitness")), color: Color(#colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1))),
    Category(title: "Music", image: Image(uiImage: #imageLiteral(resourceName: "music")), color: Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))),
    Category(title: "Cook", image: Image(uiImage: #imageLiteral(resourceName: "cook")), color: Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))),
    Category(title: "Art", image: Image(uiImage: #imageLiteral(resourceName: "art")), color: Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))


]

struct Upcoming: Identifiable {
    var id = UUID()
    var title: String
    var image: Image
    var tag: String
    
}

let upcomingClassesData = [
    Upcoming(title: "Intermediate Guitar", image: Image(uiImage: #imageLiteral(resourceName: "guitar")), tag: "Music"),
    Upcoming(title: "Cooking Art", image: Image(uiImage: #imageLiteral(resourceName: "cook")), tag: "Cook"),
    Upcoming(title: "Painting Master", image: Image(uiImage: #imageLiteral(resourceName: "art")), tag: "Art")

]




struct DailyClass: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray.opacity(0.3), lineWidth: 2)
                .frame(width: 380, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            
            ZStack {
                
                
                VStack {
                    Image(uiImage: #imageLiteral(resourceName: "fitness"))
                        
                        
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 380, height: 190, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .clipShape(Rectangle())
                        
                        .cornerRadius(10)
                        
                        .shadow(color: Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)).opacity(0.9), radius: 9, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 6)
                    
                    
                    
                    
                    HStack {
                        Image(systemName: "circle.fill")
                            .foregroundColor(.red)
                            .font(.system(size: 10))
                        
                        Text("LIVE")
                            .font(.subheadline)
                            .foregroundColor(.red)
                        
                        
                        Spacer()
                    }
                    .padding(.leading)
                    .padding(.top, 6)
                    .padding(.bottom, -60)
                    
                    
                    HStack {
                        Text("Power Fitness Yoga")
                            .padding(.top, -20)
                        
                        Spacer()
                        
                        Button(action: {}) {
                            Text("Join Now")
                                .fontWeight(.semibold)
                            
                            
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.red)
                        .cornerRadius(6)
                        .shadow(color: Color(#colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)).opacity(0.5), radius: 9, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 6)
                        
                    }.padding()
                    
                    HStack {
                        Text("30 mins")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        Spacer()
                        
                    }.padding(.leading)
                    .padding(.top, -46)
                    
                    
                }
                .padding()
                
                //ends
                
                VStack {
                    HStack {
                        Text("test")
                            .font(.system(size: 14))
                            .foregroundColor(.white)
                            .frame(width: 70, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            .background(Color(#colorLiteral(red: 0, green: 0.7721495032, blue: 0.8195834756, alpha: 1)))
                            
                            .cornerRadius(8)
                            .padding()
                        Spacer()
                    }
                    .padding()
                    Spacer()
                }
                
            }
            
            
            
            
        }
    }
}

struct FeaturedView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image(uiImage: #imageLiteral(resourceName: "art"))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 259, height: 190, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipShape(Rectangle())
                
                .cornerRadius(10)
                
                .shadow(color: Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)).opacity(0.9), radius: 9, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 6)
            
            HStack {
                VStack (alignment: .leading) {
                    Text("Portrait Photography")
                        .font(.system(size: 21))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                    Text("30, Jun at 5PM, 7PM")
                        .foregroundColor(.red)
                    Text("₹ 4,500")
                }
                Spacer()
                
            }
            
            
        }.padding(.leading)
    }
}
