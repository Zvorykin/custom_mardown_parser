# Custom markdown parser

Simple project to practice using RegExp and take a look at React.js

Some rules that are implemented:

* headers
```
# Hello world

<h1>Hello world</h1>
```
* images and links
```
![alt](imgurl) — img(src)
[text](href) — a(href)
[![alt](imgurl)](href) — a(href)->img(src)
```
* Bold, strike, underscore
```
**bold text**
__underscore text__
~~strike text~~
```

Installation as usual:

```
asdf install
bundle install
npm install

bundle exec rails s
bundle exec ruby ./bin/webpack-dev-server
```

Browse to `http://127.0.0.1:3000/` to use UI
