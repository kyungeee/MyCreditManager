//
//  Student.swift
//  MyCreditManager
//
//  Created by 박희경 on 2023/04/27.
//

import Foundation

struct Student {
    // 이름
    var name: String
    // 과목별 성적 (key: 과목, value: 성적)
    var gradeOfSubject = [String : String]()
    // 평점
    var averageGrade: String {
        var sum: Double = 0.0
        for value in gradeOfSubject.values {
            switch value {
            case "A+": sum += 4.5
            case "A": sum += 4.0
            case "B+": sum += 3.5
            case "B": sum +=  3.0
            case "C+": sum += 2.5
            case "C": sum += 2.0
            case "D+": sum += 1.5
            case "D": sum += 1.0
            default: sum += 0.0
            }
        }
        
        let average = sum / Double(gradeOfSubject.count)
        var formattedAverage = String(format: "%.2f", average)
        
        /// 소수점 처리
        if formattedAverage.hasSuffix(".00") {
            formattedAverage = String(format: "%.0f", average)
        } else if formattedAverage.hasSuffix("0") {
            formattedAverage = String(format: "%.1f", average)
        }
        
        return formattedAverage
    }
}

