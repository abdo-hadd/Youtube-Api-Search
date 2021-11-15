<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <style>
        #myModal.div
        {
            width:1000px;
            height:1000px;
        }
    </style>
    <title>Projet Base Données 1 </title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
        crossorigin="anonymous">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script type="text/javascript">
            function getData(empid, divid){
                $.ajax({
                    url: 'requete5.php?empid='+empid, 
                    success: function(html) {
                        var ajaxDisplay = document.getElementById(divid);
                        ajaxDisplay.innerHTML = html;
                    }
                });
            }
        </script>

     <script type="text/javascript">
            function getDataa(empid, divid){
                $.ajax({
                    url: 'requete5.php?empid2='+empid, 
                    success: function(html) {
                        var ajaxDisplay = document.getElementById(divid);
                        ajaxDisplay.innerHTML = html;
                    }
                });
            }
        </script> 



</head>
<body>
<?php
    require "./results.php";
?>
<div>
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal1">
    Requête 1
    </button>

    <!-- The Modal -->
    <div class="modal" id="myModal1">
    <div class="modal-dialog">
        <div class="modal-content">

        <table class="table table-bordered table-dark table-striped">
            <thead>
                <th>Id</th>
                <th>Titre</th>
                <th>query</th>
           
            </thead>
            <tbody>
                
                <?php
                $sql = "SELECT tab1.Id_video , tab1.Titre , tab1.query  FROM (
                SELECT a.Id_video , a.Titre , c.query ,a.Nb_like 
                    from video a, correspend b , query c 
                    where a.Id_Video=b.Id_Video and b.Id_Query = c.Id_Query ) tab1 
                where tab1.Nb_like = ( select MAX(tab2.Nb_like) from (SELECT d.Id_video , d.Titre , f.query ,d.Nb_like 
                    from video d, correspend e , query f where d.Id_Video=e.Id_Video and e.Id_Query = f.Id_Query  ) tab2 where tab1.query=tab2.query )
                    GROUP BY tab1.query ;
                        ";
                $result = $conn->query($sql);

                if ($result->num_rows > 0)
                {
                    while($row = $result->fetch_assoc()) 
                    {
                        echo "<tr>";
                        echo "<td>".$row['Id_video'] . "</td>";
                        echo "<td>".$row['Titre'] . "</td>";
                        echo "<td>".$row['query'] . "</td>";
                        echo "<tr>";
                        
                    }
                }
                ?>
            </tbody>
        </table>

        </div>
    </div>
    </div>
</div>
<br>
<div>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal2">
Requête 2
</button>

    <!-- The Modal -->
    <div class="modal" id="myModal2">
    <div class="modal-dialog">
        <div class="modal-content">

        <table class="table table-bordered table-dark table-striped">
            <thead>
                <th>Id</th>
                <th>Titre</th>
                <th>query</th>
            </thead>
            <tbody>
                
                <?php
                $sql = "SELECT tab1.Id_video , tab1.Titre , tab1.query  FROM (
                        SELECT a.Id_video , a.Titre , c.query ,a.Nb_dislike
                            from video a, correspend b , query c 
                            where a.Id_Video=b.Id_Video and b.Id_Query = c.Id_Query ) tab1 
                        where tab1.Nb_dislike = ( select MAX(tab2.Nb_dislike) from (SELECT d.Id_video , d.Titre , f.query ,d.Nb_dislike 
                            from video d, correspend e , query f where d.Id_Video=e.Id_Video and e.Id_Query = f.Id_Query  ) tab2 where tab1.query=tab2.query )
                            GROUP BY tab1.query ";
                $result = $conn->query($sql);

                if ($result->num_rows > 0)
                {
                    while($row = $result->fetch_assoc()) 
                    {
                        echo "<tr>";
                        echo "<td>".$row['Id_video'] . "</td>";
                        echo "<td>".$row['Titre'] . "</td>";
                        echo "<td>".$row['query'] . "</td>";
                        echo "<tr>";
                    }
                }
                ?>
            </tbody>
        </table>

        </div>
    </div>
    </div>
    <br><br>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal3">
    Requête 3
    </button>

    <!-- The Modal -->
    <div class="modal" id="myModal3">
    <div class="modal-dialog">
        <div class="modal-content">

        <table class="table table-bordered table-dark table-striped">
            <thead>
                <th>query</th>
                <th>Date_publication</th>
                <th>Nombre_Video</th>
            </thead>
            <tbody>
                
                <?php
                $sql = "SELECT c.query , EXTRACT(YEAR FROM a.Date_publication ) YEAR , COUNT(a.Id_Video) Nombre_video 
                    from video a , correspend b , query c 
                        WHERE a.Id_Video=b.Id_Video and b.Id_Query=c.Id_Query 
                    GROUP by  c.Query , YEAR ORDER BY c.Id_Query,YEAR ;";
                $result = $conn->query($sql);

                if ($result->num_rows > 0)
                {
                    while($row = $result->fetch_assoc()) 
                    {
                        echo "<tr>";
                        echo "<td>".$row['query'] . "</td>";
                        echo "<td>".$row['YEAR'] . "</td>";
                        echo "<td>".$row['Nombre_video'] . "</td>";
                        echo "<tr>";
                    }
                }
                ?>
            </tbody>
        </table>

        </div>
    </div>
    </div>
    <br><br>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal4">
    Requête 4
    </button>

    <!-- The Modal -->
    <div class="modal" id="myModal4">
    <div class="modal-dialog">
        <div class="modal-content">

        <table class="table table-bordered table-dark table-striped">
            <thead>
                <th>Id_Video</th>
                <th>Nb_commentaires</th>
                <th>Nombre_utilisateur</th>
            </thead>
            <tbody>
                
                <?php
                $sql = "SELECT v.`id_video`, 
                           ( Count(cm.id_video) + ( SELECT COUNT(c.id_child) from commentaire c WHERE c.id_child IS NOT NULL and v.Id_Video=c.Id_Video))  AS nombre_totale_commentaire, 
                           Count(DISTINCT c.id_chaine) AS nombre_totale_utilisateur 
                    FROM   video v 
                           INNER JOIN commentaire cm 
                                   ON v.id_video = cm.id_video 
                           INNER JOIN chaines c 
                                   ON c.id_chaine = cm.id_chaine 
                    GROUP  BY v.id_video;";
                $result = $conn->query($sql);

                if ($result->num_rows > 0)
                {
                    while($row = $result->fetch_assoc()) 
                    {
                        echo "<tr>";
                        echo "<td>".$row['id_video'] . "</td>";
                        echo "<td>".$row['nombre_totale_commentaire'] . "</td>";
                        echo "<td>".$row['nombre_totale_utilisateur'] . "</td>";
                        echo "<tr>";
                    }
                }
                ?>
            </tbody>
        </table>

        </div>
    </div>
    </div>
    <br><br>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal5">
    Requête 5
    </button>

    <!-- The Modal -->
    <div class="modal" id="myModal5">
    <div class="modal-dialog">
        <div class="modal-content">
        <table class="table table-bordered table-dark table-striped">
           <tbody>
                <?php
                require 'results.php';
                $select = "SELECT * FROM query";
                $result = $conn->query($select);
                $option = '<option value="">Select Query</option>';
                while($row = $result->fetch_object()){
                    $option .= '<option value="'.$row->Id_Query.'">'.$row->Query.' a '.$row->Date_Recherche.'</option>';
                }
                ?>  


                <form method="get">
                    <select name="empid" id="empid"  class="form-control" onchange="getData(this.value, 'displaydata')">
                      <?php
                        echo $option;
                      ?> 
                    </select>
                    <div id="displaydata">
                    </div>
                </form>

                
            </tbody>
        </table>

        </div>
    </div>
    </div>
    <br><br>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal6">
    Requête 6
    </button>

    <!-- The Modal -->
    <div class="modal" id="myModal6">
    <div class="modal-dialog">
        <div class="modal-content">

        <table class="table table-bordered table-dark table-striped">
            <thead>
                <th>query</th>
                <th>Titre</th>
                <th>Id_Video</th>
            </thead>
            <tbody>
                
                <?php
                $sql = "SELECT tab1.query , tab1.Titre  , tab1.Id_video    FROM (
                        SELECT a.Id_video , a.Titre , c.query ,a.Nb_commentaires
                            from video a, correspend b , query c 
                            where a.Id_Video=b.Id_Video and b.Id_Query = c.Id_Query ) tab1 
                        where tab1.Nb_commentaires = ( select MAX(tab2.Nb_commentaires) from (SELECT d.Id_video , d.Titre , f.query ,d.Nb_commentaires 
                            from video d, correspend e , query f where d.Id_Video=e.Id_Video and e.Id_Query = f.Id_Query  ) tab2 where tab1.query=tab2.query )
                            GROUP BY tab1.query
                     ";
                $result = $conn->query($sql);

                if ($result->num_rows > 0)
                {
                    while($row = $result->fetch_assoc()) 
                    {
                        echo "<tr>";
                        echo "<td>".$row['query'] . "</td>";
                        echo "<td>".$row['Titre'] . "</td>";
                        echo "<td>".$row['Id_video'] . "</td>";
                        echo "<tr>";
                    }
                }
                ?>
            </tbody>
        </table>

        </div>
    </div>
    </div>
    <br><br>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal7">
    Requête 7
    </button>

    <!-- The Modal -->
    <div class="modal" id="myModal7">
    <div class="modal-dialog">
        <div class="modal-content">

        <table class="table table-bordered table-dark table-striped">
           
             <tbody>
                <?php
                require 'results.php';
                $select = "SELECT * FROM query";
                $result = $conn->query($select);
                $option = '<option value="">Select Query</option>';
                while($row = $result->fetch_object()){
                    $option .= '<option value="'.$row->Id_Query.'">'.$row->Query.' a '.$row->Date_Recherche.'</option>';
                }
                ?>  


                <form method="get">
                    <select name="empid2" id="empid2"  class="form-control" onchange="getDataa(this.value, 'displaydata2')">
                      <?php
                        echo $option;
                      ?> 
                    </select>
                    <div id="displaydata2">
                    </div>
                </form>

                
            </tbody>
        </table>

        </div>
    </div>
    </div>

</div>

</body>
</html>