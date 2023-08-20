//
//  TopTabBarView.swift
//  Let'sGoTraveling
//
//  Created by Jae kwon Choi on 2023/08/20.
//

import SwiftUI

struct TopTabBarView: View {

    @Binding var currentTab: Int
    @Namespace var namespace

    var TopTabBarOptions: [String] = ["랜덤", "팔로잉"]

    private enum Constants {
        /// 뷰의 width
        static let viewWidth: CGFloat = 150.0

        /// 뷰의 height
        static let viewHeight: CGFloat = 50.0
    }

    var body: some View {
        HStack {
            HStack {
                ForEach(self.TopTabBarOptions.indices, id: \.self) { index in
                    TopTabBarItem(
                        currentTab: self.$currentTab, namespace: self.namespace.self,
                        topTabBarItemName: self.TopTabBarOptions[index],
                        tab: index
                    )
                }
            }
            .frame(width: Constants.viewWidth)
            Spacer()
        }
        .background(Color.white)
        .frame(height: Constants.viewHeight)
    }
}

struct TopTabBarItem: View {

    @Binding var currentTab: Int

    let namespace: Namespace.ID
    var topTabBarItemName: String
    var tab: Int

    private enum Constants {
        /// 아이콘 Size
        static let iconSize: CGFloat = 18.0

        /// 아이콘 height
        static let barHeight: CGFloat = 4.0
    }

    var body: some View {
        Button {
            self.currentTab = self.tab
        } label: {
            VStack {
                Spacer()
                Text(self.topTabBarItemName)
                    .foregroundColor(.black)
                    .font(.system(size: Constants.iconSize, weight: .medium))
                if self.currentTab == self.tab {
                    Color.black
                        .frame(height: Constants.barHeight)
                        .matchedGeometryEffect(id: "underLine", in: self.namespace, properties: .frame)
                } else {
                    Color.clear.frame(height: Constants.barHeight)
                }
            }
            .animation(.spring(), value: self.currentTab)
        }
    }
}

struct TopTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TopTabBarView(currentTab: .constant(0))
    }
}
