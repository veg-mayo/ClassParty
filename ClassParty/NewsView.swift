//
//  WiredView.swift
//  ClassParty
//
//  Created by Red Phoenix on 11/12/20.
//

//
//  ContentView.swift
//  decoding_test
//
//  Created by Red Phoenix on 11/12/20.
//

import SwiftUI
import SwiftyJSON
import SDWebImageSwiftUI
import WebKit


struct NewsView: View {
    
    @ObservedObject var list = getData2()
    
    
    var body: some View {
        
     
        VStack {
            
           
            
           
            
            
            NavigationView{
                    
                    List(list.datas2){ i in
                        
                        NavigationLink(destination:
                        
                                        webView(url: i.url)
                                        .navigationBarTitle("", displayMode: .inline)) {
                            VStack (alignment: .leading) {
                                
                                
                                WebImage(url: URL(string: i.image), options: .highPriority, context: nil)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    
                                    
                                    .frame(width: 380, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    
                                    .shadow(color: Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)).opacity(0.9), radius: 9, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 6)
                                
                                VStack (alignment: .leading, spacing: 10){
                                    Text(i.title)
                                        .font(.custom("BentonSans-Bold", size: 21, relativeTo: .body))
                                       
                                    
                                    Text(i.description)
                                        .font(.custom("BentonSans-Book", size: 18, relativeTo: .body))
                                        .foregroundColor(.secondary)
                                        .lineLimit(2)
                                }
                                .padding(.top)
                                .padding(.bottom)
                                
                                
                                    
                            }
                        }
                        
                       
                        
                        
                    }.navigationBarTitle("News API")
                    
                    
            }
            
            HStack {
                Text("Categories")
                    .font(.custom("BentonSans-Bold", size: 21, relativeTo: .body))
                
                Spacer()
            }.padding()
            .padding(.bottom, -24)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ZStack {
                        Image(uiImage: #imageLiteral(resourceName: "Group 8 Copy 7"))
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200)
                            .shadow(color: Color.red.opacity(0.8), radius: 9, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 6)
                        
                        Text("Fitness")
                            .foregroundColor(.white)
                    }
                    
                    ZStack {
                        Image(uiImage: #imageLiteral(resourceName: "Group 10"))
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200)
                            .shadow(color: Color.purple.opacity(0.8), radius: 9, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 6)
                        
                        Text("Music")
                            .foregroundColor(.white)
                    }
                    
                    
                    ZStack {
                        Image(uiImage: #imageLiteral(resourceName: "Group 8 Copy 5"))
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200)
                            .shadow(color: Color.orange.opacity(0.6), radius: 9, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 6)
                        
                        Text("Art")
                            .foregroundColor(.white)
                    }
                    
                    
                    ZStack {
                        Image(uiImage: #imageLiteral(resourceName: "Group 8 Copy 6"))
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200)
                            .shadow(color: Color.blue.opacity(0.8), radius: 9, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 6)
                        
                        
                        Text("Cooking")
                            .foregroundColor(.white)
                    }
                    
                }
                .padding(.leading, 18)
                .padding(.top)
                .padding(.bottom, 24)
                
            }
         
        }
            
            
       
        //
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}


struct dataType2 : Identifiable {
    var id = UUID()
    var title: String
    var description: String
    var url: String
    var image : String
}

class getData2 : ObservableObject {
    @Published var datas2 = [dataType2]()
    
    init() {
        let source = "https://newsapi.org/v2/everything?q=apple&from=2020-12-10&to=2020-12-10&sortBy=popularity&apiKey=e6ead062475946c99ef993ad3f5e180d"
        
        let url = URL(string: source)!
        
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: url) { (data, response, error) in
            if error != nil {
                print(error)
                return
            }
            
            let json = try! JSON(data: data!)
            
            for i in json["articles"]{
                
                let title = i.1["title"].stringValue
                let description = i.1["description"].stringValue
                let url = i.1["url"].stringValue
                let image = i.1["urlToImage"].stringValue
                
                DispatchQueue.main.async {
                    self.datas2.append(dataType2(title: title, description: description, url: url, image: image))
                }
                
                
            }
            
        }.resume()
        
        
    }
}

struct webView : UIViewRepresentable {
    
    
    var url : String
    func makeUIView(context: UIViewRepresentableContext<webView>) -> WKWebView {
        
       let view = WKWebView()
        view.load(URLRequest(url: URL(string: url)!))
        return view
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<webView>) {
        
    }
}

