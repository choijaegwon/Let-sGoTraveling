//
//  HomeView.swift
//  Let'sGoTraveling
//
//  Created by Jae kwon Choi on 2023/08/20.
//

import SwiftUI

struct HomeView: View {

    @State var currentTab: Int = 0
    
    private enum Constants {
        /// TopTabBarView의 height
        static let viewHeight: CGFloat = 50.0
    }

    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                TabView(selection: self.$currentTab) {

                    RandomView()
                        .tag(0)

                    Text("test1")
                        .tag(1)
                }
                .padding(.top, Constants.viewHeight)
                TopTabBarView(currentTab: self.$currentTab)
            }
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
