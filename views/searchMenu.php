<h2 class="page-title" role="heading" aria-level="2">
    Recherche
</h2>

<form class="search-form" action="/" method="get">
    <input type="hidden" name="r" value="book">
    <input type="hidden" name="a" value="index">

    <div class="fields-container">
        <div class="field-container">
            <label for="search-title">Titre</label>
            <input class="form-field" type="text" name="title" id="search-title" placeholder="Tous" value="<?= $_REQUEST['title']??''; ?>">
        </div>

        <div class="field-container">
            <label for="search-author">Auteur</label>
            <input class="form-field" type="text" name="author" id="search-author" placeholder="Tous" value="<?= $_REQUEST['author']??''; ?>">
        </div>

        <div class="field-container">
            <label for="search-editor">Éditeur</label>
            <input class="form-field" type="text" name="editor" id="search-editor" placeholder="Tous" value="<?= $_REQUEST['editor']??''; ?>">
        </div>

        <div class="field-container">
            <label for="search-isbn">ISBN(xxx-x-xxx-xxxxx-x)</label>
            <input class="form-field" type="text" name="isbn" id="search-isbn" placeholder="Tous" value="<?= $_REQUEST['isbn']??''; ?>">
        </div>

        <div class="field-container">
            <label for="search-genre">Genre</label>
            <select class="form-field" name="genre" id="search-genre">
                <?php if ($_REQUEST['genre'] != ''): ?>
                    <option value="<?= $_REQUEST['genre'] ?>"><?= ucfirst($_REQUEST['genre']) ?></option>
                <?php endif; ?>
                <option value="">Tous</option>
                <?php foreach ($data['genres'] as $genre):?>
                    <option value="<?= $genre->genre_name;?>"><?= ucfirst($genre->genre_name);?></option>
                <?php endforeach;?>
            </select>
        </div>
    </div>
    <input type="submit">
</form>
<?php if (isset($data['books']))include 'views/searchResults.php';?>