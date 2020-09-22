
tbl_inyeon_freply( --자유 게시판 댓글 테이블
	freply_num int not null,--자유 게시판 댓글 번호
	fboard_num int,--자유 게시판 번호
	fb_reply_cont varchar2(2000) not null,--자유 게시판 댓글 내용
	fb_reply_date date,--자유 게시판 댓글 등록일
	fb_reply_reply varchar2(400),--자유 게시판 대댓글 유무
	fb_img_url varchar2(2000),--자유 게시판 댓글 이미지 파일 경로
)
