//
//  MyTabView.swift
//  GenieAladdin
//
//  Created by Dusan Orescanin on 27/08/2022.
//

import SwiftUI

struct MyTabView: View {
    @State var selection = 0
    var body: some View {
        TabView(selection: $selection) {
            <#code#>
        }
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
