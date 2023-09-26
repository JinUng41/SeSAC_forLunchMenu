//
//  Restaurant.swift
//  LunchMenu
//
//  Created by 김진웅 on 2023/09/26.
//

import Foundation

enum Restaurant: Int, CustomStringConvertible {
    case 옛촌 = 0
    case 만수김밥 = 1
    case 천궁 = 2
    case 두리순대국 = 3
    
    var description: String {
        switch self {
        case .옛촌:
            return "옛촌"
        case .만수김밥:
            return "만수김밥"
        case .천궁:
            return "천궁"
        case .두리순대국:
            return "두리순대국"
        }
    }
    
    var menu: [String] {
        switch self {
        case .옛촌:
            return ["제육", "김치찌개", "된장찌개", "순두부찌개", "오뎅라면", "육개장"]
        case .만수김밥:
            return ["새우볶음밥", "오무라이스", "스페셜 떡볶이", "라볶이", "라면", "김밥", "돈까스", "치킨볶음밥", "비빔밥", "부대찌개"]
        case .천궁:
            return ["탕짜면", "짜장면", "간짜장", "볶음밥", "짜장밥", "짬뽕", "잡채밥", "쟁반짜장", "짬짜면", "짬뽕밥"]
        case .두리순대국:
            return ["순대국", "돌솥비빕밥", "만두국"]
        }
    }
}
