<h2 class="search-title" role="heading" aria-level="2">
    Erreur(s) détectée(s)
</h2>

<ul>
    <?php foreach ($data['errors'] as $error): ?>
        <li>
            <?= $error ?>
        </li>

    <?php endforeach; ?>
</ul>
