//
//  main.swift
//  MyCreditManager
//
//  Created by 박희경 on 2023/04/26.
//

import Foundation


var studentDB = [Student]()

enterMenu()

// MARK: 메뉴 입력 함수
func enterMenu() {
    print("원하는 기능을 입력해주세요")
    print("1: 학생추가, 2: 학생삭제, 3: 성적추가(변경), 4: 성적삭제, 5: 평점보기, X: 종료")
    
    let input: String = readLine() ?? ""
    
    switch input {
    case "1":
        /// 학생추가
        addStudent()
    case "2":
        /// 학생삭제
        deleteStudent()
    case "3":
        /// 성적추가(변경)
        addGrade()
    case "4":
        /// 성적삭제
        deleteGrade()
    case "5":
        /// 평점보기
        showGrade()
    case "X":
        /// 종료
        print("프로그램을 종료합니다...")
    default:
        /// 입력오류
        print("뭔가 입력이 잘못되었습니다. 1~5 사이의 숫자 혹은 X를 입력해주세요")
        enterMenu()
    }
}

// MARK: 학생 추가 함수
func addStudent() {
    print("추가할 학생의 이름을 입력해주세요")
    
    let name: String = readLine() ?? ""
    
    if name.trimmingCharacters(in: .whitespaces).count > 0 {
        if !studentDB.contains(where: { $0.name == name
        }) {
            studentDB.append(Student(name: name))
            print("\(name) 학생을 추가했습니다.")
        } else {
            print("\(name)은 이미 존재하는 학생입니다. 추가하지 않습니다.")
        }
    } else {
        print("입력이 잘못되었습니다. 다시 확인해주세요")
    }
    
    enterMenu()
    
}

// MARK: 학생 삭제 함수
func deleteStudent() {
    print("삭제할 학생의 이름을 입력해주세요")
    
    let name: String = readLine() ?? ""
    
    if name.trimmingCharacters(in: .whitespaces).count > 0 {
        if let index = studentDB.firstIndex(where: { $0.name == name}) {
            studentDB.remove(at: index)
            print("\(name) 학생을 삭제하였습니다.")
        } else {
            print("\(name) 학생을 찾지 못했습니다.")
        }
    } else {
        print("입력이 잘못되었습니다. 다시 확인해주세요")
    }
    
    enterMenu()
    
}

// MARK: 성적 추가(변경) 함수
func addGrade() {
    
    print("성적을 추가할 학생의 이름, 과목 이름, 성적(A+, A, F 등)을 띄어쓰기로 구분하여 차례로 작성해주세요.")
    print("입력예) Mickey Swift A+")
    print("만약에 학생의 성적 중 해당 과목이 존재하면 기존 점수가 갱신됩니다.")
    
    let input = readLine()!.components(separatedBy: " ")
    
    if input.count == 3 {
        
        let name: String = input[0]
        let subject: String = input[1]
        let grade: String = input[2]

        if let index = studentDB.firstIndex(where: { $0.name == name
        }) {
            studentDB[index].gradeOfSubject[subject] = grade
            print("\(name) 학생의 \(subject) 과목이 \(grade)로 추가(변경)되었습니다.")
        } else {
            print("\(name) 학생을 찾지 못했습니다.")
        }
        
    } else {
        print("입력이 잘못되었습니다. 다시 확인해주세요")
    }
    
    enterMenu()
    
}

// MARK: 성적 삭제 함수
func deleteGrade() {
    print("성적을 삭제할 학생의 이름, 과목 이름을 띄어쓰기로 구분하여 차례로 작성해주세요.")
       print("입력예) Mickey Swift")
    
    let input = readLine()!.components(separatedBy: " ")
    
    if input.count == 2 {
        let name = input[0]
        let subject = input[1]
        
        if let index = studentDB.firstIndex(where: { $0.name == name }) {
            studentDB[index].gradeOfSubject.removeValue(forKey: subject)
            print("\(name) 학생의 \(subject) 과목의 성적이 삭제되었습니다.")
        } else {
            print("\(name) 학생을 찾지 못했습니다.")
        }
         
    } else {
        print("입력이 잘못되었습니다. 다시 확인해주세요")
    }
    
    enterMenu()
    
}

// MARK: 평점 보기 함수
func showGrade() {
    print("평점을 알고싶은 학생의 이름을 입력해주세요")
    
    let name = readLine() ?? ""
    
    if let student = studentDB.first(where: { $0.name == name }) {
        student.gradeOfSubject.forEach {
            print("\($0.key): \($0.value)")
        }
        
        print(student.averageGrade)
    } else {
        print("\(name) 학생을 찾지 못했습니다.")
    }
    
    enterMenu()
    
}

