# CSS Notes
## Table of Contents
xxx

## 1 Overview
Cascading Style Sheets (CSS) tell the browser how to display the text and other content that you write in HTML.
CSS is case-sensitve, so be careful with use of capitalization.

CSS primarily controls the following features of a webpage:

* color
* fonts
* positioning
* spacing
* sizing
* decorations
* transitions

The idea behind CSS is that you can use a selector to target an HTML element in the DOM (Document Object Model) and then apply a variety of attributes to that element to change the way it is displayed on the page.

## 2 Formatting
A CSS ruleset contains two sections, the selector and the declaration.

ex: `h1 {color: blue; font-size:12px;}`

In the above example, `h1` is the *selector*. This defines which element will be impacted by the changes declared.
Everything inside the `{}` is the *declaration*. These define what changes will be applied to the element selected.

Within the declaration, `color` and `font-size` are *properties*. 
`blue` and `12px` are the *values* which will be applied for these properties.

## 3 Inserting CSS
There are 3 ways to apply a stylesheet:

* External
* Internal
* Inline

### 3.1 External
Within the declarations for the HTML document, a `<link>` is included which references an external CSS document. 
ex: `<link rel="stylesheet" type="text/css" href="mystyle.css">`

### 3.2 Internal
A `<style>` element (not self-closing) can be included within the HTML document which will host all of the page's CSS within it. 
The format used within is the same as CSS written in an external document.

### 3.3 Inline
Applied as an *attribute* within the HTML element itself. 
ex: `<h1 style="color:blue;text-align:center;">This is a heading</h1>`

This method loses many of the advantages of using a style sheet, and is recommended to only use when absolutely necessary. 
It can have value in overriding styles applied from other, difficult to locate sources.

## 4 Selector Types
### 4.1 HTML Elements
As the example in `2 Formatting` highlights, a *selector* can point to HTML elements directly. 

### 4.2 Class
If the *selector* begins with a `.`, this indicates that only elements which contain a corresponding `class` attribute will be impacted. 
ex: `.blue-text {color: blue;}` will affect any HTML element which has `class="blue-text"` declared.


## 5 Properties
### 5.1 Colors `color`
Colors are specified using predefined color names, or RGB, HEX, HSL, RGBA, HSLA values.

* `color` defines text color
* `background-color` defines background color
* `border` can also have colors applied for the border of an element

### 5.2 Fonts
#### 5.2.1 Font Size `font-size`
Determines how large or small a font is. 
ex: `font-size: 12px;`

Note that the `px` must be next to the number (no space).

#### 5.2.2 Font Family `font-family`
Sets the kind of font used.
ex: `font-family: monospace;`

Additionally, font-families are case-sensitive and must be contained within quotations if a space is needed.
ex: `font-family: "Open Sans"`

If the user specifies more than one font type for a value in a single property declaration, the second (and any after) will be fallback font types.
ex: `font-family: monospace, sans-serif;`

### 5.3 Sizing
#### 5.3.1 Width `width`
Controls the width of an object. 
ex: `width: 500px;`

### 5.4 Borders
#### 5.4.1 Border Color `border-color`
Defines the color used for the border.
ex: `border-color: red;`

#### 5.4.2 Border Width `border-width`
Sets the width of a border.
ex: `border-width: 5px;`

#### 5.4.3 Border Style `border-style`
Determines the style of a border.
ex: `border-style: solid;`

Possible borders:

* `dotted`
* `dashed`
* `solid`
* `double`
* `groove`
* `ridge`
* `inset`
* `outset`
* `none`
* `hidden`

#### 5.4.4 Border Radius `border-radius`
Smoothes the edges of a border to make it less boxy.
ex: `border-radius: 10px;`

Border radii can also be set to percentages, such as `50%`. 