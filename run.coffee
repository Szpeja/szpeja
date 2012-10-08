require('zappajs') ->
  @enable 'default layout'

  @set 'views', __dirname + '/views'

  @use 'bodyParser',
       'methodOverride',
       'cookies',
       'cookieParser',
       session: {secret: '5465hfgh3t4grf'},
       @app.router,
       static: __dirname + '/static'

  @configure
    development: => @use errorHandler: {dumpExceptions: on, showStack: on}
    production: => @use 'errorHandler'

  @get '/': ->
    @render 'index'
