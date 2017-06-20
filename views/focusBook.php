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
            <li>Auteur&nbsp;: <a href="?r=author&a=focus&author_id=<?= $data['book']->author_id;?>"><?= $data['book']->author_name;?></a></li>
            <li>Éditeur&nbsp;: <a href="?r=editor&a=focus&editor_id=<?= $data['book']->editor_id; ?>"><?= $data['book']->editor_name; ?></a></li>
            <li>Genre&nbsp;: <a href="?r=book&a=index&title=&author=&editor=&isbn=&lang=&genre=<?= $data['book']->genre_name; ?>&place=&item=0/#result"><?= $data['book']->genre_name; ?></a></li>
            <li>ISBN(13)&nbsp;: <?= $data['book']->isbn; ?></li>
            <li>Langue&nbsp;: <a href="?r=book&a=index&title=&author=&editor=&isbn=&lang=<?= $data['book']->code; ?>&genre=&place=&item=0/#result"><?= $data['book']->full_name; ?></a></li>
            <li>Pages&nbsp;: <?= $data['book']->npage; ?></li>
            <li>Date de Publication&nbsp;: <?php $dpub = explode('-', $data['book']->datepub); echo $dpub[2] . '/' . $dpub[1] . '/' . $dpub[0]?></li>
            <li>Emplacement&nbsp;: <a href="?r=book&a=index&title=&author=&editor=&isbn=&lang=&genre=&place=<?= $data['book']->location_code; ?>&item=0/#result"><?= $data['book']->location_name; ?></a></li>
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