/* closquet/artist
 *
 * /gulpfile.js - Gulp tasks
 */

//--Config--//
var src = {
    img: "src/img",
    scss: "src/sass"
},
    dest = {
    img: "assets/img",
    css: "assets/css"
};


var gulp = require( "gulp" ),
    image = require( "gulp-image" ),
    sass = require( "gulp-sass" ),
    autoprefixer = require( "gulp-autoprefixer" ),
    csso = require( "gulp-csso" );

// --- Task for images

gulp.task( "images", function() {
    gulp.src( src.img + "/**" )
        .pipe( image() )
        .pipe( gulp.dest( "assets/images" ) );
} );

// --- Task for styles

gulp.task( "css", function() {
    gulp.src( src.scss + "/**/*.scss" )
        .pipe( sass().on( "error", sass.logError ) )
        .pipe( autoprefixer() )
        .pipe( csso() )
        .pipe( gulp.dest( "assets/css" ) );
} );


// --- Watch tasks

gulp.task( "watch", function() {
    gulp.watch( src.img + "/**", [ "images" ] );
    gulp.watch( src.scss + "/**/*.scss", [ "css" ] );

    gulp.watch( dest.css + "/**/*.css" );
} );

// --- Aliases

gulp.task( "default", [ "css" ] );
gulp.task( "image", [ "images" ] );
gulp.task( "work", [ "default", "watch" ] );
