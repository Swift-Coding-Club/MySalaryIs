//
//  DetailView.swift
//  MySalaryIs
//
//  Created by geonhui Yu on 2022/11/14.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        
        // @Binding var expense: Int = 0
        
        VStack(spacing: 40) {
            
            Spacer()
         
            Image(systemName: "plus")
                .foregroundColor(.gray)
                .font(.largeTitle)
            
            Text("이번달 남아 있는 나의 총 급여액은 : \n10000웝 입니다.")
                .bold()
                .multilineTextAlignment(.center)
            
        
            Spacer()
            
            Button {
                
                print("Button Tapped")
                
            } label: {
                
                Button(action: {
                    
                    print("Hello button tapped!")
                    
                }) {
                    
                    HStack {
                                        
                        Text("종료하기")
                            .fontWeight(.bold)
                            .font(.title)
                            .foregroundColor(.gray)
                            .padding()
                        
                    }
                    .frame(maxWidth: .infinity, minHeight: 50)
                    .overlay(
                        Capsule(style: .continuous).stroke(Color.gray, lineWidth: 3)
                    )
                    .padding()
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
