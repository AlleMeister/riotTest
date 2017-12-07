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
    /*rules: [{
      include:[
          path.resolve(__dirname, "./src"),
          'node_modules'
        ]
        }],*/
    loaders: [
      {
        test: /\.tag$/,
        exclude: /node_modules/,
        loader: 'riot-tag-loader',
        query: {
          type: 'es6', // transpile the riot tags using babel
          hot: true,
          debug: true
        }
      },
      {
        test: /\.js$/,
        exclude: /node_modules/,
        loader: 'babel-loader'
      },
      {
        test: /\.css$/,
        exclude: /node_modules/,
        loader: 'css-loader'
      },
      {
        test: /\.scss$/,
        exclude: /node_modules/,
        loader: 'sass-loader'
      }
    ]
  },
  resolve: {
    modules: [ 
     path.resolve(__dirname, "./src"),
     path.resolve(__dirname, "node_modules")
    ]
  }
  }

