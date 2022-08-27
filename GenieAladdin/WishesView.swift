//
//  WishesView.swift
//  GenieAladdin
//
//  Created by Dusan Orescanin on 27/08/2022.
//

import SwiftUI

struct WishesView: View {
    
    @State var aladdin = false
    @State var abou = false
    @State var jafar = false

    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("Préparez vous à rester bouche bée.\nMes réalisations sont plus folles les unes que les autres")
                        .foregroundColor(.accentColor)
                        .multilineTextAlignment(.center)
                    Image("genie")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    Divider()
                    NavigationLink {
                        TransforamtionView(transformed: $aladdin, falseValue: "aladdin", trueValue: "ali")
                    } label: {
                        HStack {
                            Image("aladdin")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 150)
                                .cornerRadius(25)
                            Text("Voulez-vous voir le fabuleux makeover de notre cher Aladdin?")
                        }
                    }

                    NavigationLink {
                        TransforamtionView(transformed: $jafar, falseValue: "jafar", trueValue: "jafar_snake")
                    } label: {
                        VStack {
                            Text("Quelle était la mauvaise idée de Jafar ?")
                            Image("jafar")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 125, height: 125)
                                .clipShape(Circle())
                        }.padding()
                        .background(.mint)
                        .cornerRadius(17)
                    }

                    NavigationLink("Et Abou dans tout ça ???") {
                        TransforamtionView(transformed: $abou, falseValue: "abu_monkey", trueValue: "abu_elephant")
                    }
                }
                Image("applause")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("Alors c'est qui le patron?")
            }
            .navigationTitle("Réalisations")
        }
    }
}

struct WishesView_Previews: PreviewProvider {
    static var previews: some View {
        WishesView()
    }
}
