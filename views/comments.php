<?php
    $items_to_paginate_amount = count($data['coms']);
    $page_nbr = ceil($items_to_paginate_amount / 5);
    
?>

<h3 class="result-title" id="result" role="heading" aria-level="2">
    Les commentaires des lecteurs <?= count($data['coms']) ? '(' . count($data['coms']) . ')' : '';?>
</h3>
<?php if (!count($data['coms'])):  ?>
    <p class="no-coms">Il n'y a pas encore de commentaires.</p>
<?php else: ?>
    <div class="items-list">
        <ul>
            <?php  for ($item = intval($_REQUEST['item'] ?? 0), $i=0 ; ($i < 5) && ($item < $items_to_paginate_amount) ; $item++,$i++): ?>
                <li class="comment">
                    <span class="comment__user">
                        <?php $datepub = explode('-', explode(' ', $data['coms'][$item]->datepub)[0]) ?>
                        Par <span class="comment__user__name"><?= $data['coms'][$item]->firstname . ' ' . $data['coms'][$item]->lastname;?></span> le <?= $datepub[2] . '/' . $datepub[1] . '/' . $datepub[0]; ?>
                    </span>
                    <span class="comment__content">
                        <?= $data['coms'][$item]->comment; ?>
                    </span>
                </li>
            <?php endfor; ?>
        </ul>
        
        <?php if ($page_nbr > 1): ?>
            <div class="prev-next-container">
                <?php if ( $item > 5 ): ?>
                    <a class="prev" href="?r=book&a=focus&id=<?= $data['book']->id;?>&item=<?= ($item - ($i + 5));?>/#result">Pécédent</a>
                <?php else: ?>
                    <span class="prev prev--unavailable" title="Vous êtes à la première page">Pécédent</span>
                <?php endif; ?>
                <?php if ( $items_to_paginate_amount - $item): ?>
                    <a class="next" href="?r=book&a=focus&id=<?= $data['book']->id;?>&item=<?= ($item);?>/#result">Suivant</a>
                <?php else: ?>
                    <span class="next next--unavailable" title="Vous êtes à la dernière page">Suivant</span>
                <?php endif; ?>
            </div>
            <div class="page-num">
                <?php for ($current_page = 1; $current_page <= $page_nbr; $current_page++): ?>
                    <?php if ( ($_REQUEST['item'] ?? 0) == (($current_page * 5) - 5) ): ?>
                        <span class="page-num__item--current" title="Page courante"><?= $current_page;?></span>
                    <?php else: ?>
                        <a class="page-num__item" href="?r=book&a=focus&id=<?= $data['book']->id;?>&item=<?= ($current_page * 5) - 5;?>/#result"><?= $current_page;?></a>
                    <?php endif; ?>
                <?php endfor; ?>
            </div>
        <?php endif; ?>
    </div>
<?php endif; ?>
<?php if (isset($_SESSION['user'])): ?>
    <div class="coms-form">
        <h3 class="coms-form__title" role="heading" aria-level="2">
            Laisser un itemmentaire
        </h3>
    </div>
    
<?php else: ?>
    <div class="coms-form">
        <h3 class="coms-form__title" role="heading" aria-level="2">
            Connectez-vous pour laisser un itemmentaire
        </h3>
    </div>
<?php endif; ?>
