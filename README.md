[![Published on webcomponents.org](https://img.shields.io/badge/webcomponents.org-published-blue.svg)](https://www.webcomponents.org/element/renfeng/d3-colony)

## &lt;d3-colony&gt;

`<d3-colony>` displays a dependency graph. Inspired by, and code (with modification) copied from https://github.com/hughsk/colony

<!--
```
<custom-element-demo>
  <template>
    <link rel="import" href="d3-colony.html">
    <link rel="import" href="../paper-input/paper-input.html">
    <next-code-block></next-code-block>
  </template>
</custom-element-demo>
```
-->

```html
<dom-bind>
	<template>
		<d3-colony nodes='[ { "group":0, "size":8 }, { "group":0, "size":8 }, { "size":3, "group":0 }, { "size":5, "group":2 }, { "size":5, "group":16 }, { "size":5, "group":13 }, { "size":3, "group":0 }, { "size":5, "group":14 }, { "size":5, "group":20 }, { "size":5, "group":17 }, { "size":5, "group":23 }, { "size":3, "group":0 }, { "size":5, "group":1 }, { "size":5, "group":5 }, { "size":5, "group":7 }, { "size":5, "group":24 }, { "size":3, "group":2 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":3, "group":14 }, { "size":5, "group":3 }, { "size":5, "group":4 }, { "size":3, "group":1 }, { "size":3, "group":5 }, { "size":3, "group":5 }, { "size":3, "group":7 }, { "size":3, "group":7 }, { "size":5, "group":21 }, { "size":3, "group":7 }, { "size":3, "group":7 }, { "size":3, "group":7 }, { "size":5, "group":6 }, { "size":3, "group":7 }, { "size":3, "group":7 }, { "size":3, "group":7 }, { "size":3, "group":7 }, { "size":3, "group":7 }, { "size":3, "group":21 }, { "size":3, "group":21 }, { "size":3, "group":21 }, { "size":3, "group":21 }, { "size":3, "group":21 }, { "size":3, "group":21 }, { "size":3, "group":21 }, { "size":5, "group":18 }, { "size":5, "group":19 }, { "size":3, "group":7 }, { "size":3, "group":7 }, { "size":3, "group":7 }, { "size":5, "group":8 }, { "size":3, "group":7 }, { "size":3, "group":7 }, { "size":3, "group":7 }, { "size":5, "group":9 }, { "size":5, "group":15 }, { "size":3, "group":7 }, { "size":3, "group":7 }, { "size":5, "group":10 }, { "size":5, "group":1 }, { "size":3, "group":7 }, { "size":3, "group":8 }, { "size":3, "group":8 }, { "size":3, "group":8 }, { "size":3, "group":8 }, { "size":3, "group":8 }, { "size":3, "group":8 }, { "size":3, "group":8 }, { "size":3, "group":8 }, { "size":3, "group":8 }, { "size":3, "group":8 }, { "size":3, "group":8 }, { "size":3, "group":8 }, { "size":3, "group":8 }, { "size":5, "group":11 }, { "size":5, "group":12 }, { "size":3, "group":1 } ]'
				   links='[ { "source":0, "target":2 }, { "source":1, "target":3 }, { "source":1, "target":4 }, { "source":1, "target":5 }, { "source":1, "target":6 }, { "source":2, "target":7 }, { "source":2, "target":8 }, { "source":2, "target":9 }, { "source":2, "target":10 }, { "source":11, "target":10 }, { "source":2, "target":11 }, { "source":2, "target":12 }, { "source":8, "target":12 }, { "source":2, "target":13 }, { "source":3, "target":14 }, { "source":78, "target":14 }, { "source":3, "target":15 }, { "source":3, "target":16 }, { "source":7, "target":17 }, { "source":7, "target":18 }, { "source":7, "target":19 }, { "source":7, "target":20 }, { "source":7, "target":21 }, { "source":7, "target":22 }, { "source":7, "target":23 }, { "source":7, "target":24 }, { "source":7, "target":25 }, { "source":7, "target":26 }, { "source":7, "target":27 }, { "source":7, "target":28 }, { "source":7, "target":29 }, { "source":7, "target":30 }, { "source":7, "target":31 }, { "source":7, "target":32 }, { "source":7, "target":33 }, { "source":7, "target":34 }, { "source":7, "target":35 }, { "source":7, "target":36 }, { "source":7, "target":37 }, { "source":7, "target":38 }, { "source":7, "target":39 }, { "source":7, "target":40 }, { "source":7, "target":41 }, { "source":7, "target":42 }, { "source":7, "target":43 }, { "source":7, "target":44 }, { "source":7, "target":45 }, { "source":7, "target":46 }, { "source":7, "target":47 }, { "source":7, "target":48 }, { "source":7, "target":49 }, { "source":7, "target":50 }, { "source":7, "target":51 }, { "source":7, "target":52 }, { "source":7, "target":53 }, { "source":7, "target":54 }, { "source":7, "target":55 }, { "source":7, "target":56 }, { "source":7, "target":57 }, { "source":7, "target":58 }, { "source":7, "target":59 }, { "source":7, "target":60 }, { "source":7, "target":61 }, { "source":7, "target":62 }, { "source":7, "target":63 }, { "source":7, "target":64 }, { "source":7, "target":65 }, { "source":7, "target":66 }, { "source":7, "target":67 }, { "source":7, "target":68 }, { "source":8, "target":69 }, { "source":8, "target":70 }, { "source":12, "target":71 }, { "source":13, "target":72 }, { "source":13, "target":73 }, { "source":14, "target":74 }, { "source":14, "target":75 }, { "source":14, "target":76 }, { "source":14, "target":77 }, { "source":14, "target":78 }, { "source":14, "target":79 }, { "source":69, "target":80 }, { "source":74, "target":81 }, { "source":82, "target":81 }, { "source":84, "target":81 }, { "source":85, "target":81 }, { "source":74, "target":82 }, { "source":74, "target":83 }, { "source":85, "target":83 }, { "source":74, "target":84 }, { "source":74, "target":85 }, { "source":76, "target":86 }, { "source":76, "target":87 }, { "source":76, "target":88 }, { "source":76, "target":89 }, { "source":76, "target":90 }, { "source":76, "target":91 }, { "source":76, "target":92 }, { "source":76, "target":93 }, { "source":94, "target":93 }, { "source":76, "target":94 }, { "source":77, "target":95 }, { "source":81, "target":95 }, { "source":105, "target":95 }, { "source":77, "target":96 }, { "source":84, "target":96 }, { "source":77, "target":97 }, { "source":105, "target":97 }, { "source":77, "target":98 }, { "source":78, "target":99 }, { "source":81, "target":99 }, { "source":78, "target":100 }, { "source":81, "target":100 }, { "source":78, "target":101 }, { "source":81, "target":101 }, { "source":99, "target":101 }, { "source":100, "target":101 }, { "source":78, "target":102 }, { "source":78, "target":103 }, { "source":79, "target":104 }, { "source":83, "target":105 }, { "source":94, "target":106 }, { "source":94, "target":107 }, { "source":95, "target":108 }, { "source":98, "target":109 }, { "source":111, "target":109 }, { "source":115, "target":109 }, { "source":119, "target":109 }, { "source":120, "target":109 }, { "source":121, "target":109 }, { "source":98, "target":110 }, { "source":111, "target":110 }, { "source":113, "target":110 }, { "source":114, "target":110 }, { "source":115, "target":110 }, { "source":118, "target":110 }, { "source":119, "target":110 }, { "source":98, "target":111 }, { "source":117, "target":111 }, { "source":120, "target":111 }, { "source":121, "target":111 }, { "source":98, "target":112 }, { "source":113, "target":112 }, { "source":114, "target":112 }, { "source":98, "target":113 }, { "source":120, "target":113 }, { "source":121, "target":113 }, { "source":98, "target":114 }, { "source":120, "target":114 }, { "source":98, "target":115 }, { "source":120, "target":115 }, { "source":98, "target":116 }, { "source":117, "target":116 }, { "source":98, "target":117 }, { "source":114, "target":117 }, { "source":120, "target":117 }, { "source":121, "target":117 }, { "source":98, "target":118 }, { "source":120, "target":118 }, { "source":121, "target":118 }, { "source":98, "target":119 }, { "source":120, "target":119 }, { "source":121, "target":119 }, { "source":98, "target":120 }, { "source":109, "target":120 }, { "source":117, "target":120 }, { "source":98, "target":121 }, { "source":102, "target":122 }, { "source":106, "target":123 }, { "source":107, "target":124 } ]'
				   id="colony" selected="{{selected}}" focus="{{focus}}" style="height: 400px;" loaded></d3-colony>
		<paper-input label="Selected" value="{{selected}}"></paper-input>
		<paper-input label="Focus" value="{{focus}}"></paper-input>
	</template>
</dom-bind>
```

The above sample code generates a graph like this.

![Colony](http://hughsk.github.com/colony/img/screenshot-semi.png)

## Sample: Element dependency

The following graph illustrates dependencies between elements published on http://webcomponents.org/

![Elements published on http://webcomponents.org/](https://renfeng.github.io/d3-colony/web-components.png)

Each element is represented as a node in the graph. If one element depends on another,
	a link is made between the two elements.

Each element is coloured based on the number of elements depending on it. By hovering over
	a node, you can see the elements it depends on (light), and the elements that depend on it (dark).

Each element is sized based on the number of contributors.

This demo is a visualisation of dependency between elements.
