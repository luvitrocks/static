return {
  name = 'voronianski/static',
  version = '1.0.1',
  description = 'Serve static files with luvit.io and Utopia',
  repository = {
    url = 'http://github.com/luvitrocks/luvit-static.git',
  },
  tags = {'utopia', 'express', 'connect', 'middleware', 'server', 'static', 'files'},
  author = {
    name = 'Dmitri Voronianski',
    email = 'dmitri.voronianski@gmail.com'
  },
  homepage = 'https://github.com/luvitrocks/luvit-utopia',
  licenses = {'MIT'},
  dependencies = {},
  files = {
    '**.lua',
    '!test*',
    '!example*'
  }
}
