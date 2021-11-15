
Requete 1 :

SELECT tab1.Id_video , tab1.Titre , tab1.query  FROM 
	(
	SELECT a.Id_video , a.Titre , c.query ,a.Nb_like 
    from video a, correspend b , query c 
    where a.Id_Video=b.Id_Video and b.Id_Query = c.Id_Query 
 	) tab1 
WHERE tab1.Nb_like = 
	( 
	select MAX(tab2.Nb_like) from (
								  SELECT d.Id_video , d.Titre , f.query ,d.Nb_like 
    							  from video d, correspend e , query f where d.Id_Video=e.Id_Video 
    							  and e.Id_Query = f.Id_Query  
    							  ) tab2 
	where tab1.query=tab2.query
    )
GROUP BY tab1.query;


SELECT QR.Query, CR1.Id_Video, VD1.Titre FROM query QR , video VD1 , correspend CR1  
WHERE CR1.Id_Query = QR.Id_Query  AND VD1.Id_Video = CR1.Id_Video
AND VD1.Nb_like=( SELECT max(VD2.Nb_like) FROM video VD2, correspend CR2 WHERE  CR2.Id_Query = QR.Id_Query  AND VD2.Id_Video = CR2.Id_Video )




test :

SELECT a.Id_video , a.Titre , c.query ,a.Nb_like , a.Nb_dislike , a.Nb_commentaires
	from video a, correspend b , query c 
	where a.Id_Video=b.Id_Video and b.Id_Query = c.Id_Query
	GROUP by Id_video,query
ORDER BY `c`.`query` ASC


Requete 2 :

SELECT tab1.Id_video , tab1.Titre , tab1.query  FROM (
SELECT a.Id_video , a.Titre , c.query ,a.Nb_dislike
    from video a, correspend b , query c 
    where a.Id_Video=b.Id_Video and b.Id_Query = c.Id_Query ) tab1 
where tab1.Nb_dislike = ( select MAX(tab2.Nb_dislike) from (SELECT d.Id_video , d.Titre , f.query ,d.Nb_dislike 
    from video d, correspend e , query f where d.Id_Video=e.Id_Video and e.Id_Query = f.Id_Query  ) tab2 where tab1.query=tab2.query )
    GROUP BY tab1.query



select QR.Query, CR1.Id_Video, VD1.Titre from query QR , video VD1 , correspend CR1  
		where CR1.Id_Query = QR.Id_Query  and VD1.Id_Video = CR1.Id_Video
			and VD1.Nb_dislike=( select max(VD2.Nb_dislike) from video VD2, correspend CR2 where  CR2.Id_Query = QR.Id_Query  and VD2.Id_Video = CR2.Id_Video )





Requete 3 : 



SELECT c.query , YEAR(a.Date_publication) YEAR , COUNT(a.Id_Video) Nombre_video 
	from video a , correspend b , query c 
    	WHERE a.Id_Video=b.Id_Video and b.Id_Query=c.Id_Query 
	GROUP by  c.Query , YEAR ORDER BY c.Id_Query,YEAR





Requete 4 ; 

SELECT v.id_video, 
       ( Count(cm.id_video) + ( SELECT COUNT(c.id_child) from commentaire c WHERE c.id_child IS NOT NULL and v.Id_Video=c.Id_Video)) 
       as nombre_totale_commentaire, 
       Count(DISTINCT c.id_chaine) AS nombre_totale_utilisateur 
FROM   video v 
       INNER JOIN commentaire cm 
               ON v.id_video = cm.id_video 
       INNER JOIN chaines c 
               ON c.id_chaine = cm.id_chaine 
GROUP  BY v.id_video


/*
SELECT v.id_video, 
       Count(cm.id_video)          AS nmbr_total_comm, 
       Count(DISTINCT c.id_chaine) AS nmbr_total_user 
FROM   video v 
       INNER JOIN commentaire cm 
               ON v.id_video = cm.id_video 
       INNER JOIN chaines c 
               ON c.id_chaine = cm.id_chaine 
GROUP  BY v.id_video ; */





Requete 5 ;

SELECT tab3.Id_video , tab3.Titre , tab3.query FROM (
SELECT h.Id_video , h.Titre , g.query ,h.Nb_like , g.Id_Query
    from video h, correspend b , query g 
    where h.Id_Video=b.Id_Video and b.Id_Query = g.Id_Query ) tab3 
where tab3.Nb_like = ( select MAX(tab4.Nb_like) from (SELECT k.Id_video , k.Titre , l.query ,k.Nb_like 
    from video k, correspend m , query l where k.Id_Video=m.Id_Video and m.Id_Query = l.Id_Query  ) tab4 
where tab3.query=tab4.query ) and tab3.Query= 'geometry'
    GROUP BY tab3.query



select QR.Query, CR1.Id_Video, VD1.Titre from query QR , video VD1 , correspend CR1  
		where CR1.Id_Query = QR.Id_Query  and VD1.Id_Video = CR1.Id_Video
			and VD1.Nb_like=( select max(VD2.Nb_like) from video VD2, correspend CR2 where  CR2.Id_Query = QR.Id_Query  and VD2.Id_Video = CR2.Id_Video )
			AND QR.Id_Query=\"".$empid."\"


			tab3.Id_Query= \"".$empid."\"



Requete 6 ;

SELECT tab1.query , tab1.Titre  , tab1.Id_video    FROM (
SELECT a.Id_video , a.Titre , c.query ,a.Nb_commentaires
    from video a, correspend b , query c 
    where a.Id_Video=b.Id_Video and b.Id_Query = c.Id_Query ) tab1 
where tab1.Nb_commentaires = ( select MAX(tab2.Nb_commentaires) from (SELECT d.Id_video , d.Titre , f.query ,d.Nb_commentaires 
    from video d, correspend e , query f where d.Id_Video=e.Id_Video and e.Id_Query = f.Id_Query  ) tab2 where tab1.query=tab2.query )
    GROUP BY tab1.query



    select QR.Query, CR1.Id_Video, VD1.Titre from query QR , video VD1 , correspend CR1  
		where CR1.Id_Query = QR.Id_Query  and VD1.Id_Video = CR1.Id_Video
			and VD1.Nb_commentaires=( select max(VD2.Nb_commentaires) from video VD2, correspend CR2 where  CR2.Id_Query = QR.Id_Query  and VD2.Id_Video = CR2.Id_Video )






Requete 7 ;

select a.Id_Video, d.Query , b.Titre , a.Id_commentaire , e.Nom_chaine as Utilisateur 
from commentaire a , video b , correspend c , query d , chaines e 
where a.Id_Video=b.Id_Video and b.Id_Video=c.Id_Video and e.id_chaine=a.id_chaine and c.Id_Query=d.Id_Query 
and b.Id_Video = 	 ( SELECT tab1.Id_video FROM (SELECT a.Id_video , a.Titre , c.query ,a.Nb_like 
				 	   from video a, correspend b , query c where a.Id_Video=b.Id_Video and b.Id_Query = c.Id_Query ) tab1 
					   where tab1.Nb_like = ( select MAX(tab2.Nb_like) from (SELECT d.Id_video , d.Titre , f.query ,d.Nb_like 
					   from video d, correspend e , query f 
					   where d.Id_Video=e.Id_Video and e.Id_Query = f.Id_Query  ) tab2 
					   where tab1.query=tab2.query ) and tab1.query='geometry' GROUP BY tab1.query)
and a.Nb_like_com =	 ( SELECT max(r.Nb_like_com) from commentaire r where r.Id_Video=b.Id_Video )


select a.Id_Video, d.Query , b.Titre , a.Id_commentaire , e.Nom_chaine as Utilisateur 
from commentaire a , video b , correspend c , query d , chaines e 
where a.Id_Video=b.Id_Video and b.Id_Video=c.Id_Video and e.id_chaine=a.id_chaine and c.Id_Query=d.Id_Query 
and b.Id_Video = 	 ( select  CR1.Id_Video from query QR , video VD1 , correspend CR1  
						where CR1.Id_Query = QR.Id_Query  and VD1.Id_Video = CR1.Id_Video
						and VD1.Nb_like=( select max(VD2.Nb_like) from video VD2, correspend CR2 where  CR2.Id_Query = QR.Id_Query  and VD2.Id_Video = CR2.Id_Video )
						AND QR.Id_Query=\"".$empid."\")
and a.Nb_like_com =	 ( SELECT max(r.Nb_like_com) from commentaire r where r.Id_Video=b.Id_Video )





test de requte 7 : 


select * from video a , commentaire b, correspend c, query d 
WHERE a.Id_Video=b.Id_Video and a.Id_Video=c.Id_Video and c.Id_Query=d.Id_Query AND a.Id_Video='jgjzIUF42f'


-------------------

la video plus like : 
retourne Id_video nta3 video plus like 

SELECT tab3.Id_video FROM (
SELECT h.Id_video , h.Titre , g.query ,h.Nb_like 
    from video h, correspend b , query g 
    where h.Id_Video=b.Id_Video and b.Id_Query = g.Id_Query ) tab3 
where tab3.Nb_like = ( select MAX(tab4.Nb_like) from (SELECT k.Id_video , k.Titre , l.query ,k.Nb_like 
    from video k, correspend m , query l where k.Id_Video=m.Id_Video and m.Id_Query = l.Id_Query  ) tab4 where tab3.query=tab4.query ) and tab3.query='geometry'
    GROUP BY tab3.query


---------------------------
test 

SELECT * FROM `commentaire` where Id_Video='8GnyjbUj-eE' AND Nb_like_com != 0 



