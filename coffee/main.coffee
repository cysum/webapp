VulnView = require './views/vuln.coffee'

data =
  vulnerabilities: [
    {
      name: 'BadStuff'
      description: 'Bad things happen to your computer.'
    }
    {
      name: 'NaughtyCode'
      description: 'This perfoms rm -rf /.'
    }
  ]

vulnlist = $('.vulnlist')

for vuln in data.vulnerabilities
  view = new VulnView(vuln)
  view.render().$el.appendTo(vulnlist)
