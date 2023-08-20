//
//  RandomView.swift
//  Let'sGoTraveling
//
//  Created by Jae kwon Choi on 2023/08/20.
//

import SwiftUI

struct RandomView: View {
    var body: some View {
        VStack {
            HStack {
                Text("추후 변경 예정")

                Spacer()
            }

            ScrollView(.vertical, showsIndicators: false) {
                ForEach(0 ..< 4) { _ in
                    NavigationLink(destination: DetailView()) {
                        VStack {
                            Image("testImage")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 350)
                                .frame(height: 600)
                                .clipped()
                        }
                        .overlay(content: {
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(
                                    Color(red: 92 / 255, green: 213 / 255, blue: 204 / 255),
                                    lineWidth: 0.7
                                )
                        })
                        .cornerRadius(20)
                        .padding(.bottom, 20)
                    }
                }
            }

        }
        .padding(.horizontal, 20)
    }
}

struct RandomView_Previews: PreviewProvider {
    static var previews: some View {
        RandomView()
    }
}
