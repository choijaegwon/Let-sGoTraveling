//
//  LoginView.swift
//  Let'sGoTraveling
//
//  Created by Jae kwon Choi on 2023/08/20.
//

import SwiftUI

struct LoginView: View {

    @State private var isLogin = false

    var body: some View {
        if !self.isLogin {
            VStack {
                Text("로그인 화면")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundColor(.black)
                Spacer()

                VStack(spacing: 20) {
                    Button {
                        print("회원 가입 버튼")
                        self.isLogin.toggle()
                    } label: {
                        Text("카카오 로그인")
                    }

                    Button {
                        print("회원 가입 버튼")
                        self.isLogin.toggle()
                    } label: {
                        Text("애플 로그인")
                    }

                    Button {
                        print("회원 가입 버튼")
                        self.isLogin.toggle()
                    } label: {
                        Text("구글 로그인")
                    }

                }
            }
            .padding(.vertical, 120)
            .onAppear {
                print("\(self.isLogin)")
                print("isLogin \(!self.isLogin)")
            }
        } else {
            MainView()
                .onAppear {
                    print("\(self.isLogin)")
                }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 14"))
    }
}
