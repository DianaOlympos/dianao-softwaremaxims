module.exports = {
  plugins: [
    require('postcss-import'),
    require('postcss-preset-env'),
    require('cssnano'),
    require('postcss-import'),
    require('tailwindcss'),
    require('autoprefixer'),
  ]
}