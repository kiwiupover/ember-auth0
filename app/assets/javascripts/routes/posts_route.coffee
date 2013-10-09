App.PostsRoute = Em.Route.extend
  model: ->
    this.store.find('post')

