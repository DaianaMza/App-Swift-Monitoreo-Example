//
//  InfraccionController.swift
//  MonitoreoJefes
//
//  Created by Daiana Meza on 17/08/2022.
//

import SwiftUI
import UIKit



struct InfraccionView: View {
    @State var presentPopup = false
    var body: some View {
        ZStack{
            VStack{
                Text("Seleccione Empresa : ")
                    .font(.custom("Arial", size: 20))
        NavigationLink(destination: InfraccionCasimiroView()){
                Text("Casimiro Zbikoski S.A")
                               .foregroundColor(.white)
                               .frame(width: 300, height: 50)
                               .background(Color.orange)
                               .cornerRadius(10)
                               .padding()
                        }
                
                NavigationLink(destination: InfraccionRosarioView()){
                           Text("Ntra Señora del Rosario S.A")
                               .foregroundColor(.white)
                               .frame(width: 300, height: 50)
                               .background(Color.mint)
                               .cornerRadius(10)
                               .padding()
                    }
                
                NavigationLink(destination: DashboardController()){
                           Text("Tipoka S.A")
                               .foregroundColor(.white)
                               .frame(width: 300, height: 50)
                               .background(Color.gray)
                               .cornerRadius(10)
                               .padding()
            }
                    }
            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
        }.navigationTitle("Infracciones")
    }
}



