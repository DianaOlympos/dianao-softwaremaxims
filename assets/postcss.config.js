module.exports = {
  plugins: [
    require('postcss-import'),
    require('postcss-preset-env'),
    require('cssnano'),
    require('tailwindcss'),
    require('autoprefixer'),
  ]
}