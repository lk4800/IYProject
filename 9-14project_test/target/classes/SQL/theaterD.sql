create table theaterD(
 td_no int primary key,
 email varchar2(100) not null, --이메일 
 td_title varchar2(500) not null, --제목
 td_viewdays varchar2(100) not null, --상영기간
 td_agegrade varchar2(100) not null, --등급(~세 이상 관람가)
 td_runtime varchar2(100) not null, --관람시간
 td_actor varchar2(1000) not null, --출연진
 td_stgrade1 varchar2(100) not null, --좌석 등급
 td_stgrade2 varchar2(100),
 td_stgrade3 varchar2(100),
 td_stgrade4 varchar2(100),
 td_stprice1 varchar2(100) not null, --좌석가격
 td_stprice2 varchar2(100),
 td_stprice3 varchar2(100),
 td_stprice4 varchar2(100),
 td_tinfo varchar2(2000) not null, --공연시간안내
 td_mainposter varchar2(4000) not null, --메인포스터
 td_detailposter varchar2(4000) not null, --게시판내용(상세이미지 등)
 td_tiketingdate int not null, --참조할 캘린더 정보 시퀀스
 td_tiketinginfo varchar2(200), --1회시간 (해당 날짜 제목)
 td_tiketingtime varchar2(100), --공연 시간 선택
 td_check char not null, --게시글 승인 확인 // 등급 0 // 취소 1 // 대기 2 확인
 td_signUp_date date
)

create sequence td_seq
start with 1
increment by 1
nocache

alter table theaterD add constraint td_fk_email foreign key (email) references tbl_inyeon_user(email);
drop table theaterD;
insert into theaterD(td_no,email,td_title,td_viewdays,td_agegrade, td_runtime,td_actor,td_stgrade1,td_stprice1,td_tinfo,td_mainposter,td_detailposter,td_tiketingdate,td_check,td_signUp_date) 
values(td_seq.nextval,'wlghksl12@daum.net','테스트 연극5','2020.10.06~2020.10.14','전체 이상 관람가','2시간','윤혜진,신효창,신지환,이건희,김영모','전석','10000','그냥 말','C://~~','게시판 내용',1,'1',sysdate);

select * from	(select email,td_title,td_viewdays,td_agegrade,td_check,td_signUp_date from (select * from theaterD	order by td_signUp_date asc))

select * from theaterD;
