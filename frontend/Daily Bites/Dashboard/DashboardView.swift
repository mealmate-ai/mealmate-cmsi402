
import SwiftUI
import UIKit

struct DashboardView: View {
    var body: some View {
        
        //DESIGN ---------------------------------
        ZStack{
            VStack {
                Rectangle()
                    .fill(Color(red: 222 / 255, green: 193 / 255, blue: 255 / 255))
                    .frame(width: 419, height: 115)
                    .overlay(Text("Trends")
                        .fontWeight(.regular)
                        .font(.custom("Hiragino Sans W3", size: 34))
                        .foregroundColor(.gray)
                        .offset(y: 17)
                        , alignment:
                    .center)
                    .cornerRadius(5.0)
                HStack {
                    Button(action: {print("Day")}) {
                        Text("Day")
                            .fontWeight(.regular)
                            .font(.custom("Hiragino Sans W3", size: 22))
                            .foregroundColor(.gray)
                            .padding(25)
                    }
                    Button(action: {print("Week")}) {
                        Text("Week")
                            .fontWeight(.regular)
                            .font(.custom("Hiragino Sans W3", size: 23))
                            .foregroundColor(.gray)
                            .padding(25)
                    }
                    Button(action: {print("Month")}) {
                        Text("Month")
                            .fontWeight(.regular)
                            .font(.custom("Hiragino Sans W3", size: 22))
                            .foregroundColor(.gray)
                            .padding(25)
                    }
                }
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: 425, height: 2)
                
                HStack (alignment: .center, spacing: 0, content:{
                    Text("Hello, Name")
                        .fontWeight(.regular)
                        .font(.custom("Hiragino Sans W3", size: 33))
                        .foregroundColor(.gray)
                        .padding(20)
                        .lineLimit(nil)
                        .frame(width: 250, height: 70, alignment: .trailing)
                Spacer()
                })
                
                Spacer()
                
            }
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            DashboardView()
        }
    }
}