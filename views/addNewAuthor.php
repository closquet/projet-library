<h2 class="page-title" role="heading" aria-level="2">
    Ajout de nouveaux auteurs
</h2>

<form class="add-author-form" action="/" method="post">
    <input type="hidden" name="r" value="author">
    <input type="hidden" name="a" value="add">
    
    <div class="fields-container">
        <div class="field-container">
            <label for="name">Titre *</label>
            <input class="form-field" type="text" name="name" id="name">
        </div>
        
        <div class="field-container">
            <label for="birthdate">Naissance</label>
            <input class="form-field" type="date" name="birthdate" id="birthdate">
        </div>
        
        <div class="field-container">
            <label for="deathdate">Décès</label>
            <input class="form-field" type="date" name="deathdate" id="deathdate">
        </div>
        
        <div class="field-container">
            <label for="bio">Courte biographie</label>
            <textarea class="form-field" type="text" name="bio" id="bio"></textarea>
        </div>
        
    </div>
    <input type="submit">
</form>