<h2 class="page-title" role="heading" aria-level="2">
    Notice complète de <?= $data['book']->title; ?>
</h2>

<div class="book focus-subject">
    <div class="focus-subject__header">
        <?php if ($data['book']->front_cover): ?>
            <img class="focus-subject__img" src="<?= $data['book']->front_cover; ?>" alt="La première de couverture." title="La première de couverture.">
        <?php else: ?>
            <img class="focus-subject__img" src="/assets/img/covers/default.jpg" alt="La première de couverture n&rsquo;a pas été fournie." title="La première de couverture n&rsquo;a pas été fournie.">
        <?php endif; ?>
        <ul class="focus-subject__info-list">
            <li><a href="?r=author&a=focus&author_id=<?= $data['book']->author_id;?>"><?= $data['book']->author_name;?></a></li>
            <li>Éditeur&nbsp;: <?= $data['book']->editor_name; ?></li>
            <li>Genre&nbsp;: <?= $data['book']->genre_name; ?></li>
            <li>ISBN(13)&nbsp;: <?= $data['book']->isbn; ?></li>
            <li>Langue&nbsp;: <?= $data['book']->full_name; ?></li>
            <li>Pages&nbsp;: <?= $data['book']->npage; ?></li>
            <li>Date de Publication&nbsp;: <?php $dpub = explode('-', $data['book']->datepub); echo $dpub[2] . '/' . $dpub[1] . '/' . $dpub[0]?></li>
            <li>Emplacement&nbsp;: <?= $data['book']->location_name; ?></li>
        </ul>
        <div class="book__summury">
            <h3 class="book__summury__title" role="heading" aria-level="3">
                Résumé
            </h3>
            <p>
                <?= $data['book']->summary; ?>
            </p>
        </div>
    </div>
    
    
    
    <?php include 'views/comments.php' ?>
    
</div>