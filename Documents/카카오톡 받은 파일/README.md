**목차**

<br>

# OnPro-TeamProject

- **일정**: 2024.03.19. ~ 2024.04.09
- **주제**: On-Premise를 활용한 3-Tier 웹 서비스 구축
- **팀 소개**: 안녕하세요! 팀 OnPro 입니다.
    
    OnPro는 "on-premises"와 "project"의 합성어로, 기업이나 조직의 온프레미스 환경에서 프로젝트를 성공적으로 이끌어내는 것을 목표로 합니다. 
    
    저희 팀은 혁신적 기술과 열정을 바탕으로 혁신적인 프로젝트를 구상하고, 온프레미스 환경에서의 IT 솔루션을 제공합니다.
    
- **시나리오:**
    
     · 배경: 온라인 커머스 기업의 지사(전국 물류센터) 설립, 그에 따른 인트라넷 및 플랫폼 확장
    
    · 주제 : 온라인 커머스 플랫폼 설계와 네트워크 인프라 구축
    
    · 목적
    - 네트워크 토폴로지를 설계 및 하드웨어 추가하여 효율적인 서버 인프라 구축
    - 고객들에게 신속한 서비스를 제공하기 위한 웹 서버를 구성
    - 사내 자체 서버를 위한 사내망 구축, 사내 홈페이지 활성화를 통한 업무 효율 증대
    - UTM(통합 위협 관리)을 이용하여 데이터 보안과 개인정보 보호를 강화하고
    VPN(가상 사설 통신망) 구성
    - 본사와 지사의 데이터베이스 백업 서버 구축, 장애 대응 능력 증가
    

<br>

## 🔖 최종 결과

<img src="https://github.com/rey265/OnPro/blob/main/onpro%20image/%EC%B5%9C%EC%A2%85%20%ED%86%A0%ED%8F%B4%EB%A1%9C%EC%A7%80.png

<br>

<img src="https://github.com/rey265/OnPro/blob/main/onpro%20image/%EC%B5%9C%EC%A2%85.png">

### 네트워크 시설 설계 및 관리운용 가능

**네트워크 설계**

**사용 장비 및 프로그램 확인**

**Web, Was, DB 구현가능**

<br>

## 💻 프로젝트 인원(5명)

| 이름 |
| --- |
| 최 원 영(PM) |
| 김 하 진 |
| 손 은 지 |
| 이 도 영 |
| 조 혜 원 |

<br>

## ✍ 기술 스택

**LAMP(Linux + Apache + MariaDB + PHP)**

CentOS 7 APM   L4 스위치

UTM(통합 위협 관리)

Rsync - DB BACKUP 

VPN(가상 사설 통신망)

<br>

## 🛠️ Application Architecture

![최종.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/c6315c29-e6f0-4ef8-ae4a-30725b2eee09/9140a233-528e-4dd2-9b45-4f5551f762ac/%EC%B5%9C%EC%A2%85.png)

![최종 토폴로지.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/c6315c29-e6f0-4ef8-ae4a-30725b2eee09/6100a42f-d885-43d3-af01-c09bbb325a71/09b48310-b90d-490a-b365-510441b4b943.png)

<br>

## 📚 ERD

!https://velog.velcdn.com/images/miracle-21/post/1ffc5b2f-79fe-440b-9061-96dbde0057b8/image.png

<br>

## 🎯 API Endpoints

| endpoint | HTTP Method | 기능 |
| --- | --- | --- |
| /main | GET | 메인페이지 |
| /users/signup | POST | 회원가입 |
| /users/signin | GET | 로그인 |
| /users/log_out | GET | 로그아웃 |
| /products/cart | GET | 상품 조회 |
| /products | GET | 상세페이지 |

<br>

# 📝 프로젝트 진행 관리: Notion

### 🔗 URL

[https://sonrey.notion.site/OnPro-6c0932066f1b446d8ddd98ecb4fdbea5?pvs=4](https://www.notion.so/6c0932066f1b446d8ddd98ecb4fdbea5?pvs=21)

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/c6315c29-e6f0-4ef8-ae4a-30725b2eee09/4f76d7e7-14b2-4784-bb2c-be02f443f3e1/684783d6-ffaa-4c8b-9fa6-6b261f94f5ae.png)

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/c6315c29-e6f0-4ef8-ae4a-30725b2eee09/79bff9e5-a482-42e4-9931-f25174b22070/Untitled.png)

<br>

# 📝 발표 PPT:

[Project Team Notion OnPro (1)](https://www.notion.so/Project-Team-Notion-OnPro-1-c50bfc33118d453c970c3d34ebeff468?pvs=21)

---

https://online.fliphtml5.com/viwpp/gydz/