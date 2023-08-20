//
//  DetailView.swift
//  Let'sGoTraveling
//
//  Created by Jae kwon Choi on 2023/08/20.
//

import SwiftUI

struct DetailView: View {

    @Environment(\.dismiss) private var dismiss

    @State private var saveButton = false

    private enum Constants {

        /// view의 horizontal Padding
        static let viewHorizontalPadding: CGFloat = 20.0

        /// view의 bottom Padding
        static let viewBottomPadding: CGFloat = 20.0

        /// image의 bottom Padding
        static let imageBottomPadding: CGFloat = 20.0

        /// image의 width
        static let imageWidth: CGFloat = 350.0
        /// image의 height
        static let imageHeight: CGFloat = 600.0

        /// image의 Radius
        static let cornerRadius: CGFloat = 20.0

        /// StrokeColorOpcity
        static let strokeColorOpacity: CGFloat = 0.3

        /// descriptionBackgroundColorOpcity
        static let descriptionBackgroundColorOpcity: CGFloat = 0.4
    }

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: .zero) {
                TabView {
                    ForEach(0 ..< 3) { _ in
                        Image("testImage")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: Constants.imageWidth)
                            .frame(height: Constants.imageHeight)
                            .clipped()
                            .overlay(content: {
                                RoundedRectangle(cornerRadius: Constants.cornerRadius)
                                    .stroke(.black.opacity(Constants.strokeColorOpacity))
                            })
                            .cornerRadius(Constants.cornerRadius)
                    }
                }
                .frame(width: Constants.imageWidth)
                .frame(height: Constants.imageHeight)
                .padding(.bottom, Constants.imageBottomPadding)
                .tabViewStyle(.page)

                DescriptionView(saveButton: self.$saveButton)

            }.padding(.bottom, Constants.viewBottomPadding)
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                ToolBarCsutomBackButton {
                    self.dismiss()
                }
            }
        }
    }
}

/// 설명 카드
struct DescriptionView: View {

    @Binding var saveButton: Bool

    private enum Constants {

        /// view의 width
        static let viewWidth: CGFloat = 350.0

        /// view의 padding
        static let viewPadding: CGFloat = 20.0

        /// cornerRadius
        static let cornerRadius: CGFloat = 20.0

        /// button의 width
        static let saveButtonWidth: CGFloat = 14.0

        /// button의 height
        static let saveButtonHeight: CGFloat = 14.0

        /// StrokeColorOpcity
        static let strokeColorOpacity: CGFloat = 0.3

        /// descriptionBackgroundColorOpcity
        static let descriptionBackgroundColorOpcity: CGFloat = 0.4

        /// tag Text Size
        static let tagTextFontSize: CGFloat = 18.0

        static let tagTextTrailingPadding: CGFloat = 16.0

        static let tagTextBottomPadding: CGFloat = 5.0

        static let textFontSize: CGFloat = 14.0

        /// 점선 높이
        static let dividerHeight: CGFloat = 2.0

        /// Divider opacity
        static let dividerColorOpacity: CGFloat = 0.5
    }

    var body: some View {
        ZStack {
            Color.blue.opacity(Constants.descriptionBackgroundColorOpcity)

            VStack {
                HStack {
                    Text("#나라")
                    Text("#지역")
                    Text("#위치")

                    Spacer()
                }
                .foregroundColor(Color.white)
                .font(.system(size: Constants.tagTextFontSize, weight: .bold))
                .padding(.trailing, Constants.tagTextTrailingPadding)
                .padding(.bottom, Constants.tagTextBottomPadding)

                Text(
                    """
                    대충 어쩌꾸 저쩌꾸대충 어쩌꾸 저쩌꾸대충 어쩌꾸 저쩌꾸대충 어쩌꾸 저쩌꾸대충 어쩌꾸 저쩌꾸대충 어쩌꾸 저쩌꾸대충 어쩌꾸 저쩌꾸대충 어쩌꾸 저쩌꾸대충 어쩌꾸 저쩌꾸대충 어쩌꾸 저쩌꾸
                    """
                )
                .foregroundColor(Color.white)
                .font(.system(size: Constants.textFontSize, weight: .medium))

                Spacer()

                Divider()
                    .frame(height: Constants.dividerHeight)
                    .overlay(Color.white.opacity(Constants.dividerColorOpacity))

                HStack {
                    Text("2023/08/19")
                        .foregroundColor(Color.white)
                        .font(.system(size: Constants.textFontSize, weight: .medium))
                    Spacer()
                    Button {
                        self.saveButton.toggle()
                    } label: {
                        Image(systemName: self.saveButton ? "bookmark.fill" : "bookmark")
                            .resizable()
                            .renderingMode(.template)
                            .frame(width: Constants.saveButtonWidth, height: Constants.saveButtonHeight)
                            .foregroundColor(.white)
                    }

                }
            }
            .padding(.all, Constants.viewPadding)
        }
        .frame(width: Constants.viewWidth)
        .clipped()
        .overlay(content: {
            RoundedRectangle(cornerRadius: Constants.cornerRadius)
                .stroke(.black.opacity(Constants.strokeColorOpacity))
        })
        .cornerRadius(Constants.cornerRadius)
    }
}

/// CustomTopBackButton
struct ToolBarCsutomBackButton: View {

    var action: () -> Void

    var body: some View {
        Button {
            self.action()
        } label: {
            HStack {
                Image(systemName: "chevron.backward")
                    .foregroundColor(Color.black)
                Spacer()
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
