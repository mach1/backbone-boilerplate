Backbone = require "backbone"
Backbone.$ = $ = require "jquery"
Backbone.Marionette = require "backbone.marionette"

AppLayout = require "./core/app-layout.coffee"
HeaderView = require "./core/header/header-view.coffee"
FooterView = require "./core/footer/footer-view.coffee"
ContentView =  require "./core/content/content-view.coffee"

app = new Backbone.Marionette.Application()

app.addInitializer (options) ->
  # AppLayout is bound to body element so we don't need to implicitly tell it
  # to show in some element. It's done automatically on initialization
  app.root = new AppLayout()
  app.root.getRegion('header').show(new HeaderView())
  app.root.getRegion('footer').show(new FooterView())
  app.root.getRegion('content').show(new ContentView())


$(document).ready ->
  app.start()
