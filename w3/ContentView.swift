//
//  ContentView.swift
//  w3
//
//  Created by Duc Trinh Van Minh on 20/07/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingAlert = false
    var body: some View {
        ZStack {
            Color(red: 1,green: 1, blue: 1)
                .ignoresSafeArea(.all)
            VStack {
                Image("rmit-logo-black")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(50)
                    .frame(width: 350)
                Text("MORE WAR MORE MONEY")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(.red)
                Spacer()
                Image("zelensky")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 400)
                Spacer()
                Button(action: {isShowingAlert = true
                            }) {
                                Image(systemName: "info.circle")
                                                    .font(.title)
                                                    .foregroundColor(.red)
                            }
                            .alert(isPresented: $isShowingAlert) {
                                // Define the secret message alert
                                Alert(title: Text("Secret Message"),
                                      message: Text("Im a RICH PUPPET"),
                                      dismissButton: .default(Text("OK")))
                                ///
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
