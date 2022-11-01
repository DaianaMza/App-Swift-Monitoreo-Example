//  DashboardController.swift
//  MonitoreoJefes
//  Created by Daiana Meza on 16/08/2022.

import SwiftUI
struct DashboardController: View {
var columnas = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
    
var body: some View {
    VStack{ HStack{  Text("Nombre, Apellido")
                        .font(.title)
                        .fontWeight(.bold)
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                        .foregroundColor(Color("color")) }
                        .padding(.horizontal)
                        /////////////////
      LazyVGrid(columns: columnas, spacing: 30) {
              ForEach(dataDash){ data in
                  ZStack{
                      NavigationLink( destination: {   switch data.SubTitle {
                      case let str where str.contains("Planilla"):
                          fiscalizarPlanilla
                      case let str where str.contains("QR"):
                          fiscalizarQR
                      case let str where str.contains("Infracción"):
                           infracciones
                      case let str where str.contains("Estadistica"):
                          estadisticas
                      default :
                          fiscalizarPlanilla }
                                    })
                                { ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)){
                           VStack(alignment: .leading, spacing: 2){
                                    Text(data.Title)
                                                .foregroundColor(.white)
                                                Text(data.SubTitle)
                                   .font(.title2)
                                                        .fontWeight(.bold)
                                                        .foregroundColor(.white)
                                                        .padding(.top , 10)
                                    HStack{Spacer(minLength: 0)}
                                    }.padding()
                                .background(Color(data.Image)) //acordar, nombre de la imagen igual al color en assets
                                                .cornerRadius(20)
                                                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                                    Image(data.Image)
                                                    .renderingMode(.template)
                                                    .foregroundColor(.white)
                                                    .padding()
                                                    .background(Color.white.opacity(0.25))
                                      .clipShape(Circle())
                                    }
                                }
                            }
                        }
                    }
                          .padding(.horizontal)
                          .padding(.top,15)
                          Spacer(minLength: 0) /////////////
                        }.padding(.top)
                    }
                }

struct DataDashboard : Identifiable {
    var id : Int
    var Title : String
    var SubTitle: String
    var Image : String
}
    var fiscalizarPlanilla = FiscalizarPlanillaView()
    var fiscalizarQR = FiscalizarQRView()
    var  estadisticas = EstadisticasView()
    var infracciones = InfraccionView()

var dataDash = [
    DataDashboard(id: 0, Title: "Fiscalizar", SubTitle: "Planilla", Image: "planilla"),
    DataDashboard(id: 1, Title: "Fiscalizar", SubTitle: "QR", Image: "QR"),
    DataDashboard(id: 2, Title: "Infracción", SubTitle: "Infracción", Image: "infraccion"),
    DataDashboard(id: 3, Title: "Estadistica", SubTitle: "Estadistica", Image: "estadisticas"),
    DataDashboard(id: 3, Title: "Monitoreo", SubTitle: "Monitoreo", Image: "estadisticas")
]


//monitoreo saber si el coche esta adelantado u atraso , grid


