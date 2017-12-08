const path = require('path')
const webpack = require('webpack')


module.exports = {
  entry: './src/main.js',
  output: {
    path: path.resolve(__dirname, 'public'),
    publicPath: '/public/',
    filename: 'bundle.js'
  },
  plugins: [
    new webpack.ProvidePlugin({
      RiotControl: 'riotcontrol',
      route: 'riot-route',
      riot: 'riot'
    }),
  ],
  module: {
    rules: [{
      test: /\.scss$/,
      use: [{
        loader: "style-loader"
      }, {
        loader: "css-loader"
      }, {
        loader: "sass-loader",
        options: {
          includePaths: ["absolute/path/a", "absolute/path/b"]
        }
      }]
    }, {
      test: /\.tag$/,
      use: [{
        loader: "riot-tag-loader",
        options: {
          type: 'es6', // transpile the riot tags using babel
          hot: true,
          debug: true
        }
      }]

    }, {
      test: /\.js$/,
      use: [{
        loader: "babel-loader",
      }]

    }],
  },
  resolve: {
    modules: [
      path.resolve(__dirname, "./src"),
      path.resolve(__dirname, "node_modules")
    ]
  }
}

