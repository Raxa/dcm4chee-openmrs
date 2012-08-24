test 'sanity test', ->
  ok true, 'always passes!'

$.get 'test/examples/renders.js', (response) ->
  test 'application correctly renders and routes coffeescript files', ->
    ok response.match(/console.log\('a coffee'\)/)

$.get 'test/examples/renders.css', (response) ->
  test 'application correctly renders and routes stylus files', ->
    ok response == 'a {\n  margin: 50%;\n}\n'

