<?php
$items_to_paginate_amount = count($data['books']);
$page_nbr = ceil($items_to_paginate_amount / 5);
?>


<table id="result">
    <caption><?= count($data['books']) == 0 ? 'Aucun résultat' : (count($data['books']) == 1 ? '1 livre trouvé' : count($data['books']) . ' livres trouvés');?></caption>
    <tr>
        <th class="book-title-col" scope="col">Titre</th>
        <th class="book-author-col" scope="col">Auteur</th>
        <th class="book-editor-col" scope="col">Éditeur</th>
        <th class="book-isbn-col" scope="col">ISBN</th>
        <th class="book-genre-col" scope="col">Genre</th>
        <th class="book-lang-col" scope="col">Langue</th>
        <th class="book-place-col" scope="col">Emplacement</th>
        <?php if ( isset($_SESSION['user']) && $_SESSION['user']->account_type_id == 2 ): ?>
            <th class="book-delete-col" scope="col">Supprimer</th>
        <?php endif; ?>
    </tr>
    <?php for ($item = intval($_REQUEST['item'] ?? 0), $i=0 ; ($i < 5) && ($item < $items_to_paginate_amount) ; $item++,$i++): ?>
        <tr>
            <td class="book-title-col"><a href="?r=book&a=focus&id=<?= $data['books'][$item]->book_id;?>"><?= $data['books'][$item]->title;?></a></td>
            <td class="book-author-col"><a href="?r=author&a=focus&author_id=<?= $data['books'][$item]->author_id;?>"><?= $data['books'][$item]->author_name;?></a></td>
            <td class="book-editor-col"><a href="?r=editor&a=focus&editor_id=<?= $data['books'][$item]->editor_id;?>"><?= $data['books'][$item]->editor_name;?></a></td>
            <td class="book-isbn-col"><a href="?r=book&a=focus&id=<?= $data['books'][$item]->book_id;?>"><?= $data['books'][$item]->isbn;?></a></td>
            <td class="book-genre-col"><a href="?r=book&a=index&title=&author=&editor=&isbn=&lang=&genre=<?= $data['books'][$item]->genre_name; ?>&place=&item=0/#result"><?= $data['books'][$item]->genre_name;?></a></td>
            <td class="book-lang-col"><a href="?r=book&a=index&title=&author=&editor=&isbn=&genre=&lang=<?= $data['books'][$item]->code;?>&place=&item=0/#result"><?= $data['books'][$item]->full_name;?></a></td>
            <td class="book-place-col"><a href="?r=book&a=index&title=&author&editor=&isbn=&genre=&lang=&place=<?= $data['books'][$item]->location_code; ?>&item=0/#result"><?= $data['books'][$item]->location_name;?></a></td>
            <?php if ( isset($_SESSION['user']) && $_SESSION['user']->account_type_id == 2 ): ?>
                <td class="book-delete-col"><a style="color:red;" href="?r=book&a=delete&id=<?= $data['books'][$item]->book_id;?>&title=&author=&editor=&isbn=&lang=&genre=&place=&item=0/#result">SUPPRIMER</a></td>
            <?php endif; ?>
        </tr>
    <?php endfor; ?>
</table>
<?php if ($page_nbr > 1): ?>
    <div class="prev-next-container">
        <?php if ( $item > 5 ): ?>
            <a class="prev" href="?r=book&a=index&lang=&title=<?= $_REQUEST['title']; ?>&author=<?= $_REQUEST['author']; ?>&editor=<?= $_REQUEST['editor']; ?>&isbn=<?= $_REQUEST['isbn']; ?>&genre=<?= $_REQUEST['genre']; ?>&place=<?= $_REQUEST['place']; ?>&item=<?= ($item - ($i + 5));?>/#result">Pécédent</a>
        <?php else: ?>
            <span class="prev prev--unavailable" title="Vous êtes à la première page">Pécédent</span>
        <?php endif; ?>
        <?php if ( $items_to_paginate_amount - $item ): ?>
            <a class="next" href="?r=book&a=index&lang=&title=<?= $_REQUEST['title']; ?>&author=<?= $_REQUEST['author']; ?>&editor=<?= $_REQUEST['editor']; ?>&isbn=<?= $_REQUEST['isbn']; ?>&genre=<?= $_REQUEST['genre']; ?>&place=<?= $_REQUEST['place']; ?>&item=<?= ($item);?>/#result">Suivant</a>
        <?php else: ?>
            <span class="next next--unavailable" title="Vous êtes à la dernière page">Suivant</span>
        <?php endif; ?>
    </div>
    <div class="page-num">
        <?php for ($current_page = 1; $current_page <= $page_nbr; $current_page++): ?>
            <?php if ( ($_REQUEST['item'] ?? 0) == (($current_page * 5) - 5) ): ?>
                <span class="page-num__item--current" title="Page courante"><?= $current_page;?></span>
            <?php else: ?>
                <a class="page-num__item" href="?r=book&a=index&lang=&title=<?= $_REQUEST['title']; ?>&author=<?= $_REQUEST['author']; ?>&editor=<?= $_REQUEST['editor']; ?>&isbn=<?= $_REQUEST['isbn']; ?>&genre=<?= $_REQUEST['genre']; ?>&place=<?= $_REQUEST['place']; ?>&item=<?= ($current_page * 5) - 5;?>/#result"><?= $current_page;?></a>
            <?php endif; ?>
        <?php endfor; ?>
    </div>
<?php endif; ?>

