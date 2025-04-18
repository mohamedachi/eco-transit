//
//  LoginInView.swift
//  ecotransit
//
//  Created by Mohamed Achi on 4/11/2023.
//

import SwiftUI

struct LoginInView: View {
    @State private var email: String = ""
    @State private var password : String = ""
    var body: some View {
        NavigationView{
            ZStack(alignment: .topLeading){
                VStack{
                    VStack(spacing: 40){
                        ZStack{
                            Ellipse()
                                .frame(width:510,height: 478)
                                .padding(.leading, -200)
                                .foregroundColor(Color("background"))
                                .padding(.top, -200)
                            Ellipse()
                                .frame(width:458,height: 420)
                                .padding(.trailing, -500)
                                .foregroundColor(Color("background2"))
                                .padding(.top, -200)
                            VStack{
                                Image("logo")
                                    .resizable()
                                    .frame(width: 80, height: 80)
                                    .padding(.leading, 20)
                                    .cornerRadius(15)
                                    .padding(.horizontal, -200)
                                
                                Text("Welcome, \n Eco-transit")
                                    .foregroundColor(.white)
                                    .font(.system(size: 35))
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                                    .padding(.leading, 20)
                            }
                            
                        }
                        VStack(spacing: 30){
                            VStack(spacing: 30){
                                CustomTextField(placeHolder: "Email", imageName: "envelope", bColor: "text", tOpacity: 0.6, value: $email)
                                CustomTextField(placeHolder: "Password", imageName: "lock", bColor: "text", tOpacity: 0.6, value: $password)
                                
                                
                            }
                            VStack{
                               
                                            NavigationLink {
                                                // destination view to navigation to
                                                ForgotPasswordView()
                                            } label: {

                                                    Text("Forget Password ?")
                                                        .font(.system(size: 18))
                                                        .foregroundColor(Color("background2"))
                                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                                }
                                Button(action: {}, label: {
                                    CustomButton(title: "Sign in", bgColor: "background2")
                                    
                                })
                            }.padding(.horizontal, 20)
                            HStack{
                                Button(action: {}, label: {
                                    Image("fb")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .padding(.horizontal, 60)
                                        .padding(.vertical, 15)
                                        .background(Color("fbback"))
                                        .cornerRadius(15)
                                })
                                Spacer()
                                Button(action: {}, label: {
                                    Image("google")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .padding(.horizontal, 60)
                                        .padding(.vertical, 15)
                                        .background(Color("gback"))
                                        .cornerRadius(15)
                                })
                            }
                            .padding(.horizontal, 30)
                        }
                    }
                    Spacer()
                    HStack{
                        Text("Dont have an account")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .font(.system(size: 18))
                        NavigationLink {
                            // destination view to navigation to
                            SignInView()
                        } label: {

                            Text("Sign up")
                                .font(.system(size: 18))
                                .foregroundColor(Color("background2"))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            }
                    }
                    .frame(height: 63)
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
                    .background(Color("background"))
                    .ignoresSafeArea()
                }
            }
            
        }
        .navigationBarHidden(true)
    }}
#Preview {
    LoginInView()
}
