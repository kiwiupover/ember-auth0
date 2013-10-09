App.Auth0LoginComponent = Em.Component.extend
  tagName: 'div'
  classNames: ['auth0']
  
  actions: 
    twitter: ->
      App.Auth0.login connection: "twitter"
    
    github: ->
      App.Auth0.login connection: "github"

