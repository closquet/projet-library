<!DOCTYPE html>
<html lang="fr-be">
    <head>
        <meta charset="UTF-8">
        <title>Library/</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="./assets/css/main.css">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="description" content="Projet 'bibliothèque' pour le cours de pwcs">
        <meta name="author" content="Eric Closquet">
        <meta name="keywords" content="library">
        <link rel="shortcut icon" href="favicon.ico">
        <link rel="icon" type="image/gif" href="animated_favicon1.gif">
        <!--[if lt IE 9]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <header role="banner" class="content">
            <h1 class="main-title" role="heading" aria-level="1">
                <a class="main-title__home-link" href="/index.php" title="Aller sur la page d&rsquo;accueil">La bibliothèque/</a>
            </h1>
            <a class="login-logout" href="/index.php?r=auth&a=<?php echo (isset($_SESSION['user']) ? 'getLogout' : 'getLogin') ?>"><?php echo (isset($_SESSION['user']) ? 'Déconnexion' : 'Connexion') ?></a>
        </header>

        <main role="main">
            <?php include $data['view'];?>
        </main>

        <footer role="contentinfo">
            <p>Developed by Eric Closquet</p>
            <p>Copyright © 2017</p>
        </footer>
    </body>
</html>
