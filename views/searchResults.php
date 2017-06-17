<h2 class="search-title" role="heading" aria-level="2">
    Résultats de la recherche
</h2>

<table>
    <caption><?= count($data['results']) == 0 ? 'Aucun résultat.' : (count($data['results']) == 1 ? '1 livre trouvé.' : count($data['results']) . ' livres trouvés.');?></caption>
    <tr>
        <th scope="col">Titre</th>
        <th scope="col">Auteur</th>
        <th scope="col">Éditeur</th>
        <th scope="col">ISBN</th>
        <th scope="col">Genre</th>
        <th scope="col">Langue</th>
    </tr>
        <?php foreach ($data['results'] as $result):?>
            <tr>
                <td><a href="?r=book&a=focus&id=<?= $result->book_id;?>"><?= $result->title;?></a></td>
                <td><?= $result->author_name;?></td>
                <td><?= $result->editor_name;?></td>
                <td><?= $result->isbn;?></td>
                <td><?= $result->genre_name;?></td>
                <td><?= $result->full_name;?></td>
            </tr>
        <?php endforeach;?>
</table>