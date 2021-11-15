<?php
require 'results.php';


if (isset($_GET['empid']) && !isset($_GET['empid2'])) {
    $empid = $_GET['empid'];
    $select = "SELECT tab3.Id_video , tab3.Titre , tab3.query FROM (
                SELECT h.Id_video , h.Titre , g.query ,h.Nb_like , g.Id_Query
                    from video h, correspend b , query g 
                    where h.Id_Video=b.Id_Video and b.Id_Query = g.Id_Query ) tab3 
                where tab3.Nb_like = ( select MAX(tab4.Nb_like) from (SELECT k.Id_video , k.Titre , l.query ,k.Nb_like 
                    from video k, correspend m , query l where k.Id_Video=m.Id_Video and m.Id_Query = l.Id_Query  ) tab4 
                where tab3.query=tab4.query ) and tab3.Id_Query= \"".$empid."\"
                    GROUP BY tab3.query
                ";
    $result = $conn->query($select);
    echo '<table class="table table-bordered">';
    echo '<tr>'
            .'<td>'.'query'.'</td>'
            .'<td>'.'Titre'.'</td>'
            .'<td>'.'Id_Video'.'</td>'
        .'</tr>';
    while($row = $result->fetch_object()){
        echo '<tr>'
            .'<td>'.$row->query.'</td>'
            .'<td>'.$row->Titre.'</td>'
            .'<td>'.$row->Id_video.'</td>'
            .'</tr>';
    }
    echo '</table>';
}
if (isset($_GET['empid2']) && !isset($_GET['empid'])) {
    $empid = $_GET['empid2'];
    $select = "SELECT a.Id_Video, d.Query , b.Titre , a.Id_commentaire , e.Nom_chaine as Utilisateur 
                from commentaire a , video b , correspend c , query d , chaines e 
                where a.Id_Video=b.Id_Video and b.Id_Video=c.Id_Video and e.id_chaine=a.id_chaine and c.Id_Query=d.Id_Query 
                and b.Id_Video = (SELECT tab1.Id_video FROM (SELECT a.Id_video , a.Titre , c.query ,a.Nb_like ,c.Id_Query
                from video a, correspend b , query c where a.Id_Video=b.Id_Video and b.Id_Query = c.Id_Query ) tab1 
                where tab1.Nb_like = ( select MAX(tab2.Nb_like) 
                from (SELECT d.Id_video , d.Titre , f.query ,d.Nb_like from video d, correspend e , query f 
                where d.Id_Video=e.Id_Video and e.Id_Query = f.Id_Query  ) tab2 where tab1.query=tab2.query ) and tab1.Id_Query=\"".$empid."\" GROUP BY tab1.query)
                and a.Nb_like_com =(SELECT max(r.Nb_like_com) from commentaire r where r.Id_Video=( SELECT tab3.Id_video FROM (
                SELECT h.Id_video , h.Titre , g.query ,h.Nb_like ,g.Id_Query
                    from video h, correspend b , query g where h.Id_Video=b.Id_Video and b.Id_Query = g.Id_Query ) tab3 
                where tab3.Nb_like = ( select MAX(tab4.Nb_like) from (SELECT k.Id_video , k.Titre , l.query ,k.Nb_like 
                    from video k, correspend m , query l where k.Id_Video=m.Id_Video and m.Id_Query = l.Id_Query  ) 
                tab4 where tab3.query=tab4.query ) and tab3.Id_Query=\"".$empid."\" GROUP BY tab3.query ) )
                  ";
    $result = $conn->query($select);
    echo '<table class="table table-bordered">';
    echo '<tr>'
            .'<td>'.'query'.'</td>'
            .'<td>'.'Titre'.'</td>'
            .'<td>'.'Id_Video'.'</td>'
            .'<td>'.'Utilisateur'.'</td>'
        .'</tr>';
    while($row = $result->fetch_object()){
        echo '<tr>'
            .'<td>'.$row->Query.'</td>'
            .'<td>'.$row->Titre.'</td>'
            .'<td>'.$row->Id_Video.'</td>'
            .'<td>'.$row->Utilisateur.'</td>'
            .'</tr>';
    }
    echo '</table>';
}  
?>  