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
import WebKit


struct WiredView: View {
    
    @ObservedObject var list = getData()
    
    
    var body: some View {
        
     
            NavigationView{
                
                
                
                
                
                List(list.datas){ i in
                    
                    NavigationLink(destination:
                    
                                    webViews(url: i.url)
                                    .navigationBarTitle("", displayMode: .inline)) {
                      
                    
                    
                    
                    VStack (alignment: .leading) {
                        Text(i.title)
                            .fontWeight(.bold)
                        
                        Text(i.summary)
                            .foregroundColor(.secondary)
                            
                    }
                    
                }.navigationBarTitle("Wired News")
                
                
            }
            }
            
            
       
        //
    }
}

struct WiredView_Previews: PreviewProvider {
    static var previews: some View {
        WiredView()
    }
}


struct dataType : Identifiable {
    var id = UUID()
    var title: String
    var summary: String
    var url: String
}

class getData : ObservableObject {
    @Published var datas = [dataType]()
    
    init() {
        let source = "https://feed2json.org/convert?url=https%3A%2F%2Fwww.wired.com%2Ffeed%2Frss"
        
        let url = URL(string: source)!
        
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: url) { (data, response, error) in
            if error != nil {
                print(error)
                return
            }
            
            let json = try! JSON(data: data!)
            
            for i in json["items"]{
                
                let title = i.1["title"].stringValue
                let summary = i.1["summary"].stringValue
                let url = i.1["url"].stringValue
                
                DispatchQueue.main.async {
                    self.datas.append(dataType(title: title, summary: summary, url: url))
                }
                
                
            }
            
        }.resume()
        
        
    }
}

struct webViews : UIViewRepresentable {
    
    
    var url : String
    func makeUIView(context: UIViewRepresentableContext<webViews>) -> WKWebView {
        
       let view = WKWebView()
        view.load(URLRequest(url: URL(string: url)!))
        return view
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<webViews>) {
        
    }
}
