var tailwindcss = require('tailwindcss');

module.exports = {
  plugins: [
    require('precss'),
    require('autoprefixer'),
    require('postcss-import'),
    require('postcss-preset-env'),
    require('cssnano'),
    tailwindcss('./tailwind.js'),
  ],
}