
CREATE TABLE ANSWERS
(
  ANSWER_KEY int          NOT NULL COMMENT '응답 ID',
  ANSWER     varchar(200) NULL     COMMENT '응답',
  PRIMARY KEY (ANSWER_KEY)
) COMMENT '응답';

CREATE TABLE QUESTIONS
(
  QUESTION_KEY int          NOT NULL COMMENT '질문 ID',
  QUESTION     varchar(200) NULL     COMMENT '질문',
  PRIMARY KEY (QUESTION_KEY)
) COMMENT '질문';

CREATE TABLE QUESTIONS_AND_ANSWERS
(
  ANSWER_KEY   int NOT NULL,
  QUESTION_KEY int NOT NULL,
  TOTAL_KEY    int NOT NULL COMMENT '질문과 응답 ID',
  PRIMARY KEY (TOTAL_KEY)
) COMMENT '질문과 응답';

CREATE TABLE RESPONSES
(
  RESPONSE_NUMBER int          NOT NULL COMMENT '응답자 ID',
  NAME            varchar(200) NULL     COMMENT '이름',
  PRIMARY KEY (RESPONSE_NUMBER)
) COMMENT '응답자';

CREATE TABLE TOTAL_QUESTIONS
(
  RESPONSE_NUMBER int NOT NULL,
  TOTAL_KEY       int NOT NULL
) COMMENT '응답자와 문답 결과';

ALTER TABLE TOTAL_QUESTIONS
  ADD CONSTRAINT FK_RESPONSES_TO_TOTAL_QUESTIONS
    FOREIGN KEY (RESPONSE_NUMBER)
    REFERENCES RESPONSES (RESPONSE_NUMBER);

ALTER TABLE QUESTIONS_AND_ANSWERS
  ADD CONSTRAINT FK_ANSWERS_TO_QUESTIONS_AND_ANSWERS
    FOREIGN KEY (ANSWER_KEY)
    REFERENCES ANSWERS (ANSWER_KEY);

ALTER TABLE QUESTIONS_AND_ANSWERS
  ADD CONSTRAINT FK_QUESTIONS_TO_QUESTIONS_AND_ANSWERS
    FOREIGN KEY (QUESTION_KEY)
    REFERENCES QUESTIONS (QUESTION_KEY);

ALTER TABLE TOTAL_QUESTIONS
  ADD CONSTRAINT FK_QUESTIONS_AND_ANSWERS_TO_TOTAL_QUESTIONS
    FOREIGN KEY (TOTAL_KEY)
    REFERENCES QUESTIONS_AND_ANSWERS (TOTAL_KEY);
