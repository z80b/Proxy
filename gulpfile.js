var gulp = require('gulp'),
	less = require('gulp-less'),
	jade = require('gulp-jade'),
	rename = require('gulp-rename'),
	minifyCss = require('gulp-minify-css'),
	pkg = require('./package.json');

var _this = this;

gulp.task('css', function() {
	return gulp.src('src/css/styles.less')
		.pipe(less())
		.pipe(minifyCss())
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

gulp.task('default', function() {
	return gulp.watch('src/css/*.less', function() {
		gulp.run('css');
	});
});
