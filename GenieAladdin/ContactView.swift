//
//  ContactView.swift
//  GenieAladdin
//
//  Created by Dusan Orescanin on 27/08/2022.
//

import SwiftUI

struct ContactView: View {
    @State var buttonClicked = false
    
    var body: some View {
        VStack {
            Text("Ou me trouver?")
                .font(.title)
                .foregroundColor(.accentColor)
                .bold()
            Image("cave_outside")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(15)
                .padding()
            Button("Dans la cave des merveilles") {
                buttonClicked.toggle()
            }.buttonStyle(.borderedProminent)
                .sheet(isPresented: $buttonClicked) {
                    VStack {
                        Text("Bien au chaud à l'intérieur de la lampe")
                            .foregroundColor(.accentColor)
                            .bold()
                        Image("dans_lampe")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
            Image("cave_inside")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(15)
                .shadow(color: .accentColor, radius: 2, x: 3, y: 3)
                .padding()
            Spacer()
            Text("Attention !!! \nVous ne pouvez prendre que la lampe dans cette cave aux merveilles !")
                .font(.caption)
                .bold()
                .italic()
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
        }
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
