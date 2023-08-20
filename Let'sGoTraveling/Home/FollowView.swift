//
//  FollowView.swift
//  Let'sGoTraveling
//
//  Created by Jae kwon Choi on 2023/08/20.
//

import SwiftUI

struct FollowView: View {
    var body: some View {
        ZStack {
            Color.red
                .opacity(0.2)
            VStack {
                Spacer()
                Text("Hi, FollowView!")
            }
        }
    }
}

struct FollowView_Previews: PreviewProvider {
    static var previews: some View {
        FollowView()
    }
}
