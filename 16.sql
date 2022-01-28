create table USUARIOS (
    USUARIO varchar2(20) constraint usuarios_pk primary key,
    NOMBRE varchar2(20),
    FOTO_PERFIL varchar2(4000),
    FOTO_BANNER varchar2(4000),
    NUM_SEGUIDOS INT,
    NUM_SEGUIDORES INT,
    FECHA_NACIMIENTO date,
    DESCRIPCION varchar2(200),
    FECHA_INICIO date,
    LOCALIDAD_DIRECCION varchar2(200),
    ID_TWEET INT,
    FOREIGN KEY ID_TWEET REFERENCES TWEETS (ID_TWEET)
    ON DELETE RESTRICT ON UPDATE CASCADE
);

create table TWEETS (
    ID_TWEET INT constraint tweets_pk primary key,
    MENSAJE varchar2(200),
    NUMERO_LIKES INT,
    NUMERO_RETWEETS INT,
    NUMERO_DISLIKES INT
);

create table TIME_LINES (
    ID_TL INT constraint time_lines_pk primary key,
    TWEET_SEGUIDO varchar2(200),
    LIKE_SEGUIDO INT,
    RETWEET_SEGUIDO varchar2(200),
    FOREIGN KEY ID_TWEET REFERENCES TWEETS (ID_TWEET)
    ON DELETE RESTRICT ON UPDATE CASCADE
);

create table TRENDINGS_TOPPICS (
    ID_TT INT constraint trendings_toppics_pk primary key,
    PALABRA_CLAVE varchar2(10)
    ID_TWEET INT,
    FOREIGN KEY ID_TWEET REFERENCES TWEETS (ID_TWEET)
    ON DELETE RESTRICT ON UPDATE CASCADE
);
