<h2 class="search-title" role="heading" aria-level="2">
    Notice complète du livre
</h2>

<div class="book">
    <img src="assets/img/authors/<?= $data['book']->id; ?>.jpg" alt="La première de couverture.">
    <ul>
        <li>Titre&nbsp;: <?= $data['book']->title; ?></li>
        <li>Auteur&nbsp;: <?= $data['book']->author_name; ?></li>
        <li>Éditeur&nbsp;: <?= $data['book']->editor_name; ?></li>
        <li>Genre&nbsp;: <?= $data['book']->genre_name; ?></li>
        <li>ISBN(13)&nbsp;: <?= $data['book']->isbn; ?></li>
        <li>Langue&nbsp;: <?= $data['book']->full_name; ?></li>
        <li>Pages&nbsp;: <?= $data['book']->npage; ?></li>
        <li>Date de Publication&nbsp;: <?= $data['book']->datepub; ?></li>
        <li>Emplacement&nbsp;: <?= $data['book']->location_name; ?></li>
    </ul>
</div>