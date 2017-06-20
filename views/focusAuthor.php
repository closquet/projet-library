<?php
$items_to_paginate_amount = count($data['books']);
$page_nbr = ceil($items_to_paginate_amount / 5);
?>
<h2 class="page-title" role="heading" aria-level="2">
    Notice complète de <?= $data['author']->author_name; ?>
</h2>
<div class="author focus-subject">
    <ul class="focus-subject__info-list">
        <?php if ($data['author']->datebirth): ?>
            <li>Date de naissance&nbsp;: <?php $bday = explode('-', $data['author']->datebirth); echo $bday[2] . '/' . $bday[1] . '/' . $bday[0]?></li>
        <?php endif; ?>
        <?php if ($data['author']->datedeath): ?>
            <li>Date de décès&nbsp;: <?php $dday = explode('-', $data['author']->datedeath); echo $dday[2] . '/' . $dday[1] . '/' . $dday[0]?></li>
        <?php endif; ?>
    </ul>
    <div class="focus-subject__header">
        <?php if ($data['author']->photo): ?>
            <img class="focus-subject__img" src="<?= $data['author']->photo; ?>" alt="la photo portait de l&rsquo;auteur." title="la photo portait de l&rsquo;auteur.">
        <?php else: ?>
            <img class="focus-subject__img" src="/assets/img/authors/default.jpg" alt="la photo portait de l&rsquo;auteur n&rsquo;a pas été fournie." title="la photo portait de l&rsquo;auteur n&rsquo;a pas été fournie.">
        <?php endif; ?>
        <div class="author__biography">
            <h3 class="author__biography__title" role="heading" aria-level="3">
                Courte Biographie
            </h3>
            <p class="author__biography__content">
                <?= $data['author']->bio; ?>
            </p>
        </div>
    </div>
    
    
    <h3 class="search-title result-title" role="heading" aria-level="3">
        &OElig;vres de cet auteur dont nous avons un exemplaire
    </h3>
    
    <table id="result">
        <caption><?= count($data['books']) == 0 ? 'Aucun livres' : (count($data['books']) == 1 ? '1 livre' : count($data['books']) . ' livres trouvés');?></caption>
        <tr>
            <th class="book-title-col" scope="col">Titre</th>
            <th class="book-editor-col" scope="col">Éditeur</th>
            <th class="book-isbn-col" scope="col">ISBN</th>
            <th class="book-genre-col" scope="col">Genre</th>
            <th class="book-lang-col" scope="col">Langue</th>
            <th class="book-place-col" scope="col">Emplacement</th>
        </tr>
        <?php for ($item = intval($_REQUEST['item'] ?? 0), $i=0 ; ($i < 5) && ($item < $items_to_paginate_amount) ; $item++,$i++): ?>
            <tr>
                <td class="book-title-col"><a href="?r=book&a=focus&id=<?= $data['books'][$item]->book_id;?>"><?= $data['books'][$item]->title;?></a></td>
                <td class="book-editor-col"><a href="?r=editor&a=focus&editor_id=<?= $data['books'][$item]->editor_id;?>"><?= $data['books'][$item]->editor_name;?></a></td>
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
                <a class="prev" href="?r=author&a=focus&item=<?= ($item - ($i + 5));?>&author_id=<?= $data['author']->id;?>/#result">Pécédent</a>
            <?php else: ?>
                <span class="prev prev--unavailable" title="Vous êtes à la première page">Pécédent</span>
            <?php endif; ?>
            <?php if ( $items_to_paginate_amount - $item ): ?>
                <a class="next" href="?r=author&a=focus&item=<?= ($item);?>&author_id=<?= $data['author']->id;?>/#result">Suivant</a>
            <?php else: ?>
                <span class="next next--unavailable" title="Vous êtes à la dernière page">Suivant</span>
            <?php endif; ?>
        </div>
        <div class="page-num">
            <?php for ($current_page = 1; $current_page <= $page_nbr; $current_page++): ?>
                <?php if ( ($_REQUEST['item'] ?? 0) == (($current_page * 5) - 5) ): ?>
                    <span class="page-num__item--current" title="Page courante"><?= $current_page;?></span>
                <?php else: ?>
                    <a class="page-num__item" href="?r=author&a=focus&author_id=<?= $data['author']->id;?>&item=<?= ($current_page * 5) - 5;?>/#result"><?= $current_page;?></a>
                <?php endif; ?>
            <?php endfor; ?>
        </div>
    <?php endif; ?>
</div>