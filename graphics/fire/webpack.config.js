const path = require('path')
const CopyWebpackPlugin = require('copy-webpack-plugin')

module.exports = {
  entry: './index.js',
  devtool: 'inline-source-map',
  output: {
    filename: 'bundle.js',
    path: path.resolve(__dirname, 'dist'),
    publicPath: '/'
  },
  plugins: [
    new CopyWebpackPlugin([
      { from: path.resolve(__dirname, 'index.html'), to: path.resolve(__dirname, 'dist') }
    ]),
    new CopyWebpackPlugin([
      { from: path.resolve(__dirname, 'build'), to: path.resolve(__dirname, 'dist/build') }
    ])
  ],
  devServer: {
    open: true,
    contentBase: path.join(__dirname, 'dist'),
    port: 3000
  }
}
