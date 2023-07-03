
CREATE TABLE STUDENT( -- 테이블 생성
    ID VARCHAR2(10),
    NAME VARCHAR2(10),
    KOR VARCHAR2(5),
    ENG VARCHAR2(5),
    MATH VARCHAR2(5),
    PRIMARY KEY(ID)
);

DESC STUDENT; -- 확인

COMMIT; -- 저장

-- 데이터 넣기
INSERT INTO STUDENT VALUES('1001', '홍길동', '70', '80', '90');
INSERT INTO STUDENT VALUES('1002', '김길이', '100', '60', '90');
INSERT INTO STUDENT VALUES('1003', '김개똥', '80', '70', '90');

-- 확인
SELECT * FROM STUDENT;

-- 수정
UPDATE STUDENT SET KOR='90', ENG='100', MATH='90' WHERE ID='1001';


COMMIT; -- 저장

DELETE FROM STUDENT; -- 삭제

ROLLBACK; -- 커밋전 되돌리기

SELECT * FROM STUDENT; -- 확인



--------------------------------------------------------------
-- 문제 2
-- salary : 월급
-------------------------------------------------------
create table employee(
    name varchar2(15),
    salary number,
    job varchar2(20),
    join_company date
);

insert into employee values('홍길동',2000000,'컴퓨터','2222/12/24');

DELETE FROM EMPLOYEE WHERE NAME='홍길동';

select * from employee;


alter session set nls_date_format = 'YYYY/MM/DD';
COMMIT;

insert into employee values('설까치',1800000,'삼성','2017/10/24');
insert into employee values('로버트',1850000,'애플','2019/01/04');
insert into employee values('고도리',2200000,'엘지','2017/11/06');
insert into employee values('김개똥',2500000,'SK','2017/04/14');
insert into employee values('리우뚱',2410000,'샤오미','2018/01/09');
insert into employee values('강민',1900000,'삼성','2019/10/24');
insert into employee values('할리',1800000,'애플','2019/12/04');
insert into employee values('심심해',4630000,'엘지','2015/04/02');
insert into employee values('놀아줘',2770000,'SK','2017/01/24');
insert into employee values('왕만두',3650000,'샤오미','2016/08/04');
insert into employee values('머리빨',4210000,'삼성','2015/03/18');
insert into employee values('마리오',2720000,'애플','2017/01/04');
insert into employee values('최치우',4320000,'엘지','2015/06/07');
insert into employee values('안깔쌈',3490000,'SK','2015/09/07');
insert into employee values('끝짱',2200000,'샤오미','2017/05/04');
insert into employee values('막장',1920000,'삼성','2018/11/24');
insert into employee values('드라마',3420000,'애플','2016/07/29');
insert into employee values('개똥이',1800000,'엘지','2018/12/24');
insert into employee values('마포구',2230000,'SK','2018/01/05');
insert into employee values('소고기',1800000,'샤오미','2019/01/09');
insert into employee values('짜장면',2100000,'삼성','2017/10/24');
insert into employee values('소곱창',2200000,'애플','2017/11/04');
insert into employee values('참이슬',1950000,'엘지','2017/10/24');
insert into employee values('뤼우뚱',1800000,'SK','2018/10/24');
insert into employee values('위메프',1800000,'샤오미','2019/12/07');
insert into employee values('북경시',1880000,'삼성','2018/11/14');
insert into employee values('스미스',1970000,'애플','2019/06/04');
insert into employee values('핸드폰',7200000,'엘지','2010/01/27');
insert into employee values('빅스비',3570000,'SK','2015/02/17');
insert into employee values('노라줘',3200000,'샤오미','2015/11/24');
insert into employee values('사이다',2400000,'삼성','2017/09/26');
insert into employee values('김말이',7000000,'애플','2010/01/21');
insert into employee values('오도독',6230000,'엘지','2011/08/19');

insert into employee values('쌈지돈',3710000,'SK','2015/08/19');
insert into employee values('화장지',1770000,'샤오미','2019/04/28');
insert into employee values('소화기',1920000,'삼성','2019/10/07');
insert into employee values('박효신',2670000,'애플','2017/11/24');
insert into employee values('판빙빙',3120000,'엘지','2016/05/19');
insert into employee values('김재욱',4190000,'SK','2015/01/02');
insert into employee values('송혜교',4280000,'샤오미','2015/01/02');
insert into employee values('송중기',3700000,'삼성','2016/02/17');
insert into employee values('손홍민',2220000,'애플','2018/02/04');
insert into employee values('백종원',2760000,'엘지','2017/10/14');
insert into employee values('오창석',2620000,'SK','2017/09/04');
insert into employee values('스텔라',2500000,'샤오미','2017/11/20');
insert into employee values('멕스웰',1970000,'삼성','2017/10/30');
insert into employee values('조현',  2720000,'애플','2018/11/11');
insert into employee values('류현진',2600000,'엘지','2015/11/19');
insert into employee values('은지원',5670000,'SK','2017/10/16');
insert into employee values('전효성',3750000,'샤오미','2015/09/15');
insert into employee values('이채은',3400000,'삼성','2016/02/09');
insert into employee values('최고봉',8900000,'애플','2010/01/04');
insert into employee values('광화문',1860000,'엘지','2017/10/24');
insert into employee values('동대문',1790000,'SK','2017/10/24');
insert into employee values('서대문',2880000,'샤오미','2016/02/27');
insert into employee values('대통령',2320000,'삼성','2016/05/24');
insert into employee values('예지원',1780000,'애플','2019/01/09');
insert into employee values('정소민',2900000,'엘지','2016/10/22');
insert into employee values('워너원',3000000,'SK','2015/10/10');
insert into employee values('북한군',3200000,'샤오미','2015/11/11');
insert into employee values('남한군',2500000,'삼성','2016/12/19');
insert into employee values('짜투리',1850000,'애플','2018/04/03');
insert into employee values('이승기',1900000,'엘지','2018/01/01');
insert into employee values('기차길',1790000,'SK','2018/05/02');
insert into employee values('길거리',2700000,'샤오미','2016/07/20');

select * from employee;

-- 연봉이 1억 넘는 사람
SELECT * FROM EMPLOYEE WHERE (SALARY * 12) > 100000000;

-- 2015년도 이전 (2014년도 부터)에 입사한 사람의 이름과 입사년도 출력
SELECT NAME,JOIN_COMPANY FROM employee WHERE JOIN_COMPANY < '2015/01/01';

-- 급여가 280~300만원 사이 사람들 출력
SELECT * FROM EMPLOYEE WHERE SALARY BETWEEN 2800000 AND 3000000;

-- 입사년도 2015년 이상, 연봉 6000만원 이상인 사람 출력
SELECT * FROM employee WHERE JOIN_COMPANY > '2015/01/01' AND (SALARY *12) >= 60000000;

-- 회사가 엘지 또는 삼성이며 연봉이 5000만원 이상인 사람 출력
SELECT * FROM employee WHERE (JOB ='엘지' OR JOB ='삼성') AND (SALARY *12) >= 50000000;

-- 회사는 오름차순 정렬, 연봉은 내림차순 정렬하고 이름에 '김'이 들어가며 연봉은 30000만원 이상인 모든 내용
SELECT * FROM EMPLOYEE WHERE NAME LIKE '%김%' AND (SALARY *12) >= 30000000 ORDER BY JOB ASC, SALARY DESC;












