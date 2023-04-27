# MyCreditManager
원티드 프리온보딩 iOS 챌린지 사전과제 레포지토리

* [원티드 프리온보딩 iOS 챌린지 5월](https://www.wanted.co.kr/events/pre_challenge_ios_3?utm_source=google&utm_medium=sa&utm_campaign=kr_career_edu_web_sa_application&utm_term=%ED%94%84%EB%A6%AC%EC%98%A8%EB%B3%B4%EB%94%A9&gclid=CjwKCAjwuqiiBhBtEiwATgvixDgHaF-IusT-UinbxSXs3jot89Sr88ICREfy0CFhVxU-i86Bo6W93BoC64sQAvD_BwE)
* [프리온보딩 iOS 챌린지 사전미션](https://yagomacademy.notion.site/iOS-ba2d0c0bb0b949c896cc28567706e969)

</aside>



## **프로젝트 이름**

- MyCreditManager

## 사용 언어 / 환경

- Swift
- Xcode 기본 템플릿 중 [macOS - Command Line Tool]

## **프로그램의 메뉴**

- 학생추가
- 학생삭제
- 성적추가(변경)
- 성적삭제
- 평점보기
- 종료

## **프로그램 동작조건**

- 사용자가 종료 메뉴를 선택하기 전까지는 계속해서 사용자의 입력을 받습니다
- 메뉴선택을 포함한 모든 입력은 숫자 또는 영문으로 받습니다

## 성적별 점수

- A+ (4.5점) / A (4점)
- B+ (3.5점) / B (3점)
- C+ (2.5점) / C (2점)
- D+ (1.5점) / D (1점)
- F (0점)

## 평점

- 각 과목의 점수 총 합 / 과목 수
- 최대 소수점 2번째 자리까지 출력
    - 예)
        - 3.75
        - 4.1
        - 2

## **프로그램 동작모습**

`예시 화면의 굵은 글씨는 콘솔 출력 내용이며, 얇은 글씨는 콘솔을 통한 입력 내용입니다.`

### **메뉴의 잘못된 입력 처리**

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/3557df46-110c-4903-bc77-539505015d63/_2019-07-20__1.16.25.png](https://yagomacademy.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F3557df46-110c-4903-bc77-539505015d63%2F_2019-07-20__1.16.25.png?id=29b2eff1-68fa-4391-8264-a602731d82df&table=block&spaceId=431128ec-0482-4966-b5f0-0bed1417e8c6&width=2000&userId=&cache=v2)

### **학생추가**

- 메뉴를 선택한 후에도 잘못 입력한 것이 있으면 처리해 주어야합니다
- 이미 존재하는 학생은 다시 추가하지 않습니다

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/73442ba1-ac38-4374-8601-8365bf298e81/_2019-07-20__1.17.08.png](https://yagomacademy.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F73442ba1-ac38-4374-8601-8365bf298e81%2F_2019-07-20__1.17.08.png?id=61dc2f53-507a-459d-8575-de2622f40102&table=block&spaceId=431128ec-0482-4966-b5f0-0bed1417e8c6&width=2000&userId=&cache=v2)

### **학생 삭제**

- 메뉴를 선택한 후에도 잘못 입력한 것이 있으면 처리해 주어야합니다
- 없는 학생은 삭제하지 않습니다

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/3ae5ec95-4a3e-47f2-b8af-bfe93aa83632/_2019-07-20__1.18.14.png](https://yagomacademy.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F3ae5ec95-4a3e-47f2-b8af-bfe93aa83632%2F_2019-07-20__1.18.14.png?id=2a1ce3ab-371b-4dfb-9564-ef6a6388616a&table=block&spaceId=431128ec-0482-4966-b5f0-0bed1417e8c6&width=2000&userId=&cache=v2)

### **성적추가**

- 메뉴를 선택한 후에도 잘못 입력한 것이 있으면 처리해 주어야합니다
- 없는 학생의 성적은 추가하지 않습니다

![_2019-07-20__1.19.45.png](https://yagomacademy.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F264e268b-79d5-4ae7-8023-021374ce8453%2F_2019-07-20__1.19.45.png?id=cb7c7331-603d-460c-b6bb-e272f7c86b78&table=block&spaceId=431128ec-0482-4966-b5f0-0bed1417e8c6&width=2000&userId=&cache=v2)

![_2019-07-20__1.20.20.png](https://yagomacademy.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F16d3790e-3db3-4e95-8b46-2fe45673ecd0%2F_2019-07-20__1.20.20.png?id=0ce56c7e-a5cb-4b02-89dc-1e02792ded0d&table=block&spaceId=431128ec-0482-4966-b5f0-0bed1417e8c6&width=2000&userId=&cache=v2)

### **성적삭제**

- 메뉴를 선택한 후에도 잘못 입력한 것이 있으면 처리해 주어야합니다
- 없는 학생의 성적은 삭제하지 않습니다

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/dd74a254-4ec3-409b-b4aa-b2c9cd567c71/_2019-07-20__1.21.10.png](https://yagomacademy.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fdd74a254-4ec3-409b-b4aa-b2c9cd567c71%2F_2019-07-20__1.21.10.png?id=c8f89c2c-fcaa-4137-98e7-387d351f806b&table=block&spaceId=431128ec-0482-4966-b5f0-0bed1417e8c6&width=2000&userId=&cache=v2)

### **평점보기**

- 메뉴를 선택한 후에도 잘못 입력한 것이 있으면 처리해 주어야합니다
- 해당 학생의 과목과 성적을 모두 출력한 후 마지막 줄에 평점을 출력합니다
- 없는 학생은 평점을 보여주지 않습니다

![_2019-07-20__1.23.23.png](https://yagomacademy.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fb5e7ecbd-42ca-4b00-98d6-f1d3bc6fe175%2F_2019-07-20__1.23.23.png?id=17750e49-d591-48d7-8643-802f58a08a9b&table=block&spaceId=431128ec-0482-4966-b5f0-0bed1417e8c6&width=2000&userId=&cache=v2)

### **종료**

- 프로그램을 종료합니다

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/02fa6200-fe84-4967-aae8-518a5f43253f/_2019-07-20__1.23.53.png](https://yagomacademy.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F02fa6200-fe84-4967-aae8-518a5f43253f%2F_2019-07-20__1.23.53.png?id=06106b7a-cfa2-475e-9e18-4e36bdae8568&table=block&spaceId=431128ec-0482-4966-b5f0-0bed1417e8c6&width=2000&userId=&cache=v2)
