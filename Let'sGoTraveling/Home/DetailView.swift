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

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: .zero) {
                TabView {
                    ForEach(0 ..< 3) { _ in
                        Image("testImage")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 350)
                            .frame(height: 600)
                            .clipped()
                            .overlay(content: {
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(
                                        Color(red: 92 / 255, green: 213 / 255, blue: 204 / 255),
                                        lineWidth: 0.7
                                    )
                            })
                            .cornerRadius(20)
                    }
                }
                .frame(width: 350)
                .frame(height: 600)
                .padding(.bottom, 20)
                .tabViewStyle(.page)

                ZStack {
                    Color.blue.opacity(0.4)

                    VStack {
                        HStack {
                            Text("#나라")
                            Text("#지역")
                            Text("#위치")

                            Spacer()
                        }
                        .foregroundColor(Color.white)
                        .font(.system(size: 18, weight: .bold))
                        .padding(.trailing, 16)
                        .padding(.bottom, 5)

                        Text(
                            """
                            대충 어쩌꾸 저쩌꾸대충 어쩌꾸 저쩌꾸대충 어쩌꾸 저쩌꾸대충 어쩌꾸 저쩌꾸대충 어쩌꾸 저쩌꾸대충 어쩌꾸 저쩌꾸대충 어쩌꾸 저쩌꾸대충 어쩌꾸 저쩌꾸대충 어쩌꾸 저쩌꾸대충 어쩌꾸 저쩌꾸
                            """
                        )
                        .foregroundColor(Color.white)
                        .font(.system(size: 14, weight: .medium))

                        Spacer()

                        Divider()
                            .frame(height: 2)
                            .overlay(Color.white.opacity(0.5))

                        HStack {
                            Text("2023/08/19")
                                .foregroundColor(Color.white)
                                .font(.system(size: 14, weight: .medium))
                            Spacer()
                            Button {
                                self.saveButton.toggle()
                            } label: {
                                Image(systemName: self.saveButton ? "bookmark.fill" : "bookmark")
                                    .resizable()
                                    .renderingMode(.template)
                                    .frame(width: 14, height: 16)
                                    .foregroundColor(.white)
                            }

                        }
                    }
                    .padding(.all, 20)
                }
                .frame(width: 350)
                .clipped()
                .overlay(content: {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(
                            Color(red: 92 / 255, green: 213 / 255, blue: 204 / 255),
                            lineWidth: 0.7
                        )
                })
                .cornerRadius(20)
            }
        }
        .padding(.bottom, 20)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    self.dismiss()
                } label: {
                    HStack {
                        Image(systemName: "chevron.backward")
                            .foregroundColor(Color.black)
                        Spacer()
                    }
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
