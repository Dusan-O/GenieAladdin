//
//  HomePageView.swift
//  GenieAladdin
//
//  Created by Dusan Orescanin on 27/08/2022.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                Image("cover")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 250)
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 125, height: 125)
                    .background(.white)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                        .stroke(.indigo, style: StrokeStyle(lineWidth: 3)))

            }
            Text("L'app du Génie")
                .font(.title)
                .foregroundColor(.accentColor)
                .bold()
            Divider()
                .frame(height: 2)
                .background(.indigo)
                .padding(EdgeInsets(top: 0, leading: 18, bottom: 0, trailing: 18))
            Text("Venez frotter la lampe pour obtenir vos 3 voeux, et ainsi réaliser vos rêves les plus fous!")
                .foregroundColor(.accentColor)
                .italic()
                .multilineTextAlignment(.center)
                .padding()
            Image("lamp")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .cornerRadius(25)
                .padding()
                .clipped()
            Spacer()
        }.edgesIgnoringSafeArea(.all)
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
