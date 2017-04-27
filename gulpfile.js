var gulp = require('gulp'),
	less = require('gulp-less'),
	jade = require('gulp-jade'),
	stylus   = require('gulp-stylus'),
	prefixer = require('gulp-autoprefixer'),
	include  = require('gulp-include'),
	coffee   = require('gulp-coffee'),
	rename = require('gulp-rename'),
	minifyCss = require('gulp-minify-css'),
	pkg = require('./package.json');

var _this = this;
var debug = true;

gulp.task('css', function() {
	return gulp.src('src/css/styles.less')
		.pipe(less())
		.pipe(minifyCss())
		.pipe(gulp.dest('public'));
});

gulp.task('styles', function() {
	return gulp
		.src('src/css/index.styl')
        .pipe(stylus({
            'include css': true,
            'compress': !debug,
            'rawDefine': {
            	'inline-image': stylus.stylus.url()
            }
        }))
        .pipe(prefixer(['> 0%']))
        .pipe(rename('styles.css'))
		.pipe(gulp.dest('public'));
});


gulp.task('html', function() {
	console.log(pkg);
	return gulp.src('src/jade/html.jade')
		.pipe(jade({
			pretty: '\t\t',
			locals: pkg
		}))
		.pipe(rename('index.html'))
		.pipe(gulp.dest('./'));
});

gulp.task('default', ['styles'], function() {
	return gulp.watch('src/css/**/*.styl', ['styles']);
});

