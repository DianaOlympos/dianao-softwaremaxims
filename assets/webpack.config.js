const path = require('path');
const glob = require('glob');
const UglifyJsPlugin = require('uglifyjs-webpack-plugin');
const OptimizeCSSAssetsPlugin = require('optimize-css-assets-webpack-plugin');
const CopyWebpackPlugin = require('copy-webpack-plugin');
const MiniCssExtractPlugin = require("mini-css-extract-plugin");

module.exports = (env, options) => ({
  optimization: {
    minimizer: [
      new UglifyJsPlugin({
        cache: true,
        parallel: true,
        sourceMap: false
      }),
      new OptimizeCSSAssetsPlugin({})
    ]
  },
  entry: {
    'app': ['./js/app.js'].concat(glob.sync('./vendor/**/*.js')),
    'blog_post': './js/blog_post.js'
  },
  output: {
    filename: '[name].js',
    path: path.resolve(__dirname, '../priv/static/js')
  },
  module: {
    rules: [{
        test: /\.js$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader'
        }
      },
      {
        test: /\.css$/,
        exclude: /node_modules/,
        use: [{
            loader: 'style-loader',
          },
          {
            loader: MiniCssExtractPlugin.loader
          },
          {
            loader: 'css-loader',
            options: {
              importLoaders: 1,
              url: false
            }
          },
          {
            loader: 'postcss-loader'
          }
        ]
      },
      {
        test: /\.(png|svg|jpg|gif)$/,
        use: [
          'file-loader'
        ]
      }
    ]
  },
  plugins: [
    new CopyWebpackPlugin([{
      from: 'static/',
      to: '../'
    }]),
    new MiniCssExtractPlugin({
      filename: '../css/[name].css'
    })
  ]
});