[![Published on webcomponents.org](https://img.shields.io/badge/webcomponents.org-published-blue.svg)](https://www.webcomponents.org/element/renfeng/github-punchcard)

## &lt;d3-colony&gt;

`<d3-colony>` displays a dependency graph. Inspired by, and code (with modification) copied from https://github.com/hughsk/colony

<!--
```
<custom-element-demo>
  <template>
    <link rel="import" href="d3-colony.html">
    <next-code-block></next-code-block>
  </template>
</custom-element-demo>
```
-->
```html
<d3-colony nodes='[ { "id":"index.js", "group":0, "size":8 }, { "id":"index.js", "group":0, "size":8 }, { "id":"index.js", "size":3, "group":0 }, { "id":"d3", "size":5, "group":2 }, { "id":"mousetrap", "size":5, "group":16 }, { "id":"debounce", "size":5, "group":13 }, { "id":"resize.js", "size":3, "group":0 }, { "id":"highlight.js", "size":5, "group":14 }, { "id":"reqursive", "size":5, "group":20 }, { "id":"marked", "size":5, "group":17 }, { "id":"wrench", "size":5, "group":23 }, { "id":"utils.js", "size":3, "group":0 }, { "id":"async", "size":5, "group":1 }, { "id":"ejs", "size":5, "group":5 }, { "id":"jsdom", "size":5, "group":7 }, { "id":"sizzle", "size":5, "group":24 }, { "id":"d3.v2.js", "size":3, "group":2 }, { "id":"bash.js", "size":3, "group":14 }, { "id":"erlang.js", "size":3, "group":14 }, { "id":"cs.js", "size":3, "group":14 }, { "id":"ruby.js", "size":3, "group":14 }, { "id":"rust.js", "size":3, "group":14 }, { "id":"rib.js", "size":3, "group":14 }, { "id":"diff.js", "size":3, "group":14 }, { "id":"javascript.js", "size":3, "group":14 }, { "id":"glsl.js", "size":3, "group":14 }, { "id":"rsl.js", "size":3, "group":14 }, { "id":"lua.js", "size":3, "group":14 }, { "id":"xml.js", "size":3, "group":14 }, { "id":"markdown.js", "size":3, "group":14 }, { "id":"css.js", "size":3, "group":14 }, { "id":"lisp.js", "size":3, "group":14 }, { "id":"profile.js", "size":3, "group":14 }, { "id":"http.js", "size":3, "group":14 }, { "id":"java.js", "size":3, "group":14 }, { "id":"php.js", "size":3, "group":14 }, { "id":"haskell.js", "size":3, "group":14 }, { "id":"1c.js", "size":3, "group":14 }, { "id":"python.js", "size":3, "group":14 }, { "id":"smalltalk.js", "size":3, "group":14 }, { "id":"tex.js", "size":3, "group":14 }, { "id":"actionscript.js", "size":3, "group":14 }, { "id":"sql.js", "size":3, "group":14 }, { "id":"vala.js", "size":3, "group":14 }, { "id":"ini.js", "size":3, "group":14 }, { "id":"d.js", "size":3, "group":14 }, { "id":"axapta.js", "size":3, "group":14 }, { "id":"perl.js", "size":3, "group":14 }, { "id":"scala.js", "size":3, "group":14 }, { "id":"cmake.js", "size":3, "group":14 }, { "id":"objectivec.js", "size":3, "group":14 }, { "id":"avrasm.js", "size":3, "group":14 }, { "id":"vhdl.js", "size":3, "group":14 }, { "id":"coffeescript.js", "size":3, "group":14 }, { "id":"nginx.js", "size":3, "group":14 }, { "id":"erlang-repl.js", "size":3, "group":14 }, { "id":"r.js", "size":3, "group":14 }, { "id":"json.js", "size":3, "group":14 }, { "id":"django.js", "size":3, "group":14 }, { "id":"delphi.js", "size":3, "group":14 }, { "id":"vbscript.js", "size":3, "group":14 }, { "id":"mel.js", "size":3, "group":14 }, { "id":"dos.js", "size":3, "group":14 }, { "id":"apache.js", "size":3, "group":14 }, { "id":"cpp.js", "size":3, "group":14 }, { "id":"matlab.js", "size":3, "group":14 }, { "id":"parser3.js", "size":3, "group":14 }, { "id":"clojure.js", "size":3, "group":14 }, { "id":"go.js", "size":3, "group":14 }, { "id":"detective", "size":5, "group":3 }, { "id":"nub", "size":5, "group":4 }, { "id":"async.js", "size":3, "group":1 }, { "id":"utils.js", "size":3, "group":5 }, { "id":"filters.js", "size":3, "group":5 }, { "id":"index.js", "size":3, "group":7 }, { "id":"documentfeatures.js", "size":3, "group":7 }, { "id":"request", "size":5, "group":21 }, { "id":"style.js", "size":3, "group":7 }, { "id":"index.js", "size":3, "group":7 }, { "id":"index.js", "size":3, "group":7 }, { "id":"esprima", "size":5, "group":6 }, { "id":"core.js", "size":3, "group":7 }, { "id":"xpath.js", "size":3, "group":7 }, { "id":"events.js", "size":3, "group":7 }, { "id":"html.js", "size":3, "group":7 }, { "id":"ls.js", "size":3, "group":7 }, { "id":"oauth.js", "size":3, "group":21 }, { "id":"uuid.js", "size":3, "group":21 }, { "id":"forever.js", "size":3, "group":21 }, { "id":"index.js", "size":3, "group":21 }, { "id":"jar.js", "size":3, "group":21 }, { "id":"tunnel.js", "size":3, "group":21 }, { "id":"aws.js", "size":3, "group":21 }, { "id":"mime", "size":5, "group":18 }, { "id":"form-data", "size":5, "group":19 }, { "id":"core.js", "size":3, "group":7 }, { "id":"html.js", "size":3, "group":7 }, { "id":"utils.js", "size":3, "group":7 }, { "id":"cssom", "size":5, "group":8 }, { "id":"htmltodom.js", "size":3, "group":7 }, { "id":"domtohtml.js", "size":3, "group":7 }, { "id":"htmlencoding.js", "size":3, "group":7 }, { "id":"contextify", "size":5, "group":9 }, { "id":"htmlparser", "size":5, "group":15 }, { "id":"sizzle.js", "size":3, "group":7 }, { "id":"events.js", "size":3, "group":7 }, { "id":"combined-stream", "size":5, "group":10 }, { "id":"async", "size":5, "group":1 }, { "id":"core.js", "size":3, "group":7 }, { "id":"CSSStyleDeclaration.js", "size":3, "group":8 }, { "id":"CSSRule.js", "size":3, "group":8 }, { "id":"CSSStyleRule.js", "size":3, "group":8 }, { "id":"MediaList.js", "size":3, "group":8 }, { "id":"CSSMediaRule.js", "size":3, "group":8 }, { "id":"CSSImportRule.js", "size":3, "group":8 }, { "id":"CSSFontFaceRule.js", "size":3, "group":8 }, { "id":"StyleSheet.js", "size":3, "group":8 }, { "id":"CSSStyleSheet.js", "size":3, "group":8 }, { "id":"CSSKeyframesRule.js", "size":3, "group":8 }, { "id":"CSSKeyframeRule.js", "size":3, "group":8 }, { "id":"parse.js", "size":3, "group":8 }, { "id":"clone.js", "size":3, "group":8 }, { "id":"bindings", "size":5, "group":11 }, { "id":"delayed-stream", "size":5, "group":12 }, { "id":"async.js", "size":3, "group":1 } ]'
		   links='[ { "source":0, "target":2 }, { "source":1, "target":3 }, { "source":1, "target":4 }, { "source":1, "target":5 }, { "source":1, "target":6 }, { "source":2, "target":7 }, { "source":2, "target":8 }, { "source":2, "target":9 }, { "source":2, "target":10 }, { "source":11, "target":10 }, { "source":2, "target":11 }, { "source":2, "target":12 }, { "source":8, "target":12 }, { "source":2, "target":13 }, { "source":3, "target":14 }, { "source":78, "target":14 }, { "source":3, "target":15 }, { "source":3, "target":16 }, { "source":7, "target":17 }, { "source":7, "target":18 }, { "source":7, "target":19 }, { "source":7, "target":20 }, { "source":7, "target":21 }, { "source":7, "target":22 }, { "source":7, "target":23 }, { "source":7, "target":24 }, { "source":7, "target":25 }, { "source":7, "target":26 }, { "source":7, "target":27 }, { "source":7, "target":28 }, { "source":7, "target":29 }, { "source":7, "target":30 }, { "source":7, "target":31 }, { "source":7, "target":32 }, { "source":7, "target":33 }, { "source":7, "target":34 }, { "source":7, "target":35 }, { "source":7, "target":36 }, { "source":7, "target":37 }, { "source":7, "target":38 }, { "source":7, "target":39 }, { "source":7, "target":40 }, { "source":7, "target":41 }, { "source":7, "target":42 }, { "source":7, "target":43 }, { "source":7, "target":44 }, { "source":7, "target":45 }, { "source":7, "target":46 }, { "source":7, "target":47 }, { "source":7, "target":48 }, { "source":7, "target":49 }, { "source":7, "target":50 }, { "source":7, "target":51 }, { "source":7, "target":52 }, { "source":7, "target":53 }, { "source":7, "target":54 }, { "source":7, "target":55 }, { "source":7, "target":56 }, { "source":7, "target":57 }, { "source":7, "target":58 }, { "source":7, "target":59 }, { "source":7, "target":60 }, { "source":7, "target":61 }, { "source":7, "target":62 }, { "source":7, "target":63 }, { "source":7, "target":64 }, { "source":7, "target":65 }, { "source":7, "target":66 }, { "source":7, "target":67 }, { "source":7, "target":68 }, { "source":8, "target":69 }, { "source":8, "target":70 }, { "source":12, "target":71 }, { "source":13, "target":72 }, { "source":13, "target":73 }, { "source":14, "target":74 }, { "source":14, "target":75 }, { "source":14, "target":76 }, { "source":14, "target":77 }, { "source":14, "target":78 }, { "source":14, "target":79 }, { "source":69, "target":80 }, { "source":74, "target":81 }, { "source":82, "target":81 }, { "source":84, "target":81 }, { "source":85, "target":81 }, { "source":74, "target":82 }, { "source":74, "target":83 }, { "source":85, "target":83 }, { "source":74, "target":84 }, { "source":74, "target":85 }, { "source":76, "target":86 }, { "source":76, "target":87 }, { "source":76, "target":88 }, { "source":76, "target":89 }, { "source":76, "target":90 }, { "source":76, "target":91 }, { "source":76, "target":92 }, { "source":76, "target":93 }, { "source":94, "target":93 }, { "source":76, "target":94 }, { "source":77, "target":95 }, { "source":81, "target":95 }, { "source":105, "target":95 }, { "source":77, "target":96 }, { "source":84, "target":96 }, { "source":77, "target":97 }, { "source":105, "target":97 }, { "source":77, "target":98 }, { "source":78, "target":99 }, { "source":81, "target":99 }, { "source":78, "target":100 }, { "source":81, "target":100 }, { "source":78, "target":101 }, { "source":81, "target":101 }, { "source":99, "target":101 }, { "source":100, "target":101 }, { "source":78, "target":102 }, { "source":78, "target":103 }, { "source":79, "target":104 }, { "source":83, "target":105 }, { "source":94, "target":106 }, { "source":94, "target":107 }, { "source":95, "target":108 }, { "source":98, "target":109 }, { "source":111, "target":109 }, { "source":115, "target":109 }, { "source":119, "target":109 }, { "source":120, "target":109 }, { "source":121, "target":109 }, { "source":98, "target":110 }, { "source":111, "target":110 }, { "source":113, "target":110 }, { "source":114, "target":110 }, { "source":115, "target":110 }, { "source":118, "target":110 }, { "source":119, "target":110 }, { "source":98, "target":111 }, { "source":117, "target":111 }, { "source":120, "target":111 }, { "source":121, "target":111 }, { "source":98, "target":112 }, { "source":113, "target":112 }, { "source":114, "target":112 }, { "source":98, "target":113 }, { "source":120, "target":113 }, { "source":121, "target":113 }, { "source":98, "target":114 }, { "source":120, "target":114 }, { "source":98, "target":115 }, { "source":120, "target":115 }, { "source":98, "target":116 }, { "source":117, "target":116 }, { "source":98, "target":117 }, { "source":114, "target":117 }, { "source":120, "target":117 }, { "source":121, "target":117 }, { "source":98, "target":118 }, { "source":120, "target":118 }, { "source":121, "target":118 }, { "source":98, "target":119 }, { "source":120, "target":119 }, { "source":121, "target":119 }, { "source":98, "target":120 }, { "source":109, "target":120 }, { "source":117, "target":120 }, { "source":98, "target":121 }, { "source":102, "target":122 }, { "source":106, "target":123 }, { "source":107, "target":124 } ]'
		   loaded></d3-colony>
```
