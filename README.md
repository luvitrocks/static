# Static

> Serving static files middleware for [luvit.io](http://luvit.io) and [Utopia](https://github.com/luvitrocks/luvit-utopia) server framework.

## Install

```bash
lit install voronianski/static
```

## API

### ``static(root, options)``

Create middleware function to serve files from within a given ``root`` directory. The file to serve will be determined by combining ``req.url`` with the provided root directory.

### Options

- ``maxAge`` - browser cache maxAge in milliseconds, defaults to ``0``.
- ``index`` - default file name, defaults to ``'index.html'``
- ``hidden`` - allow transfer of hidden files, defaults to ``false``

## Example

```lua
local Utopia = require('utopia')
local static = require('static')
local path = require('path')

local app = Utopia:new()
local __dirname = module.dir
local publicDir = path.join(__dirname, 'public')

app:use(static(publicDir))

app:listen(8080)
```

## License

MIT Licensed

Copyright (c) 2014-2016 Dmitri Voronianski [dmitri.voronianski@gmail.com](mailto:dmitri.voronianski@gmail.com)

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
