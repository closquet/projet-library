
<div class="login-form-container">
    <h2 class="page-title" role="heading" aria-level="2">
        Connexion
    </h2>
    <form class="login-form" action="/" method="post">
        <input type="hidden" name="r" value="auth">
        <input type="hidden" name="a" value="post_login">
        
        <div class="fields-container">
            <div class="field-container">
                <label for="email-field">Email</label>
                <input class="form-field" type="email" name="email" id="email-field" placeholder="exemple@serveur.com" value="<?= $_REQUEST['email'] ?? ''; ?>">
            </div>
            
            <div class="field-container">
                <label for="password-field">Password</label>
                <input class="form-field" type="password" name="password" id="password-field" placeholder="********">
            </div>
        </div>
        <input type="submit">
    </form>
    <?php if (isset($_REQUEST['email'])):?>
        <p class="bad-auth">
            Mot de passe et/ou email incorrect.
        </p>
    <?php endif; ?>
</div>