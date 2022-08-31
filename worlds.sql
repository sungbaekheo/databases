
CREATE TABLE city_me
(
  ID          int          NULL     COMMENT '번호',
  CountryCode varchar(200) NOT NULL COMMENT '국가 코드',
  Name        varchar(200) NULL     COMMENT '도시 이름',
  District    varchar(200) NULL     COMMENT '지구',
  Population  int          NULL     COMMENT '도시 인구'
) COMMENT '도시';

CREATE TABLE country_me
(
  Code           varchar(200) NOT NULL COMMENT '국가 코드',
  Name           varchar(200) NULL     COMMENT '국가 이름',
  Continent      enum         NULL     COMMENT '대륙',
  Region         varchar(200) NULL     COMMENT '지역',
  SurfaceArea    decimal      NULL     COMMENT '국가 면적',
  IndepYear      smallint     NULL     COMMENT '독립 년도',
  Population     int          NULL     COMMENT '국가 인구',
  LifeExpectancy decimal      NULL     COMMENT '기대 수명',
  Gnp            decimal      NULL     COMMENT '국민총생산',
  GnpOld         decimal      NULL     COMMENT '과거 국민총생산',
  LocalName      varchar(200) NULL     COMMENT '현지언어 국가 이름',
  GovermentForm  varchar(200) NULL     COMMENT '정치 체제',
  HeadOfState    varchar(200) NULL     COMMENT '국가 지도자',
  Capital        int          NULL    ,
  Code2          varchar(200) NULL     COMMENT '국가 축약 코드',
  PRIMARY KEY (Code)
) COMMENT '국가';

CREATE TABLE countrylanguage_me
(
  CountryCode varchar(200) NOT NULL COMMENT '국가 코드',
  Language    varchar(200) NULL     COMMENT '언어',
  IsOfficial  enum         NULL     COMMENT '공식언어 여부',
  Percentage  decimal      NULL     COMMENT '언어 사용 비율'
) COMMENT '국가 언어';

ALTER TABLE city_me
  ADD CONSTRAINT FK_country_me_TO_city_me
    FOREIGN KEY (CountryCode)
    REFERENCES country_me (Code);

ALTER TABLE countrylanguage_me
  ADD CONSTRAINT FK_country_me_TO_countrylanguage_me
    FOREIGN KEY (CountryCode)
    REFERENCES country_me (Code);
