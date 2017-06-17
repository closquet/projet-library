<?php
    $com_nbr = count($data['coms']);
    $com_page_nbr = floor($com_nbr / 5);
    
?>


<h2 class="search-title" role="heading" aria-level="2">
    Les commentaires
</h2>

<?php if (isset($_SESSION['user'])): ?>
    <h3 class="search-title" role="heading" aria-level="2">
        Laisser un commentaire
    </h3>
<?php endif; ?>

<h3 class="search-title" role="heading" aria-level="2">
    Les commentaires des autres lecteurs
</h3>
<?php if (!count($data['coms'])):  ?>
    <p>Il n'y a pas encore de commentaires.</p>
<?php else: ?>
    <div class="com-list">
        <dl>
            <?php  for ($com = intval($_REQUEST['com'] ?? 1), $i=0 ; ($i < 5) && ($com < $com_nbr) ; $com++,$i++): ?>
                <dt><?= $data['coms'][$com-1]->firstname . ' ' . $data['coms'][$com]->lastname; ?></dt>
                <dd><?= $data['coms'][$com-1]->comment; ?></dd>
            <?php endfor; ?>
        </dl>
        <?php if ($com_page_nbr > 1): ?>
            <?php if ( $com > 6 ): ?>
                <a href="?r=book&a=focus&id=<?= $data['book']->id;?>&com=<?= ($com - ($i + 5));?>">Pécédent</a>
            <?php endif; ?>
            <?php if ( ($com_nbr - $com)  > 1 ): ?>
                <a href="?r=book&a=focus&id=<?= $data['book']->id;?>&com=<?= ($com);?>">Suivant</a>
            <?php endif; ?>
        <?php endif; ?>
        
       
    </div>
<?php endif; ?>