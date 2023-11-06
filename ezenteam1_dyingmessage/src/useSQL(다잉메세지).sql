DROP DATABASE if exists dyingmessage;
CREATE DATABASE dyingmessage; 
USE dyingmessage;

DROP TABLE if exists typecard ;
create table typecard (                  # Table 카드 종류
   tno int auto_increment,               # 카드 타입 번호(PK) int
    tname varchar(10) not null unique,      # 카드 이름
    primary key(tno)
);

drop table if exists card;
create table card(                     # Table 카드
   tno int,                        # 카드타입번호 (FK)
    cno int auto_increment,               # 카드번호 (PK)
    cname varchar(10) not null unique,      # 카드명
    primary key(cno),
    foreign key(tno) references typecard(tno)   
);

drop table if exists hint;
create table hint (                     # Table 힌트카드   
   hno int auto_increment,               # 힌트카드번호
    hname varchar(10) not null,            # 힌트 카드의 타입 a: 형용사 / n: 명사
    htype char(1) not null,
    cno int,                        # 카드번호 (FK)
    primary key(hno),
    foreign key(cno) references card(cno)
);


# 카드타입
insert into typecard (tname) values('용의자');      # 1
insert into typecard (tname) values('범행도구');   # 2
insert into typecard (tname) values('범행동기');   # 3

# 카드
select * from card;
<<<<<<< HEAD
insert into card (tno, cname) values (1,'가수');     # card 1
insert into card (tno, cname) values (1,'의사');     # card 2
insert into card (tno, cname) values (1,'강사');       # card 3
insert into card (tno, cname) values (1,'살인마');    # card 4
insert into card (tno, cname) values (1,'바텐더');     # card 5
insert into card (tno, cname) values (1,'아이돌');    # card 6
insert into card (tno, cname) values (1,'룸메이트');   # card 7
insert into card (tno, cname) values (1,'건물관리인');  # card 8
insert into card (tno, cname) values (1,'화가');       # card 9
insert into card (tno, cname) values (1,'아버지');    # card 10
insert into card (tno, cname) values (1,'친구');     # card 11
insert into card (tno, cname) values (1,'연인');       # card 12
insert into card (tno, cname) values (1,'판매원');    # card 13
=======
insert into card (tno, cname) values (1,'가수'); 	 # card 1
insert into card (tno, cname) values (1,'의사'); 	 # card 2
insert into card (tno, cname) values (1,'강사');		 # card 3
insert into card (tno, cname) values (1,'살인마');	 # card 4
insert into card (tno, cname) values (1,'바텐더'); 	 # card 5
insert into card (tno, cname) values (1,'아이돌');	 # card 6
insert into card (tno, cname) values (1,'룸메이트');   # card 7
insert into card (tno, cname) values (1,'건물관리인');  # card 8
insert into card (tno, cname) values (1,'화가');		 # card 9
insert into card (tno, cname) values (1,'아버지');	 # card 10
insert into card (tno, cname) values (1,'친구'); 	 # card 11
insert into card (tno, cname) values (1,'연인');		 # card 12
insert into card (tno, cname) values (1,'판매원');	 # card 13
>>>>>>> branch '신예지' of https://github.com/junhee0125/team1


<<<<<<< HEAD
insert into card (tno, cname) values (2,'줄넘기');    # card 14
insert into card (tno, cname) values (2,'가방');       # card 15
insert into card (tno, cname) values (2,'넥타이');    # card 16
insert into card (tno, cname) values (2,'손도끼');    # card 17
insert into card (tno, cname) values (2,'하이힐');    # card 18
insert into card (tno, cname) values (2,'벽돌');       # card 19
insert into card (tno, cname) values (2,'독극물');    # card 20
insert into card (tno, cname) values (2,'유리병');    # card 21
insert into card (tno, cname) values (2,'댓글');       # card 22
insert into card (tno, cname) values (2,'이불');       # card 23
insert into card (tno, cname) values (2,'자동차');    # card 24
insert into card (tno, cname) values (2,'가위');       # card 25
insert into card (tno, cname) values (2,'칼');       # card 26
insert into card (tno, cname) values (2,'총');       # card 27
insert into card (tno, cname) values (2,'몽둥이');    # card 28


insert into card (tno, cname) values (3,'배신');        # card 29
insert into card (tno, cname) values (3,'재미');       # card 30
insert into card (tno, cname) values (3,'유산');       # card 31
insert into card (tno, cname) values (3,'시기');       # card 32
insert into card (tno, cname) values (3,'불륜');       # card 33
insert into card (tno, cname) values (3,'협박');       # card 34
insert into card (tno, cname) values (3,'짜증');       # card 35
insert into card (tno, cname) values (3,'묻지마');    # card 36
insert into card (tno, cname) values (3,'우울');       # card 37
insert into card (tno, cname) values (3,'혐오');       # card 38
=======
insert into card (tno, cname) values (2,'줄넘기');	 # card 14
insert into card (tno, cname) values (2,'가방');		 # card 15
insert into card (tno, cname) values (2,'넥타이');	 # card 16
insert into card (tno, cname) values (2,'손도끼');	 # card 17
insert into card (tno, cname) values (2,'하이힐');	 # card 18
insert into card (tno, cname) values (2,'벽돌');		 # card 19
insert into card (tno, cname) values (2,'독극물');	 # card 20
insert into card (tno, cname) values (2,'유리병');	 # card 21
insert into card (tno, cname) values (2,'댓글');		 # card 22
insert into card (tno, cname) values (2,'이불');		 # card 23
insert into card (tno, cname) values (2,'자동차');	 # card 24
insert into card (tno, cname) values (2,'가위');		 # card 25
insert into card (tno, cname) values (2,'칼');		 # card 26
insert into card (tno, cname) values (2,'총');		 # card 27
insert into card (tno, cname) values (2,'몽둥이');	 # card 28


insert into card (tno, cname) values (3,'배신');	 	 # card 29
insert into card (tno, cname) values (3,'재미');		 # card 30
insert into card (tno, cname) values (3,'유산');		 # card 31
insert into card (tno, cname) values (3,'시기');		 # card 32
insert into card (tno, cname) values (3,'불륜');		 # card 33
insert into card (tno, cname) values (3,'협박');		 # card 34
insert into card (tno, cname) values (3,'짜증');		 # card 35
insert into card (tno, cname) values (3,'묻지마');	 # card 36
insert into card (tno, cname) values (3,'우울');		 # card 37
insert into card (tno, cname) values (3,'혐오');		 # card 38
>>>>>>> branch '신예지' of https://github.com/junhee0125/team1

# ---------------- 힌트 ---------------------------------------------
select * from card;
select * from hint;

# ---------------- 용의자 카드
# 가수 [1]
insert into hint(hname, htype ,cno) values ('입', 'n' ,1);
insert into hint(hname, htype ,cno) values ('마이크', 'n' ,1);
insert into hint(hname, htype ,cno) values ('열정', 'n' ,1);
insert into hint(hname, htype ,cno) values ('감동', 'n' ,1);
insert into hint(hname, htype ,cno) values ('표현', 'n' ,1);
insert into hint(hname, htype ,cno) values ('스크린', 'n' ,1);
insert into hint(hname, htype ,cno) values ('무대', 'n' ,1);
insert into hint(hname, htype ,cno) values ('행사', 'n' ,1);
insert into hint(hname, htype ,cno) values ('인기있는', 'a' ,1);
insert into hint(hname, htype ,cno) values ('눈부신', 'a' ,1);
insert into hint(hname, htype ,cno) values ('흥겨운', 'a' ,1);
insert into hint(hname, htype ,cno) values ('목소리', 'a' ,1);
insert into hint(hname, htype ,cno) values ('아름다운', 'a' ,1);
insert into hint(hname, htype ,cno) values ('매혹적인', 'a' ,1);
insert into hint(hname, htype ,cno) values ('기교의', 'a' ,1);
insert into hint(hname, htype ,cno) values ('자신감있는', 'a' ,1);
insert into hint(hname, htype ,cno) values ('눈부신', 'a' ,1);

# 의사 [2]
insert into hint(hname, htype ,cno) values ('가운', 'n' ,2);
insert into hint(hname, htype ,cno) values ('주사기', 'n' ,2);
insert into hint(hname, htype ,cno) values ('신뢰', 'n' ,2);
insert into hint(hname, htype ,cno) values ('환자', 'n' ,2);
insert into hint(hname, htype ,cno) values ('응급', 'n' ,2);
insert into hint(hname, htype ,cno) values ('메스', 'n' ,2);
insert into hint(hname, htype ,cno) values ('건강', 'n' ,2);
insert into hint(hname, htype ,cno) values ('마스크', 'n' ,2);
insert into hint(hname, htype ,cno) values ('똑똑한', 'a' ,2);
insert into hint(hname, htype ,cno) values ('차가운', 'a' ,2);
insert into hint(hname, htype ,cno) values ('냉철한', 'a' ,2);
insert into hint(hname, htype ,cno) values ('하얀', 'a' ,2);

# 강사 [3] 
insert into hint(hname, htype ,cno) values ('기면수', 'n' ,3);
insert into hint(hname, htype ,cno) values ('목소리', 'n' ,3);
insert into hint(hname, htype ,cno) values ('마스크', 'n' ,3);
insert into hint(hname, htype ,cno) values ('칠판', 'n' ,3);
insert into hint(hname, htype ,cno) values ('목소리가큰', 'a' ,3);
insert into hint(hname, htype ,cno) values ('졸린', 'a' ,3);
insert into hint(hname, htype ,cno) values ('침착한', 'a' ,3);
insert into hint(hname, htype ,cno) values ('똑똑한', 'a' ,3);

# 살인마 [4]
insert into hint(hname, htype ,cno) values ('범죄', 'n' ,4);
insert into hint(hname, htype ,cno) values ('칼', 'n' ,4);
insert into hint(hname, htype ,cno) values ('흉악', 'n' ,4);
insert into hint(hname, htype ,cno) values ('사이코패스', 'n' ,4);
insert into hint(hname, htype ,cno) values ('무서운', 'a' ,4);
insert into hint(hname, htype ,cno) values ('잔인한', 'a' ,4);
insert into hint(hname, htype ,cno) values ('가차없는', 'a' ,4);
insert into hint(hname, htype ,cno) values ('반사회성의', 'a' ,4);

# 바텐더 [5]
insert into hint(hname, htype ,cno) values ('얼음', 'n' , 5);
insert into hint(hname, htype ,cno) values ('하이볼', 'n' , 5);
insert into hint(hname, htype ,cno) values ('밤', 'n' , 5);
insert into hint(hname, htype ,cno) values ('불', 'n' , 5);
insert into hint(hname, htype ,cno) values ('칵테일', 'n' , 5);
insert into hint(hname, htype ,cno) values ('조명', 'n' , 5);
insert into hint(hname, htype ,cno) values ('친근한', 'a' ,5);
insert into hint(hname, htype ,cno) values ('어두운', 'a' ,5);
insert into hint(hname, htype ,cno) values ('차가운', 'a' ,5);
insert into hint(hname, htype ,cno) values ('분위기있는', 'a' ,5);

# 아이돌 [6]
insert into hint(hname, htype ,cno) values ('무대', 'n' , 6);
insert into hint(hname, htype ,cno) values ('우상', 'n' , 6);
insert into hint(hname, htype ,cno) values ('행사', 'n' , 6);
insert into hint(hname, htype ,cno) values ('댄스', 'n' , 6);
insert into hint(hname, htype ,cno) values ('그룹', 'n' , 6);
insert into hint(hname, htype ,cno) values ('아름다운', 'a' , 6);
insert into hint(hname, htype ,cno) values ('현란한', 'a' , 6);
insert into hint(hname, htype ,cno) values ('인기있는', 'a' , 6);
insert into hint(hname, htype ,cno) values ('눈부신', 'a' , 6);
insert into hint(hname, htype ,cno) values ('자신감있는', 'a' , 6);
insert into hint(hname, htype ,cno) values ('날씬한', 'a' , 6);
insert into hint(hname, htype ,cno) values ('화려한', 'a' , 6);

# 룸메이트 [7]
insert into hint(hname, htype ,cno) values ('옆', 'n' ,7);
insert into hint(hname, htype ,cno) values ('이층침대', 'n' ,7);
insert into hint(hname, htype ,cno) values ('쉐어', 'n' ,7);
insert into hint(hname, htype ,cno) values ('보증', 'n' ,7);
insert into hint(hname, htype ,cno) values ('동거', 'n' ,7);
insert into hint(hname, htype ,cno) values ('친한', 'a' ,7);
insert into hint(hname, htype ,cno) values ('합의한', 'a' ,7);
insert into hint(hname, htype ,cno) values ('함께하는', 'a' ,7);
insert into hint(hname, htype ,cno) values ('가까운', 'a' ,7);

# 건물관리인 [8]
insert into hint(hname, htype ,cno) values ('노파', 'n' ,8);
insert into hint(hname, htype ,cno) values ('안전', 'n' ,8);
insert into hint(hname, htype ,cno) values ('질서', 'n' ,8);
insert into hint(hname, htype ,cno) values ('책임', 'n' ,8);
insert into hint(hname, htype ,cno) values ('아파트', 'n' ,8);
insert into hint(hname, htype ,cno) values ('상가', 'n' ,8);
insert into hint(hname, htype ,cno) values ('감시하는', 'a' ,8);
insert into hint(hname, htype ,cno) values ('보호하는', 'a' ,8);
insert into hint(hname, htype ,cno) values ('관리하는', 'a' ,8);

# 화가 [9]
insert into hint(hname, htype ,cno) values ('종이', 'n' ,9);
insert into hint(hname, htype ,cno) values ('매력', 'n' ,9);
insert into hint(hname, htype ,cno) values ('손', 'n' ,9);
insert into hint(hname, htype ,cno) values ('표현', 'n' ,9);
insert into hint(hname, htype ,cno) values ('영감', 'n' ,9);
insert into hint(hname, htype ,cno) values ('다양한', 'a' ,9);
insert into hint(hname, htype ,cno) values ('풍부한', 'a' ,9);
insert into hint(hname, htype ,cno) values ('독특한', 'a' ,9);
insert into hint(hname, htype ,cno) values ('창의적인', 'a' ,9);

# 아버지 [10]
insert into hint(hname, htype ,cno) values ('믿음', 'n' ,10);
insert into hint(hname, htype ,cno) values ('희생', 'n' ,10);
insert into hint(hname, htype ,cno) values ('미래', 'n' ,10);
insert into hint(hname, htype ,cno) values ('책임', 'n' ,10);
insert into hint(hname, htype ,cno) values ('가족', 'n' ,10);
insert into hint(hname, htype ,cno) values ('지지자', 'n' ,10);
insert into hint(hname, htype ,cno) values ('치열한', 'a' ,10);
insert into hint(hname, htype ,cno) values ('믿음직한', 'a' ,10);
insert into hint(hname, htype ,cno) values ('단단한', 'a' ,10);
insert into hint(hname, htype ,cno) values ('보고싶은', 'a' ,10);
insert into hint(hname, htype ,cno) values ('함께하는', 'a' ,10);
insert into hint(hname, htype ,cno) values ('안쓰러운', 'a' ,10);
insert into hint(hname, htype ,cno) values ('고마운', 'a' ,10);
insert into hint(hname, htype ,cno) values ('사랑하는', 'a' ,10);

# 친구 [11]
insert into hint(hname, htype ,cno) values ('자주', 'n' ,11);
insert into hint(hname, htype ,cno) values ('관계', 'n' ,11);
insert into hint(hname, htype ,cno) values ('어린시절', 'n' ,11);
insert into hint(hname, htype ,cno) values ('오래', 'n' ,11);
insert into hint(hname, htype ,cno) values ('동네', 'n' ,11);
insert into hint(hname, htype ,cno) values ('놀이터', 'n' ,11);
insert into hint(hname, htype ,cno) values ('비슷한', 'a' ,11);
insert into hint(hname, htype ,cno) values ('함께하는', 'a' ,11);
insert into hint(hname, htype ,cno) values ('믿을수있는', 'a' ,11);
insert into hint(hname, htype ,cno) values ('편안한', 'a' ,11);
insert into hint(hname, htype ,cno) values ('친근한', 'a' ,11);
insert into hint(hname, htype ,cno) values ('친밀한', 'a' ,11);

# 연인 [12]
insert into hint(hname, htype ,cno) values ('사랑', 'n' ,12);
insert into hint(hname, htype ,cno) values ('연모', 'n' ,12);
insert into hint(hname, htype ,cno) values ('관계', 'n' ,12);
insert into hint(hname, htype ,cno) values ('청춘', 'n' ,12);
insert into hint(hname, htype ,cno) values ('애정', 'n' ,12);
insert into hint(hname, htype ,cno) values ('사랑하는', 'a' ,12);
insert into hint(hname, htype ,cno) values ('보고싶은', 'a' ,12);
insert into hint(hname, htype ,cno) values ('애정하는', 'a' ,12);
insert into hint(hname, htype ,cno) values ('믿을수있는', 'a' ,12);
insert into hint(hname, htype ,cno) values ('함께하는', 'a' ,12);
insert into hint(hname, htype ,cno) values ('친근한', 'a' ,11);
insert into hint(hname, htype ,cno) values ('친밀한', 'a' ,11);

# 판매원 [13]
insert into hint(hname, htype ,cno) values ('판촉', 'n' ,13);
insert into hint(hname, htype ,cno) values ('상품', 'n' ,13);
insert into hint(hname, htype ,cno) values ('제품', 'n' ,13);
insert into hint(hname, htype ,cno) values ('매장', 'n' ,13);
insert into hint(hname, htype ,cno) values ('말이 많은', 'a' ,13);
insert into hint(hname, htype ,cno) values ('유통하는', 'a' ,13);
insert into hint(hname, htype ,cno) values ('활발한', 'a' ,13);
insert into hint(hname, htype ,cno) values ('위탁의', 'a' ,13);


# ---------------- 도구 카드
# 줄넘기 [14]
insert into hint(hname, htype ,cno) values ('점프', 'n' , 14);
insert into hint(hname, htype ,cno) values ('알록달록', 'n' , 14);
insert into hint(hname, htype ,cno) values ('선', 'n' , 14);
insert into hint(hname, htype ,cno) values ('가느다란', 'a' , 14);
insert into hint(hname, htype ,cno) values ('폴짝폴짝한', 'a' , 14);
insert into hint(hname, htype ,cno) values ('기다란', 'a' , 14);

# 가방 [15]
insert into hint(hname, htype ,cno) values ('키링', 'n' , 15);
insert into hint(hname, htype ,cno) values ('지퍼', 'n' , 15);
insert into hint(hname, htype ,cno) values ('등', 'n' , 15);
insert into hint(hname, htype ,cno) values ('어깨', 'n' , 15);
insert into hint(hname, htype ,cno) values ('큰', 'a' , 15);
insert into hint(hname, htype ,cno) values ('용이한', 'a' , 15);
insert into hint(hname, htype ,cno) values ('가벼운', 'a' , 15);

# 넥타이 [16]
insert into hint(hname, htype ,cno) values ('목', 'n' , 16 );
insert into hint(hname, htype ,cno) values ('질식', 'n' , 16 );
insert into hint(hname, htype ,cno) values ('회식', 'n' , 16 );
insert into hint(hname, htype ,cno) values ('부장님', 'n' , 16 );
insert into hint(hname, htype ,cno) values ('회사원', 'n' , 16 );
insert into hint(hname, htype ,cno) values ('기다란', 'a' , 16 );
insert into hint(hname, htype ,cno) values ('부드러운', 'a' , 16 );
insert into hint(hname, htype ,cno) values ('단정한', 'a' , 16 );

# 손도끼 [17]
insert into hint(hname, htype ,cno) values ('신선', 'n' , 17);
insert into hint(hname, htype ,cno) values ('장작', 'n' , 17);
insert into hint(hname, htype ,cno) values ('농부', 'n' , 17);
insert into hint(hname, htype ,cno) values ('신선', 'n' , 17);
insert into hint(hname, htype ,cno) values ('차가운', 'a' , 17 );
insert into hint(hname, htype ,cno) values ('무거운', 'a' , 17);
insert into hint(hname, htype ,cno) values ('날카로운', 'a' , 17);

# 하이힐 [18]
insert into hint(hname, htype ,cno) values ('여자', 'n' , 18);
insert into hint(hname, htype ,cno) values ('귀신', 'n' , 18);
insert into hint(hname, htype ,cno) values ('저주', 'n' , 18);
insert into hint(hname, htype ,cno) values ('발', 'n' , 18);
insert into hint(hname, htype ,cno) values ('아름다운', 'a' , 18);
insert into hint(hname, htype ,cno) values ('빨간', 'a' , 18);
insert into hint(hname, htype ,cno) values ('높은', 'a' , 18);
insert into hint(hname, htype ,cno) values ('뾰족한', 'a' , 18);
insert into hint(hname, htype ,cno) values ('불편한', 'a' , 18);

# 벽돌 [19]
insert into hint(hname, htype ,cno) values ('아기돼지', 'n' , 19);
insert into hint(hname, htype ,cno) values ('시멘트', 'n' , 19);
insert into hint(hname, htype ,cno) values ('공사장', 'n' , 19);
insert into hint(hname, htype ,cno) values ('보도블럭', 'n' , 19);
insert into hint(hname, htype ,cno) values ('무거운', 'a' , 19);
insert into hint(hname, htype ,cno) values ('딱딱한', 'a' , 19);
insert into hint(hname, htype ,cno) values ('까슬까슬한', 'a' , 19);
insert into hint(hname, htype ,cno) values ('붉은', 'a' , 19);

# 독극물 [20]
insert into hint(hname, htype ,cno) values ('해골물', 'n' ,20);
insert into hint(hname, htype ,cno) values ('환상', 'n' ,20);
insert into hint(hname, htype ,cno) values ('의문', 'n' ,20);
insert into hint(hname, htype ,cno) values ('입', 'n' ,20);
insert into hint(hname, htype ,cno) values ('액체', 'n' ,20);
insert into hint(hname, htype ,cno) values ('무서운', 'a' ,20);
insert into hint(hname, htype ,cno) values ('미묘한', 'a' ,20);
insert into hint(hname, htype ,cno) values ('의심스러운', 'a' ,20);
insert into hint(hname, htype ,cno) values ('불확실한', 'a' ,20);

# 유리병 [21]
insert into hint(hname, htype ,cno) values ('투명', 'n' ,21);
insert into hint(hname, htype ,cno) values ('술', 'n' ,21);
insert into hint(hname, htype ,cno) values ('장미', 'n' ,21);
insert into hint(hname, htype ,cno) values ('학과 여우', 'n' ,21);
insert into hint(hname, htype ,cno) values ('멘탈', 'n' ,21);
insert into hint(hname, htype ,cno) values ('쉽게', 'a' ,21);
insert into hint(hname, htype ,cno) values ('재활용의', 'a' ,21);
insert into hint(hname, htype ,cno) values ('초록의', 'a' ,21);
insert into hint(hname, htype ,cno) values ('딱딱한', 'a' ,21);
insert into hint(hname, htype ,cno) values ('깨진', 'a' ,21);

# 댓글 [22]
insert into hint(hname, htype ,cno) values ('악플', 'n' ,22);
<<<<<<< HEAD
insert into hint(hname, htype ,cno) values ('상처', 'n' ,22);
insert into hint(hname, htype ,cno) values ('손', 'n' ,22);
insert into hint(hname, htype ,cno) values ('폰', 'n' ,22);
insert into hint(hname, htype ,cno) values ('게시판', 'n' ,22);
insert into hint(hname, htype ,cno) values ('예리한', 'a' ,22);
insert into hint(hname, htype ,cno) values ('기괴한', 'a' ,22);
insert into hint(hname, htype ,cno) values ('질투하는', 'a' ,22);
insert into hint(hname, htype ,cno) values ('비하하는', 'a' ,21);
insert into hint(hname, htype ,cno) values ('물어뜯는', 'a' ,22);
=======
insert into hint(hname, htype ,cno) values ('', 'n' ,22);
insert into hint(hname, htype ,cno) values ('', 'n' ,22);
insert into hint(hname, htype ,cno) values ('', 'n' ,22);
insert into hint(hname, htype ,cno) values ('', 'n' ,22);
insert into hint(hname, htype ,cno) values ('', 'a' ,22);
insert into hint(hname, htype ,cno) values ('', 'a' ,22);
insert into hint(hname, htype ,cno) values ('', 'a' ,22);
insert into hint(hname, htype ,cno) values ('', 'a' ,21);
insert into hint(hname, htype ,cno) values ('', 'a' ,22);
>>>>>>> branch '신예지' of https://github.com/junhee0125/team1

# 이불 [23]
insert into hint(hname, htype ,cno) values ('안전', 'n' ,23);
insert into hint(hname, htype ,cno) values ('온도', 'n' ,23);
insert into hint(hname, htype ,cno) values ('겹', 'n' ,23);
insert into hint(hname, htype ,cno) values ('솜', 'n' ,23);
insert into hint(hname, htype ,cno) values ('부드러운', 'a' ,23);
insert into hint(hname, htype ,cno) values ('포근한', 'a' ,23);
insert into hint(hname, htype ,cno) values ('집에 가고 싶은', 'a' ,23);
insert into hint(hname, htype ,cno) values ('안락한', 'a' ,23);

# 자동차 [24]
insert into hint(hname, htype ,cno) values ('현대', 'n' ,24);
insert into hint(hname, htype ,cno) values ('울산', 'n' ,24);
insert into hint(hname, htype ,cno) values ('톨게이트', 'n' ,24);
insert into hint(hname, htype ,cno) values ('전기', 'n' ,24);
insert into hint(hname, htype ,cno) values ('길', 'n' ,24);
insert into hint(hname, htype ,cno) values ('많은', 'a' ,24);
insert into hint(hname, htype ,cno) values ('비싼', 'a' ,24);
insert into hint(hname, htype ,cno) values ('빠른', 'a' ,24);
insert into hint(hname, htype ,cno) values ('편리한', 'a' ,24); 
insert into hint(hname, htype ,cno) values ('위험한', 'a' ,24); 

# 가위 [25]
insert into hint(hname, htype ,cno) values ('종이', 'n' ,25);
insert into hint(hname, htype ,cno) values ('미용', 'n' ,25);
insert into hint(hname, htype ,cno) values ('손가락', 'n' ,25);
insert into hint(hname, htype ,cno) values ('꿈', 'n' ,25);
insert into hint(hname, htype ,cno) values ('머리카락', 'n' ,25);
insert into hint(hname, htype ,cno) values ('비싼', 'a' ,25);
insert into hint(hname, htype ,cno) values ('두개의', 'a' ,25);
insert into hint(hname, htype ,cno) values ('무서운', 'a' ,25);
insert into hint(hname, htype ,cno) values ('엔틱한', 'a' ,25);
insert into hint(hname, htype ,cno) values ('날카로운', 'a' ,25);

# 칼 [26]
insert into hint(hname, htype ,cno) values ('쇠', 'n' ,26);
insert into hint(hname, htype ,cno) values ('엄마', 'n' ,26);
insert into hint(hname, htype ,cno) values ('주방', 'n' ,26);
insert into hint(hname, htype ,cno) values ('식당', 'n' ,26);
insert into hint(hname, htype ,cno) values ('뾰족한', 'a' ,26);
insert into hint(hname, htype ,cno) values ('날렵한', 'a' ,26);
insert into hint(hname, htype ,cno) values ('베이는', 'a' ,26);
insert into hint(hname, htype ,cno) values ('날카로운', 'a' ,26);

# 총 [27]
insert into hint(hname, htype ,cno) values ('불법', 'n' ,27);
insert into hint(hname, htype ,cno) values ('휴가', 'n' ,27);
insert into hint(hname, htype ,cno) values ('기관', 'n' ,27);
insert into hint(hname, htype ,cno) values ('군인', 'n' ,27);
insert into hint(hname, htype ,cno) values ('전쟁', 'n' ,27);
insert into hint(hname, htype ,cno) values ('전체적인', 'a' ,27);
insert into hint(hname, htype ,cno) values ('위험한', 'a' ,27);
insert into hint(hname, htype ,cno) values ('빠른', 'a' ,27);

# 몽둥이 [28]
insert into hint(hname, htype ,cno) values ('갈색', 'n' ,28);
insert into hint(hname, htype ,cno) values ('도깨비', 'n' ,28);
insert into hint(hname, htype ,cno) values ('막대기', 'n' ,28);
insert into hint(hname, htype ,cno) values ('찜질', 'n' ,28);
insert into hint(hname, htype ,cno) values ('굵은', 'a' ,28);
insert into hint(hname, htype ,cno) values ('둔탁한', 'a' ,28);
insert into hint(hname, htype ,cno) values ('두꺼운', 'a' ,28);
insert into hint(hname, htype ,cno) values ('긴', 'a' ,28);


# ---------------- 동기 카드
# 배신 [29]
insert into hint(hname, htype ,cno) values ('충격', 'n' ,29);
insert into hint(hname, htype ,cno) values ('신뢰', 'n' ,29);
insert into hint(hname, htype ,cno) values ('런닝맨', 'n' ,29);
insert into hint(hname, htype ,cno) values ('이광수', 'n' ,29);
insert into hint(hname, htype ,cno) values ('믿을수없는', 'a' ,29);
insert into hint(hname, htype ,cno) values ('얍쌉한', 'a' ,29);
insert into hint(hname, htype ,cno) values ('신뢰없는', 'a' ,29);
insert into hint(hname, htype ,cno) values ('깨진', 'a' ,29);

# 재미 [30]
insert into hint(hname, htype ,cno) values ('퇴사', 'n' ,30);
insert into hint(hname, htype ,cno) values ('휴가', 'n' ,30);
insert into hint(hname, htype ,cno) values ('게임', 'n' ,30);
insert into hint(hname, htype ,cno) values ('취미', 'n' ,30);
insert into hint(hname, htype ,cno) values ('엔돌핀', 'n' ,30);
insert into hint(hname, htype ,cno) values ('개그맨', 'n' ,30);
insert into hint(hname, htype ,cno) values ('친구', 'n' ,30);
insert into hint(hname, htype ,cno) values ('흥미로운', 'a' ,30);
insert into hint(hname, htype ,cno) values ('지루하지않은', 'a' ,30);
insert into hint(hname, htype ,cno) values ('즐거운', 'a' ,30);
insert into hint(hname, htype ,cno) values ('웃긴', 'a' ,30);

# 유산 [31]
insert into hint(hname, htype ,cno) values ('돈', 'n' ,31);
insert into hint(hname, htype ,cno) values ('변호사', 'n' ,31);
insert into hint(hname, htype ,cno) values ('가족', 'n' ,31);
insert into hint(hname, htype ,cno) values ('마지막', 'n' ,31);
insert into hint(hname, htype ,cno) values ('가족', 'n' ,31);
insert into hint(hname, htype ,cno) values ('여자', 'n' ,31);
insert into hint(hname, htype ,cno) values ('아기', 'n' ,31);
insert into hint(hname, htype ,cno) values ('분할의', 'a' ,31);
insert into hint(hname, htype ,cno) values ('납세의', 'a' ,31);
insert into hint(hname, htype ,cno) values ('깊은', 'a' ,31);
insert into hint(hname, htype ,cno) values ('복잡한', 'a' ,31);
insert into hint(hname, htype ,cno) values ('슬픈', 'a' ,31);
insert into hint(hname, htype ,cno) values ('절망의', 'a' ,31);

# 시기 [32]
insert into hint(hname, htype ,cno) values ('열등감', 'n' ,32);
insert into hint(hname, htype ,cno) values ('소외감', 'n' ,32);
insert into hint(hname, htype ,cno) values ('비난', 'n' ,32);
insert into hint(hname, htype ,cno) values ('억까', 'n' ,32);
insert into hint(hname, htype ,cno) values ('힐난', 'n' ,32);
insert into hint(hname, htype ,cno) values ('악플', 'n' ,32);
insert into hint(hname, htype ,cno) values ('옹졸한', 'a' ,32);
insert into hint(hname, htype ,cno) values ('치졸한', 'a' ,32);
insert into hint(hname, htype ,cno) values ('부러운', 'a' ,32);
insert into hint(hname, htype ,cno) values ('뺏고싶은', 'a' ,32);

# 불륜 [33]
insert into hint(hname, htype ,cno) values ('모텔', 'n' ,33);
insert into hint(hname, htype ,cno) values ('몸', 'n' ,33);
insert into hint(hname, htype ,cno) values ('관계', 'n' ,33);
insert into hint(hname, htype ,cno) values ('부부의세계', 'n' ,33);
insert into hint(hname, htype ,cno) values ('은밀한', 'a' ,33);
insert into hint(hname, htype ,cno) values ('비밀스러운', 'a' ,33);
insert into hint(hname, htype ,cno) values ('상처가되는', 'a' ,33);
insert into hint(hname, htype ,cno) values ('욕정의', 'a' ,33);
insert into hint(hname, htype ,cno) values ('신뢰가깨진', 'a' ,33);

# 협박 [34]
insert into hint(hname, htype ,cno) values ('전화', 'n' ,34);
insert into hint(hname, htype ,cno) values ('납치', 'n' ,34);
insert into hint(hname, htype ,cno) values ('핸드폰', 'n' ,34);
insert into hint(hname, htype ,cno) values ('인질', 'n' ,34);
insert into hint(hname, htype ,cno) values ('누칼', 'n' ,34);
insert into hint(hname, htype ,cno) values ('폭력', 'n' ,34);
insert into hint(hname, htype ,cno) values ('범죄', 'n' ,34);
insert into hint(hname, htype ,cno) values ('학대', 'n' ,34);
insert into hint(hname, htype ,cno) values ('공포의', 'a' ,34);
insert into hint(hname, htype ,cno) values ('두려운', 'a' ,34);
insert into hint(hname, htype ,cno) values ('불안한', 'a' ,34);
insert into hint(hname, htype ,cno) values ('초조한', 'a' ,34);
insert into hint(hname, htype ,cno) values ('감시하는', 'a' ,34);
insert into hint(hname, htype ,cno) values ('추적하는', 'a' ,34);
insert into hint(hname, htype ,cno) values ('숨막히는', 'a' ,34);
insert into hint(hname, htype ,cno) values ('두려운', 'a' ,34);

# 짜증 [35]
insert into hint(hname, htype ,cno) values ('싫증', 'n' ,35);
insert into hint(hname, htype ,cno) values ('신경질', 'n' ,35);
insert into hint(hname, htype ,cno) values ('성미', 'n' ,35);
insert into hint(hname, htype ,cno) values ('귀찮은', 'a' ,35);
insert into hint(hname, htype ,cno) values ('역정의', 'a' ,35);
insert into hint(hname, htype ,cno) values ('맞지않는', 'a' ,35);
insert into hint(hname, htype ,cno) values ('마음에안드는', 'a' ,35);

# 묻지마 [36]
insert into hint(hname, htype ,cno) values ('예고', 'n' ,36);
insert into hint(hname, htype ,cno) values ('곤란', 'n' ,36);
insert into hint(hname, htype ,cno) values ('질문', 'n' ,36);
insert into hint(hname, htype ,cno) values ('불특정', 'n' ,36);
insert into hint(hname, htype ,cno) values ('이유', 'n' ,36);
insert into hint(hname, htype ,cno) values ('이유없는', 'a' ,36);
insert into hint(hname, htype ,cno) values ('충동적인', 'a' ,36);
insert into hint(hname, htype ,cno) values ('비상식적인', 'a' ,36);
insert into hint(hname, htype ,cno) values ('반사회적인', 'a' ,36);

# 우울 [37]
insert into hint(hname, htype ,cno) values ('건강', 'n' ,37);
insert into hint(hname, htype ,cno) values ('병원', 'n' ,37);
insert into hint(hname, htype ,cno) values ('약', 'n' ,37);
insert into hint(hname, htype ,cno) values ('현대인', 'n' ,37);
insert into hint(hname, htype ,cno) values ('번아웃', 'n' ,37);
insert into hint(hname, htype ,cno) values ('자살', 'n' ,37);
insert into hint(hname, htype ,cno) values ('답답한', 'a' ,37);
insert into hint(hname, htype ,cno) values ('슬픈', 'a' ,37);
insert into hint(hname, htype ,cno) values ('활기가없는', 'a' ,37);
insert into hint(hname, htype ,cno) values ('침울한', 'a' ,37);
insert into hint(hname, htype ,cno) values ('불안한', 'a' ,37);

# 혐오 [38]
insert into hint(hname, htype ,cno) values ('불결함', 'n' ,38);
insert into hint(hname, htype ,cno) values ('증오', 'n' ,38);
insert into hint(hname, htype ,cno) values ('흉측', 'n' ,38);
insert into hint(hname, htype ,cno) values ('회피', 'n' ,38);
insert into hint(hname, htype ,cno) values ('꺼리는', 'a' ,38);
insert into hint(hname, htype ,cno) values ('증오하는', 'a' ,38);
insert into hint(hname, htype ,cno) values ('싫어하는', 'a' ,38);
insert into hint(hname, htype ,cno) values ('미워하는', 'a' ,38);