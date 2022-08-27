//
//  TransforamtionView.swift
//  GenieAladdin
//
//  Created by Dusan Orescanin on 27/08/2022.
//

import SwiftUI

struct TransforamtionView: View {
    @Binding var transformed: Bool
    
    var falseValue: String
    var trueValue: String
    var body: some View {
        Button {
            transformed.toggle()
        } label: {
            Image(transformed ? trueValue : falseValue)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
        }
    }
}

struct TransforamtionView_Previews: PreviewProvider {
    static var previews: some View {
        TransforamtionView(transformed: .constant(false),
                           falseValue: "aladdin",
                           trueValue: "ali")
    }
}
