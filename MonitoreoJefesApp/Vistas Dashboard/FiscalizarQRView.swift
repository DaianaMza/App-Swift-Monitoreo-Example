//
//
//  FiscalizarQRView
//
//  Created by Daiana Meza on 17/08/2022.
//

import Foundation
import SwiftUI
import CodeScanner
/*struct FiscalizarQRView: View {
    @State private var showScanner = false
    @State private var qrText = " "
    func escanear(result : Result<ScanResult,ScanError>){
        showScanner = true
        switch result{
        case .success(let result):
            let details = result.string.components(separatedBy: "")
            qrText = details[0]
            print(qrText)
        case .failure(let error): print("ha fallado el escaneo del QR, ", error.localizedDescription) }  }
    var body: some View {   CodeScannerView(codeTypes: [.qr], completion: escanear) }   }   */

struct FiscalizarQRView: View {
    @State private var isPresentingScanner = true
    @State private var scannedCode: String?
    var body: some View {
        VStack(spacing: 9) {    Text(scannedCode ?? "Escanea tu QR")    }
        .sheet(isPresented: $isPresentingScanner) {
            CodeScannerView(codeTypes: [.qr]) { response in
                if case let .success(result) = response {
                    scannedCode = result.string
                    isPresentingScanner = false
                }
            }
        }
    }
}

//apertura camara

