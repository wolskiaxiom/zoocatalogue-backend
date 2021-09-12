drop table if exists mytable;
CREATE TABLE mytable(
   id            INTEGER  NOT NULL PRIMARY KEY
  ,animal        VARCHAR(28) NOT NULL
  ,name          VARCHAR(25) NOT NULL
  ,price         NUMERIC(6,2) NOT NULL
  ,image_url     VARCHAR(9715) NOT NULL
  ,in_stock      INTEGER  NOT NULL
  ,fast_delivery VARCHAR(5) NOT NULL
  ,ratings       INTEGER  NOT NULL
);