App.Auth0LoginComponent = Em.Component.extend
  tagName: 'div'
  classNames: ['auth0']
  login: true
  
  actions: 
    twitter: ->
      App.Auth0.login connection: "twitter"
    
    github: ->
      App.Auth0.login connection: "github"

    fitbit: ->
      App.Auth0.login connection: "github"

    signUp: ->
      data = 
        connection:   'userauth',
        email:        @get('createEmail'),
        password:     @get('createPassword'),
        auto_login:   true
      url = 'signup'

      @ajaxWithHeaders(data, url)

    login: ->
      App.Auth0.login
        connection:   'userauth',
        email:        @get('email'),
        password:     @get('password')

    toggleLogin: ->
      @toggleProperty('login')
  
  ajaxWithHeaders: (data, url) ->
    $.ajax(
      url: 'https://kiwiupover.auth0.com/dbconnections/' + url
      crossDomain: true
      type: 'post'
      data: data
    ).done (data, idtoken) ->
      alert(data)