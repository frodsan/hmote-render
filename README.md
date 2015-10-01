hmote-render
============

HMote plugin for Cuba.

Usage
-----

To use HMote in [Cuba][cuba], you need to load the `HMote::Render`
plugin as shown below:

```ruby
require "hmote"
require "hmote/render"

Cuba.plugin(HMote::Render)
```

`HMote::Render` provides three helper methods for rendering templates:
`partial`, `view` and `render`.

```ruby
Cuba.define do
  on "about" do
    # `partial` renders a template without a layout.
    res.write partial("about")
  end

  on "home" do
    # `view` renders a template within a layout.
    res.write view("about")
  end

  on "contact" do
    # `render` is a shortcut to `res.write view(...)`
    render("contact")
  end
end
```

By default, `HMote::Render` assumes that all view templates are placed
in a folder named `views` and that they use the `.mote` extension. Also
for `view` and `render` methods, it assumes that the layout template is
called `layout.mote`.

The defaults can be changed through the `layout` and `view_path` class
methods:

```ruby
class App < Cuba
  layout("admin")
  view_path("views/admin")
end
```

Layouts
-------

To render inner content into a layout, use the `{{! content }}` tag.

```html
<html>
  <head>
    <title>Mote Layout</title>
  </head>
  <body>
    <h1>Hello, world!</h1>

    {{! content }}
  </body>
</html>
```

Helpers
-------

You can use the `app` variable to access the application helpers.

```ruby
Cuba.define do
  def h(unsafe)
    ...
  end
end
```

```html
<h1>{{! app.h("unsafe") }}</h1>

{{ app.partial("list") }}
```

Installation
------------

```
$ gem install hmote-render
```

[cuba]: http://cuba.is
[mote]: https://github.com/soveran/mote
