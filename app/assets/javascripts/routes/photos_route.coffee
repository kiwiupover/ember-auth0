App.PhotosRoute = Em.Route.extend
  model: ->
    this.store.find('photo')
