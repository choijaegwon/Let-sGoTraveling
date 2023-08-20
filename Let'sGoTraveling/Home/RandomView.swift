//
//  RandomView.swift
//  Let'sGoTraveling
//
//  Created by Jae kwon Choi on 2023/08/20.
//

import SwiftUI

struct RandomView: View {

    private enum Constants {

        /// view의 horizontal Padding
        static let viewHorizontalPadding: CGFloat = 20.0

        /// view의 bottom Padding
        static let imageBottomPadding: CGFloat = 20.0

        /// image의 width
        static let imageWidth: CGFloat = 350.0
        /// image의 height
        static let imageHeight: CGFloat = 600.0

        /// image의 Radius
        static let cornerRadius: CGFloat = 20.0

        /// StrokeColorOpcity
        static let strokeColorOpacity: CGFloat = 0.3
    }

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
                                .frame(width: Constants.imageWidth)
                                .frame(height: Constants.imageHeight)
                                .clipped()
                        }
                        .overlay(content: {
                            RoundedRectangle(cornerRadius: Constants.cornerRadius)
                                .stroke(.black.opacity(Constants.strokeColorOpacity))
                        })
                        .cornerRadius(Constants.cornerRadius)
                        .padding(.bottom, Constants.imageBottomPadding)
                    }
                }
            }

        }
        .padding(.horizontal, Constants.viewHorizontalPadding)
    }
}

struct RandomView_Previews: PreviewProvider {
    static var previews: some View {
        RandomView()
    }
}
