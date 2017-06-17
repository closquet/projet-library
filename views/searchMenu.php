<h2 class="search-title" role="heading" aria-level="2">
    Recherche
</h2>

<form action="/" method="get">
    <input type="hidden" name="r" value="book">
    <input type="hidden" name="a" value="index">


    <div class="field-contener">
        <label for="search-title">Titre</label>
        <input type="text" name="title" id="search-title" placeholder="Tous" value="<?= $_REQUEST['title']??''; ?>">
    </div>

    <div class="field-contener">
        <label for="search-author">Auteur</label>
        <input type="text" name="author" id="search-author" placeholder="Tous" value="<?= $_REQUEST['author']??''; ?>">
    </div>

    <div class="field-contener">
        <label for="search-editor">Éditeur</label>
        <input type="text" name="editor" id="search-editor" placeholder="Tous" value="<?= $_REQUEST['editor']??''; ?>">
    </div>

    <div class="field-contener">
        <label for="search-isbn">ISBN(xxx-x-xxx-xxxxx-x)</label>
        <input type="text" name="isbn" id="search-isbn" placeholder="Tous" value="<?= $_REQUEST['isbn']??''; ?>">
    </div>

    <div class="field-contener">
        <label for="search-genre">Genre</label>
        <select name="genre" id="search-genre">
            <?php if ($_REQUEST['genre'] != ''): ?>
                <option value="<?= $_REQUEST['genre'] ?>"><?= ucfirst($_REQUEST['genre']) ?></option>
            <?php endif; ?>
            <option value="">Tous</option>
            <?php foreach ($data['genres'] as $genre):?>
                <option value="<?= $genre->genre_name;?>"><?= ucfirst($genre->genre_name);?></option>
            <?php endforeach;?>
        </select>
    </div>

    <div class="field-contener">
        <input type="submit">
    </div>

    <?php if (isset($data['results']))include 'views/searchResults.php';?>

</form>