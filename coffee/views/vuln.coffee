VulnView = Backbone.View.extend
  tagName: 'li'

  className: 'vuln'

  initialize: (data) ->
    @data = data

  render: ->
    @$el.html(JST.vuln(@data))

    return this

module.exports = VulnView
