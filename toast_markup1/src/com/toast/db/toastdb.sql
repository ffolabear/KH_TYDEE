DROP SEQUENCE TOASTSEQ;
DROP TABLE TOASTTABLE;
DELETE FROM TOASTTABLE WHERE SEQ > 1;

CREATE TABLE TOASTTABLE(
	SEQ NUMBER PRIMARY KEY,
	TITLE VARCHAR2(1000) NOT NULL,
	CONTENT VARCHAR2(4000) NOT NULL,
	REGDATE DATE NOT NULL
);
CREATE SEQUENCE TOASTSEQ;

INSERT INTO TOASTTABLE VALUES(TOASTSEQ.NEXTVAL, '테스트입니다', '테스트', SYSDATE);
SELECT SEQ, TITLE, CONTENT, REGDATE FROM TOASTTABLE;