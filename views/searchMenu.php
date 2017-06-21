<?php
    $langs_array = [];
    foreach ($data['langs'] as $lang){
        $langs_array[($lang->code)] = ($lang->full_name);
    }
    
    $places_array = [];
    foreach ($data['places'] as $place){
        $places_array[($place->location_code)] = ($place->location_name);
    }

?>

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
            <label for="search-lang">Langue</label>
            <select class="form-field" name="lang" id="search-lang">
                
                <?php if ($_REQUEST['lang'] != ''): ?>
                    <option value="<?= $_REQUEST['lang'] ?>"><?= ucfirst($langs_array[($_REQUEST['lang'])]) ?></option>
                <?php endif; ?>
                <option value="">Toutes</option>
                <?php foreach ($langs_array as $index => $lang):?>
                    <option value="<?= $index;?>"><?= ucfirst($lang);?></option>
                <?php endforeach;?>
            </select>
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

        <div class="field-container">
            <label for="search-place">Emplacement</label>
            <select class="form-field" name="place" id="search-place">
            
                <?php if ($_REQUEST['place'] != ''): ?>
                    <option value="<?= $_REQUEST['place'] ?>"><?= ucfirst($places_array[($_REQUEST['place'])]) ?></option>
                <?php endif; ?>
                <option value="">Toutes</option>
                <?php foreach ($places_array as $index => $place):?>
                    <option value="<?= $index;?>"><?= ucfirst($place);?></option>
                <?php endforeach;?>
            </select>
        </div>
        
    </div>
    <input type="submit">
</form>
<?php if (isset($data['books']))include 'views/searchResults.php';?>

<?php if ( isset($_SESSION['user']) && $_SESSION['user']->account_type_id == 2 ) include 'views/addNewAuthor.php'; ?>
    
