VulnView = Backbone.View.extend
  tagName: 'li'

  render: ->
    @$el.html(JST.vuln({
      title: "Some title",
      description: "A bad thing happens"
    }))

    return this

Module.exports = VulnView
