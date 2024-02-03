//
//  ContentView.swift
//  LoginSwiftUI
//
//  Created by Marcello Gonzatto Birkan on 24/11/23.
//

import SwiftUI

struct loginView: View {
  @State var email: String = ""
  @State var password: String = ""
  var body: some View {
    ZStack {
      Color.black.ignoresSafeArea()
      VStack(spacing: 15) {
        Text("Login")
          .foregroundStyle(.white)
          .font(.title)
          .bold()
        
        Image("logo")
          .resizable()
          .scaledToFit()
          .frame(width: 200)
          .padding()
        
        TextField("Digite seu e-mail: ", text: $email)
          .textFieldStyle(.roundedBorder)
          .foregroundStyle(.black)
          .keyboardType(.emailAddress)
        
        SecureField("Digite sua senha:", text: $password)
          .textFieldStyle(.roundedBorder)
          .foregroundStyle(.black)
          .keyboardType(.default)
        
        Button {
          print("clicou no botão Login")
        } label: {
          Text("Login".uppercased())
            .frame(height: 40)
            .frame(maxWidth: .infinity)
            .foregroundStyle(.white)
            .font(.title3)
            .bold()
            .background(Color.pink)
            .cornerRadius(8)
        }
        
        HStack {
          Text("Não tem conta?")
            .foregroundStyle(.white)
          Button {
            print("clicou no botão Cadastre-se")
          } label: {
            Text("Cadastre-se")
              .foregroundStyle(.pink)
              .font(.headline)
              .fontWeight(.semibold)
              
          }
        }
        
        
        Spacer()
      }
      .padding(.horizontal, 20)
    }
  }
}

#Preview {
  loginView()
}
