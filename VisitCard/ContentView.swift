//
//  ContentView.swift
//  VisitCard
//
//  Created by Thomas Couteau on 13/08/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack{
                ZStack {
                    Ellipse()
                        .frame(width: 700, height: 300)
                        .foregroundColor(.purple)
                        .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                        .position(x:165,y:-100)
                        .padding()
                    Image("profile")
                        .resizable()
                        .frame(width: 150,height: 150)
                        .aspectRatio(contentMode: .fit)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                }
                Text("Thomas C")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(Color(white:0.2))
                    .bold()
                HStack(alignment: .center, content: {
                    Text("Développeur iOS")
                        .font(.headline)
                        .foregroundStyle(Color(white:0.5))
                        .bold()
                    Spacer()
                    ZStack{
                        Rectangle()
                            .foregroundColor(.purple)
                            .frame(width: 125, height: 25)
                            .cornerRadius(20)
                        Text("Open to work")
                            .foregroundStyle(.white)
                            .bold()
                    }
                })
            }
            
            ZStack {
                Text("Développeur web en dernière année de Master, je suis le Bootcamp Swift Master pour devenir développeur iOS.")
                    .lineLimit(4)
                    .padding()
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .background {
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.gray)
                            .background {
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(Color(white:0.9))
                            }
                    }
                
                
            }
            .padding(.vertical)
            
            VStack(alignment:.leading,spacing: 20,content: {
                HStack
                {
                    Image(systemName:"envelope")
                        .frame(width: 40, height: 40)
                        .background(Color.red)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    Text("mrthomas.couteau@gmail.com")
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                HStack
                {
                    Image(systemName:"link")
                        .frame(width: 40, height: 40)
                        .background(Color.red)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    Text("https://github.com/ThomasCouteau")
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                HStack
                {
                    Image(systemName: "phone")
                        .frame(width: 40, height: 40)
                        .background(Color.red)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    Text("+(0) 33 6 00 00 00 00")
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                
            })
            VStack(alignment: .leading, spacing: 10, content: {
                HStack(content: {
                    Text("Vue")
                    Spacer()
                    HStack(alignment:.center,spacing:0,content: {
                        Image(systemName: "star.fill")
                            .foregroundStyle(.purple)
                        Image(systemName: "star.fill")
                            .foregroundStyle(.purple)
                        Image(systemName: "star.fill")
                            .foregroundStyle(.purple)
                        Image(systemName: "star.fill")
                            .foregroundStyle(.purple)
                        Image(systemName: "star.leadinghalf.filled")
                            .foregroundStyle(.purple)
                    })
                })
                HStack(content: {
                    Text("GitHub")
                    Spacer()
                    HStack(alignment: .center, spacing:0, content: {
                        Image(systemName: "star.fill")
                            .foregroundStyle(.purple)
                        Image(systemName: "star.fill")
                            .foregroundStyle(.purple)
                        Image(systemName: "star.fill")
                            .foregroundStyle(.purple)
                        Image(systemName: "star.leadinghalf.filled")
                            .foregroundStyle(.purple)
                        Image(systemName: "star")
                            .foregroundStyle(.purple)
                    })
                })
                HStack(content: {
                    Text("Javascript")
                    Spacer()
                    HStack(alignment: .center, spacing:0, content: {
                        Image(systemName: "star.fill")
                            .foregroundStyle(.purple)
                        Image(systemName: "star.fill")
                            .foregroundStyle(.purple)
                        Image(systemName: "star.fill")
                            .foregroundStyle(.purple)
                        Image(systemName: "star.fill")
                            .foregroundStyle(.purple)
                        Image(systemName: "star")
                            .foregroundStyle(.purple)
                    })
                })
            }).padding(.vertical)
            
            ZStack{
                Button(action: {
                    guard let messageAppURL = URL(string: "sms:&body=Bonjour,\nCliquez ici pour voir ma carte de visite : https://github.com/ThomasCouteau.\\nA bientôt,\nThomas")
                    else { return }
                    if UIApplication.shared.canOpenURL(messageAppURL) {
                        UIApplication.shared.open(messageAppURL)
                    }
                }, label: {
                    HStack {
                        Text("Partager")
                        Image(systemName: "arrow.up.right")
                    }
                })
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .tint(.red)
                .cornerRadius(25)
            }
            
            
            
            
        }.padding()
    }
}

#Preview {
    ContentView()
}
