<?php
$items_to_paginate_amount = count($data['books']);
$page_nbr = ceil($items_to_paginate_amount / 5);
?>

<h2 class="page-title" role="heading" aria-level="2">
    Notice complète de <?= $data['editor']->editor_name; ?>
</h2>

<div class="editor focus-subject">
    
    <div class="focus-subject__header">
        <?php if ($data['editor']->logo): ?>
            <img class="focus-subject__img" src="<?= $data['editor']->logo; ?>" alt="le logo de l&rsquo;éditeur." title="le logo de l&rsquo;éditeur.">
        <?php else: ?>
            <img class="focus-subject__img" src="/assets/img/editors/default.jpg" alt="le logo de l&rsquo;éditeur n&rsquo;a pas été fourni." title="le logo de l&rsquo;éditeur n&rsquo;a pas été fourni.">
        <?php endif; ?>
        <?php if ($data['editor']->website): ?>
            <p class="focus-subject__info-list">Leur site web&nbsp;: <a href="<?= $data['editor']->website; ?>"><?= $data['editor']->website; ?></a></p>
        <?php endif; ?>
    </div>
    
    <h3 class="result-title" role="heading" aria-level="3">
        &OElig;vres éditées par cette maison d'édition
    </h3>
    
    <table>
        <caption><?= count($data['books']) == 0 ? 'Aucun livres' : (count($data['books']) == 1 ? '1 livre' : count($data['books']) . ' livres trouvés');?></caption>
        <tr>
            <th class="book-title-col" scope="col">Titre</th>
            <th class="book-author-col" scope="col">Auteur</th>
            <th class="book-isbn-col" scope="col">ISBN</th>
            <th class="book-genre-col" scope="col">Genre</th>
            <th class="book-lang-col" scope="col">Langue</th>
            <th class="book-place-col" scope="col">Emplacement</th>

        </tr>
        <?php for ($item = intval($_REQUEST['item'] ?? 0), $i=0 ; ($i < 5) && ($item < $items_to_paginate_amount) ; $item++,$i++): ?>
            <tr>
                <td class="book-title-col"><a href="?r=book&a=focus&id=<?= $data['books'][$item]->book_id;?>"><?= $data['books'][$item]->title;?></a></td>
                <td class="book-author-col"><a href="?r=author&a=focus&author_id=<?= $data['books'][$item]->author_id;?>"><?= $data['books'][$item]->author_name;?></a></td>
                <td class="book-isbn-col"><a href="?r=book&a=focus&id=<?= $data['books'][$item]->book_id;?>"><?= $data['books'][$item]->isbn;?></a></td>
                <td class="book-genre-col"><a href="?r=book&a=index&title=&author=&editor=&isbn=&lang=&genre=<?= $data['books'][$item]->genre_name; ?>&place=&item=0/#result"><?= $data['books'][$item]->genre_name;?></a></td>
                <td class="book-lang-col"><a href="?r=book&a=index&title=&author=&editor=&isbn=&genre=&lang=<?= $data['books'][$item]->code;?>&place=&item=0/#result"><?= $data['books'][$item]->full_name;?></a></td>
                <td class="book-place-col"><a href="?r=book&a=index&title=&author&editor=&isbn=&genre=&lang=&place=<?= $data['books'][$item]->location_code; ?>&item=0/#result"><?= $data['books'][$item]->location_name;?></a></td>

            </tr>
        <?php endfor; ?>
    </table>
    <?php if ($page_nbr > 1): ?>
        <div class="prev-next-container">
            <?php if ( $item > 5 ): ?>
                <a class="prev" href="?r=editor&a=focus&item=<?= ($item - ($i + 5));?>&editor_id=<?= $data['editor']->id;?>">Pécédent</a>
            <?php else: ?>
                <span class="prev prev--unavailable" title="Vous êtes à la première page">Pécédent</span>
            <?php endif; ?>
            <?php if ( $items_to_paginate_amount - $item ): ?>
                <a class="next" href="?r=editor&a=focus&item=<?= ($item);?>&editor_id=<?= $data['editor']->id;?>">Suivant</a>
            <?php else: ?>
                <span class="next next--unavailable" title="Vous êtes à la dernière page">Suivant</span>
            <?php endif; ?>
        </div>
        <div class="page-num">
            <?php for ($current_page = 1; $current_page <= $page_nbr; $current_page++): ?>
                <?php if ( ($_REQUEST['item'] ?? 0) == (($current_page * 5) - 5) ): ?>
                    <span class="page-num__item--current" title="Page courante"><?= $current_page;?></span>
                <?php else: ?>
                    <a class="page-num__item" href="?r=editor&a=focus&editor_id=<?= $data['editor']->id;?>&item=<?= ($current_page * 5) - 5;?>/#result"><?= $current_page;?></a>
                <?php endif; ?>
            <?php endfor; ?>
        </div>
    <?php endif; ?>
</div>