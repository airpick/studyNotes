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

### 4.3 ID
IDs also aid in using CSS to quickly style a single element.
To adjust the ID in external or internal CSS, simply include a `#` at the beginning of the *selector*.

ex: `#unique-id {color: green;}`

JavaScript is also able to quickly select and modify specific elements.

Best practice is to have IDs be unique (although this is not enforced by the browser).
As such, try not to assign the same ID to multiple elements.

### 4.4 Attributes
This selector matches and styles elements with a specific attribute value.

ex: `[type='radio'] margin: 10px}`

### 4.5 Variables
Variables in CSS should be declared within a CSS selector.
For a global scope you can use either the :root or the body selector.

Variable names must begin with two dashes (--) and are case sensitive.
ex: `--myVar`

The syntax of the `var()` function is as follows: `var(custom-name, value)`.
* `custom-name` is required; it is the name used for the variable during declaration.
* `value` is optional; it is the fallback value used if the custom property is invalid.

### 4.6 Psuedo-Class
A pseudo-class is used to define a special state of an element, such as:

* Style an element when a user mouses over it
* Style visited and unvisited links differently
* Style an element when it gets focus

ex: `selector:pseudo-class {property: value;}`

#### 4.6.1 `:root`
When you create a variable, it is available for you to use inside the selector in which you create it. 
It also is available in any of that selector's descendants/children. This happens because CSS variables are inherited, just like ordinary properties.

To make use of inheritance, CSS variables are often defined in the `:root` psuedo-class selector.

`:root` is a pseudo-class selector that matches the root element of the document, usually the `html` element. 
By creating your variables in `:root`, they will be available globally and can be accessed from any other selector in the style sheet.

### 4.7 Media Queries
The `@media` selector looks at the capability of the device and allows different styles to be applied based on the capabilities available.
ex: `@media screen and (min-width: 480px) {body {background-color: lightgreen;}}`

Media queries can be used to check many things, such as:

* width and height of the viewport
* width and height of the device
* orientation (is the tablet/phone in landscape or portrait mode?)
* resolution

Using media queries are a popular technique for delivering a tailored style sheet to desktops, laptops, tablets, and mobile phones.

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

#### 5.2.3 Font Weight `font-weight`
The `font-weight` property sets how thick or thin characters in text should be displayed.
Some available options are:

* `normal`
* `bold`
* `bolder`
* `lighter`

### 5.3 Sizing
#### 5.3.1 Width `width`
Controls the width of an object. 
ex: `width: 500px;`

#### 5.3.2 Height `height`
Controls the height of an object.
ex: `height: 200px;`

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

### 5.5 Padding `padding`
Padding controls the amount of space between an element's content and its *border*.
CSS allows you to control the padding of all four individual sides of an element using the following properties:

* `padding-top`
* `padding-right`
* `padding-bottom`
* `padding-left`

#### 5.5.1 Clockwise Notation
Instead of specifying an element's top, right, bottom, and left properties individually, you can specify them all in one line.
ex: `padding: 10px 20px 10px 20px;`

These four values work like a clock: top, right, bottom, left, and will produce the exact same result as using the side-specific padding instructions.

### 5.6 Margin `margin`
An element's margin controls the amount of space between an element's border and surrounding elements.
If you set an element's margin to a negative value, the element will grow larger.

ex: `.blue-box {margin= -15px;}`

CSS allows you to control the margin of all four individual sides of an element using the following properties:

* `margin-top`
* `margin-right`
* `margin-bottom`
* `margin-left`

#### 5.6.1 Clockwise Notation
Instead of specifying an element's top, right, bottom, and left properties individually, you can specify them all in one line.
ex: `margin: 10px 20px 10px 20px;`

These four values work like a clock: top, right, bottom, left, and will produce the exact same result as using the side-specific margin instructions.

### 5.7 Text
#### 5.7.1 Text Align `text-align`
Controls alignment of the text relative to the page. 
Available alignment types are:

* `justify`: causes all lines of text except the last line to meet the left and right edges of the line box
* `left`: selected by default - left-aligns the text
* `right`: right-aligns the text
* `center`: centers the text

#### 5.7.2 Text Decoration `text-decoration`
The text-decoration property specifies the decoration added to text, such as an underline.
In addition, there are sub-properties which allow the color and style of the decoration as well if such granularity is needed.

Some `text-decoration-line` options include:

* `underline`
* `overline`
* `line-through`

ex: `h1 {text-decoration: underline overline dotted red;}`

## 6 Units of Measurement
### 6.1 Absolute Units
Absolute units tie to physical units of length, such as `in` or `mm`.
Absolute length units approximate the actual measurement on a screen, but there are some differences depending on a screen's resolution.

### 6.2 Relative Units
Relative units, such as `em` or `rem`, are relative to another length value. 
For example, `em` is based on the size of an element's font. 

If you use it to set the `font-size` property itself, it's relative to the parent's `font-size`.

## 7 Prioritization
When applying CSS to any element, the following hierarchy is observed (in order of least to highest priority):

* internal/external element
* internal/external class
* internal/external id
* inline
* `!important` (this is an attribute which can be applied for any CSS declaration)

In addition to this, styles of equal priority are applied top to bottom.
In other words, if two internal styles for `h1` exist, only the one applied lowest in `<style>` will be observed.

## 8 Color
Here are the ways in which color can be represented in CSS.

### 8.1 Color 
ex: `purple`, `blue`, `brown`

A [pre-defined list](https://www.w3schools.com/cssref/css_colors.asp) of colors which allow for quick use/review.

### 8.2 Hex
ex: `#000000`, `#fefefe`
6 hexadecimal digits represent colors, with two each for the red (R), green (G), and blue (B) components.
From these three pure colors (red, green, and blue), we can vary the amounts of each to create over 16 million other colors!

For another example, orange is pure red, mixed with some green, and no blue. In hex code, this translates to being `#FFA500`.

Using shorthand, red's hex code `#FF0000` can be shortened to `#F00`. This shortened form gives one digit for red, one digit for green, and one digit for blue.

### 8.3 RGB
ex: `rgb(0, 0, 0)`, `rgb(255, 255, 255)`

## 9 Increasing Browser Compatibility
When using some things, such as variables, certain browsers will be unable to support this layout. 
In order to provide better back-ups for compatibility, best practice dictates declaring the back-ups in a supported format *before* those which may have compatibility issues.

This allows the value to be overwritten in the cascade when the initially desired feature is supported.