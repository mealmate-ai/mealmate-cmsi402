
import SwiftUI

struct RecipesView: View {
    
//    @State var buttonTapped: Bool = false
    //    var recipes: [Recipes] = []

    var body: some View {
        //DESIGN ---------------------------------
        NavigationView {
        VStack {
            RoundedRectangle(cornerRadius: 5.0)
                .fill(Color(red: 4 / 255, green: 146 / 255, blue: 194 / 255))
                .frame(width: 419, height: 120)
                .overlay(Text("Recipes")
                    .font(.custom("Hiragino Sans W3", size: 34))
                    .foregroundColor(.white)
<<<<<<< HEAD
                    , alignment:
                    .center)
            
            HStack {
=======
                            .offset(y: 20)
                    , alignment:
                    .center)
            
            HStack(spacing:30) {
>>>>>>> bree-spring
                Button(action: { print("All") })  {
                    Text("All Recipes")
                        .font(.custom("Hiragino Sans W3", size: 20))
                        .foregroundColor(.gray)
<<<<<<< HEAD
                        .frame(width: 190, height: 80)
=======
                        .frame(width: 160, height: 50)
>>>>>>> bree-spring
                }.buttonStyle(PrimaryButtonStyle())
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color(red: 4 / 255, green: 146 / 255, blue: 194 / 255), lineWidth: 1)
                )

                Button(action: { print("Saved") }) {
                    Text("Saved Recipes")
                        .font(.custom("Hiragino Sans W3", size: 20))
                        .foregroundColor(.gray)
<<<<<<< HEAD
                        .frame(width: 190, height: 80)
=======
                        .frame(width: 160, height: 50)
>>>>>>> bree-spring
                }.buttonStyle(PrimaryButtonStyle())
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color(red: 4 / 255, green: 146 / 255, blue: 194 / 255), lineWidth: 1)
                )
            }
            
<<<<<<< HEAD
            NavigationView {
                List(1...5, id: \.self) { index in
                    NavigationLink(
                        destination: Text("Food Details"),
                        label: {
                            Text("Food Item #\(index)")
                                .font(.custom("Hiragino Sans W3", size: 22))
                                .foregroundColor(.gray)
                        }).navigationBarTitle("")
                        .navigationBarHidden(true)
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            
            Button(action: { print("Generate Recipes") }) {
                Text("GENERATE NEW RECIPES")
                    .frame(width: 320, height: 40)
=======
          //  NavigationView {
                List(recipes) { recipe in
                    NavigationLink(destination: RecipeDetails(recipe: recipe)) {
                        RecipeRow(recipe: recipe)
                    }
                }
//            }
//            .navigationBarTitle("")
//            .navigationBarHidden(true)
//            .padding(10)
            
            Button(action: { print("Generate Recipes") }) {
                Text("GENERATE NEW RECIPES")
                    .frame(width: 260, height: 20)
>>>>>>> bree-spring
                    .padding()
                    .font(.custom("Hiragino Sans W3", size: 18))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
            }.buttonStyle(PrimaryButtonStyle())
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color(red: 4 / 255, green: 146 / 255, blue: 194 / 255), lineWidth: 1)
            )
<<<<<<< HEAD
            
=======
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
>>>>>>> bree-spring
            
            Spacer()
        }
    }
    
    struct RecpiesView_Previews: PreviewProvider {
        static var previews: some View {
            RecipesView()
                .background(Color(.systemBackground))
                .edgesIgnoringSafeArea(.top)
        }
    }
    
    struct PrimaryButtonStyle: ButtonStyle {
        func makeBody(configuration: Self.Configuration) -> some View {
            configuration.label
                .foregroundColor(.white)
                .background(configuration.isPressed ? Color(.systemGray5) : Color.white)
        }
    }
}
