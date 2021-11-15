#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Query
#------------------------------------------------------------

CREATE TABLE Query(
        id_Query       Int NOT NULL ,
        Query          Varchar (10) NOT NULL ,
        Date_debut     Date NOT NULL ,
        Date_fin       Date NOT NULL ,
        Date_Recherche Datetime NOT NULL
	,CONSTRAINT Query_PK PRIMARY KEY (id_Query)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Chaines
#------------------------------------------------------------

CREATE TABLE Chaines(
        id_chaine          Varchar (100) NOT NULL ,
        Nom_chaine         Varchar (100) NOT NULL ,
        Nb_abonner         Int NOT NULL ,
        Date_creation      Date NOT NULL ,
        Nb_vues            Int NOT NULL ,
        Description_chaine Varchar (100) NOT NULL
	,CONSTRAINT Chaines_PK PRIMARY KEY (id_chaine)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Video
#------------------------------------------------------------

CREATE TABLE Video(
        Id_Video         Varchar (100) NOT NULL ,
        Titre            Varchar (300) NOT NULL ,
        Description      Text NOT NULL ,
        Nb_Vues          Int NOT NULL ,
        Nb_like          Int NOT NULL ,
        Nb_dislike       Int NOT NULL ,
        Nb_commentaires  Int NOT NULL ,
        Date_publication Datetime NOT NULL ,
        id_chaine        Varchar (100) NOT NULL
	,CONSTRAINT Video_PK PRIMARY KEY (Id_Video)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Correspend
#------------------------------------------------------------

CREATE TABLE Correspend(
        id_Query Int NOT NULL ,
        Id_Video Varchar (100) NOT NULL
	,CONSTRAINT Correspend_PK PRIMARY KEY (id_Query,Id_Video)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Commentaire
#------------------------------------------------------------

CREATE TABLE Commentaire(
        Id_commentaire         Varchar (100) NOT NULL ,
        text_com               Text NOT NULL ,
        Nb_like_com            Int ,
        Nb_rependu             Int ,
        id_child               Varchar (300) NOT NULL ,
        Id_Video               Varchar (100) NOT NULL ,
        id_chaine              Varchar (100) NOT NULL ,
        Id_commentaire_Repense Varchar (100)
	,CONSTRAINT Commentaire_PK PRIMARY KEY (Id_commentaire)
)ENGINE=InnoDB;




ALTER TABLE Video
	ADD CONSTRAINT Video_Chaines0_FK
	FOREIGN KEY (id_chaine)
	REFERENCES Chaines(id_chaine);

ALTER TABLE Correspend
	ADD CONSTRAINT Correspend_Query0_FK
	FOREIGN KEY (id_Query)
	REFERENCES Query(id_Query);

ALTER TABLE Correspend
	ADD CONSTRAINT Correspend_Video1_FK
	FOREIGN KEY (Id_Video)
	REFERENCES Video(Id_Video);

ALTER TABLE Commentaire
	ADD CONSTRAINT Commentaire_Video0_FK
	FOREIGN KEY (Id_Video)
	REFERENCES Video(Id_Video);

ALTER TABLE Commentaire
	ADD CONSTRAINT Commentaire_Chaines1_FK
	FOREIGN KEY (id_chaine)
	REFERENCES Chaines(id_chaine);

ALTER TABLE Commentaire
	ADD CONSTRAINT Commentaire_Commentaire2_FK
	FOREIGN KEY (Id_commentaire_Repense)
	REFERENCES Commentaire(Id_commentaire);
