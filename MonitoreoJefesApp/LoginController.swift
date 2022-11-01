import SwiftUI
import CoreData
import AVFoundation
import UIKit

struct LoginController: View {
    var imagenFondo = Image("muelle")
    var imagenDeco = Image("")
    
    @State private var username = ""
    @State private var password = ""
    @State private var show = false
    
    //persista el token unico de user
    //escaneo qr online
    
    
    var body: some View {
        NavigationView{
            ZStack{
                
               imagenFondo.aspectRatio(contentMode: .fill)
                      Rectangle()
                          .foregroundColor(.clear)
                          .background( LinearGradient(gradient: Gradient(colors: [Color.gray.opacity(0),Color("fonfoLogin")]),startPoint: .top,endPoint: .bottom))
                VStack(spacing: 15){
                    Text("Credenciales")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                        .padding()
        
                    TextField("Legajo", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.gray.opacity(0.40))
                        .cornerRadius(10)
                    
                    TextField("Contraseña", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.gray.opacity(0.40))
                        .cornerRadius(10)
                    
                    NavigationLink(destination: DashboardController()){
                        Text("Ingresar")
                            .foregroundColor(.white)
                            .frame(width: 300, height: 50)
                            .background(Color("button"))
                            .cornerRadius(10)
                    }
                }
            }
                
            }
        }
    }

