-- tbl_inyeon_reservation

create table tbl_inyeon_reservation(

  res_code varchar2(20) primary key-- 예약 테이블
  ,ticket_code1 varchar2(20) not null --티켓 코드
  ,ticket_code2 varchar2(20)
  ,ticket_code3 varchar2(20)
  ,ticket_code4 varchar2(20)
  ,location_code varchar2(100) not null -- 장소 코드
  ,theater_code varchar2(100) not null -- 극장 코드
  ,email varchar2(100)--user테이블 email외래키
  )
  

  
-- tbl_inyeon_ticket
create table tbl_inyeon_ticket(--티켓 테이블
  ticket_code varchar2(20) primary key --티켓 코드
  ,cost int  --티켓 비용 (1개당)
  ,seat varchar2(20) --좌석 정원
)