//
//  CategoryCard.swift
//  Hafefly
//
//  Created by Samy Mehdid on 8/3/2023.
//

import SwiftUI

struct CategoryCard: View {
    
    let category: Category
    
    init(_ category: Category) {
        self.category = category
    }
    
    var body: some View {
        ZStack{
            VStack{
                VStack(alignment: .leading){
                    Text(category.name)
                        .font(.white, Font.HafeflyRubik.semiBold, 22)
                        .multilineTextAlignment(.leading)
                    if category.barbershops.isEmpty {
                        Text("empty")
                            .font(.white, Font.HafeflyRubik.regular, 18)
                    } else {
                        Text("\(category.itemsCount) barbershop")
                            .font(.white, Font.HafeflyRubik.regular, 18)
                    }
                }
                .frame(width: 100, alignment: .leading)
                Spacer()
                ZStack{
                    Image(category.icon)
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(category.color)
                        .frame(width: 24, height: 24)
                        .padding()
                        .background(Circle().fill(.white))
                }
            }
        }
        .frame(maxHeight: 170)
        .padding(.horizontal, 24)
        .padding(.vertical)
        .background(category.color)
        .cornerRadius(16)
        .shadow(color: .black.opacity(0.6), radius: 3, x: 4, y: 4)
    }
}

struct CategoryCard_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCard(Category.categories[1])
    }
}
