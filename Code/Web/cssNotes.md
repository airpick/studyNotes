# CSS Notes
## Table of Contents
1. [Overview](#user-content-1-overview)
2. [Formatting](#user-content-2-formatting)
3. [Inserting CSS](#user-content-3-inserting-css)
4. [Selector Types](#user-content-4-selector-types)
5. [Properties](#user-content-5-properties)
6. [Units of Measurement](#user-content-6-units-of-measurement)
7. [Prioritization](#user-content-7-prioritization)
8. [Color](#user-content-8-color)
9. [Increasing Browser Compatibility](#user-content-9-increasing-browser-compatibility)
10. [CSS Box Model](#user-content-10-css-box-model)
11. [Accessibility](#user-content-11-accessibility)
12. [Responsive Design](#user-content-12-responsive-design)
13. [Flexbox](#user-content-13-flexbox)

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
ex: `h1 {color: red;}`

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

#### 4.6.2 `:hover`
Changes the hover state behavior (when you hover a mouse over an object) for the element assigned.
ex: `a:hover {color: red;}` This will change the hover state for all anchor `<a>` elements.

#### 4.6.3 `::before` and `::after`
These psuedo-class elements are used to add something before or after a selected element.

For the `::before` and `::after` pseudo-elements to function properly, they must have a defined `content` property. 
This property is usually used to add things like a photo or text to the selected element.

### 4.7 Media Queries
The `@media` selector looks at the capability of the device and allows different styles to be applied based on the capabilities available.
ex: `@media screen and (min-width: 480px) {body {background-color: lightgreen;}}`

Media queries can be used to check many things, such as:

* width and height of the viewport
* width and height of the device
* orientation (is the tablet/phone in landscape or portrait mode?)
* resolution

Using media queries are a popular technique for delivering a tailored style sheet to desktops, laptops, tablets, and mobile phones.

### 4.8 Keyframes
`@keyframes` is how to specify exactly what happens within an animation over its duration. 
This is done by giving CSS properties for specific "frames" during the animation, with percentages ranging from 0% to 100%.

This should be used in conjunction with animation properties.

ex:
```
#anim {
  animation-name: colorful;
  animation-duration: 3s;
}

@keyframes colorful {
  0% {
    background-color: blue;
  }
  100% {
    background-color: yellow;
  }
}
```

## 5 Properties
### 5.1 Colors `color`
Colors are specified using predefined color names, or `RGB`, `HEX`, `HSL`, `RGBA`, `HSLA` values.

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

#### 5.2.4 Font Style `font-style`
The font-style property is mostly used to specify italic text.
This property has three values:

* `normal`: The text is shown normally
* `italic`: The text is shown in italics
* `oblique`: The text is "leaning" (oblique is very similar to italic, but less supported)

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

Additionally, you can center an element using the `auto` value for this property.
ex: `div {margin: auto;}`

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

#### 5.7.3 Text Transform `text-transform`
The `text-transform` property in CSS is used to change the appearance of text. 
It's a convenient way to make sure text on a webpage appears consistently, without having to change the text content of the actual HTML elements.

The following table shows how the different `text-transform` values change the example text "Transform me".

| Value | Result |
| ---- | ---- |
| lowercase | "transform me" |
| uppercase | "TRANSFORM ME" |
| capitalize | "Transform Me" |
| initial | Use the default value |
| inherit | Use the text-transform value from the parent element |
| none | Default - Use the original text |

### 5.8 Box
#### 5.8.1 Box Shadow `box-shadow`
The `box-shadow` property applies one or more shadows to an element.
The box-shadow property takes values for

* `offset-x`: How far to push the shadow horizontally from the element.
* `offset-y`: How far to push the shadow vertically from the element.
* `blur-radius`: Optional. The higher the number, the more blurred the shadow will be.
* `spread-radius`: Optional. A positive value increases the size of the shadow; a negative value decreases the size of the shadow.
* `color`: The default value is the text color.

ex: `box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23);`

### 5.9 Opacity `opacity`
The opacity property in CSS is used to adjust the opacity, or conversely, the transparency for an item.

* A value of 1 is opaque, which isn't transparent at all
* A value of 0.5 is half see-through
* A value of 0 is completely transparent

### 5.10 Line
#### 5.10.1 Line Height `line-height`
Determines the distance between each line for text which is displayed in multiple lines.
ex: `p {line-height: 25px;}`

### 5.11 Position `position`
Sets the position of an element.
See Section 10: CSS Box Model for more information on how each element has layout within a page.

When elements are positioned to overlap (i.e. using `position: absolute | relative | fixed | sticky`), the element coming later in the HTML markup will, by default, appear on the top of the other elements.
To change this, see the 5.12 Overlapping & the Z-Index section.

#### 5.11.1 Relative `relative`
When the `position` of an element is set to `relative`, it allows you to specify how CSS should move it relative to its current position in the normal flow of the page. 

It pairs with the CSS offset properties of `left` or `right`, and `top` or `bottom`.
These say how many pixels, percentages, or ems to move the item ***away*** from where it is normally positioned.

ex: `p {position: relative; bottom: 10px;}`

#### 5.11.2 Absolute `absolute`
Locks the element in place relative to its parent container.
Unlike the `relative` position, this removes the element from the normal flow of the document, so surrounding items ignore it. 

One nuance with `absolute` positioning is that it will be locked relative to its closest positioned ancestor. 
If you forget to add a position rule to the parent item, (this is typically done using `position: relative;`), the browser will keep looking up the chain and ultimately default to the `body` tag.

#### 5.11.3 Fixed `fixed`
Similar to `absolute` positioning, it's used with the CSS offset properties and also removes the element from the normal flow of the document.
One key difference between the `fixed` and `absolute` positions is that an element with a fixed position won't move when the user scrolls.

### 5.12 Overlapping & the Z-Index `z-index`
The `z-index` property can specify the order of how elements are stacked on top of one another. It must be an integer (i.e. a whole number and not a decimal), and higher values for the `z-index` property of an element move it higher in the stack than those with lower values.

### 5.13 Float `float`
Floating elements are removed from the normal flow of a document and pushed to either the `left` or `right` of their containing parent element. 
It's commonly used with the width property to specify how much horizontal space the floated element requires.

ex: `h2 {float:right;}`

### 5.14 Background `background`
#### 5.14.1 Background Color `background-color`
The `background-color` property specifies the background color of an element.

ex: `body {background-color: lightblue;}`

#### 5.14.2 Background Image `background-image`
The `background-image` property specifies an image to use as the background of an element.
By default, the image is repeated so it covers the entire element.

ex: `body {background-image: url("kitty.gif");}`

#### 5.14.3 Linear Gradient `linear-gradient()`
CSS provides the ability to use color transitions, otherwise known as gradients, on elements.

ex: `background: linear-gradient(gradient_direction, color 1, color 2, color 3, ...);`

The first argument specifies the direction from which color transition starts - it can be stated as a degree, where 90deg makes a vertical gradient and 45deg is angled like a backslash. 
The following arguments specify the order of colors used in the gradient.

#### 5.14.4 Repeating Linear Gradient `repeating-linear-gradient()`
The `repeating-linear-gradient()` function is very similar to `linear-gradient()` with the major difference that it repeats the specified gradient pattern.

#### 5.14.5 URL `url()`
The Background property also supports the URL function, which allows an image to be set.
ex: `body {background: url(https://myBackgroundImage.com/image)}`

### 5.15 Transform `transform`
The `transform` property applies a 2D or 3D transformation to an element. 
This property allows you to rotate, scale, move, skew, etc., elements.

ex: `h5 {transform: scale(2);}` This will double the size of all `h5` elements

When used with pseudo-classes such as `:hover` that specify a certain state of an element, the `transform` property can easily add interactivity to your elements.

**Important Note:** Applying a transform to a div element will also affect any child elements contained in the div.

#### 5.15.1 Scale `scale()`
This function adjusts the size of the element the transform is applied to.

#### 5.15.2 Skew `skew(x,y)` `skewX()` `skewY()`
Adjusts the object along the x and/or y axis.

### 5.16 Animation
A series of animation properties, when used in conjunction with the `@keyframes` selector, allows a user to animate the properties of their webpage via CSS.

#### 5.16.1 Animation Name `animation-name`
Sets the name for the animation.
The `@keyframes` selector must then point to the name specified in order to apply the animation.

#### 5.16.2 Animation Duration `animation-duration`
`animation-duration` sets the length of time for the animation.

#### 5.16.3 Animation Fill Mode `animation-fill-mode`
The `animation-fill-mode` specifies the style applied to an element when the animation has finished.

ex: `animation-fill-mode: forwards;` This will cause the animation to retain its final value once its duration is complete

#### 5.16.4 Animation Iteration Count `animation-iteration-count`
This property allows you to control how many times you would like to loop through the animation.
To make an animation occur infinitely, use `infinite`.

ex: `animation-iteration-count: 3;` This will perform the same animation 3 times

#### 5.16.5 Animation Timing Function `animation-timing-function`
The `animation-timing-function` property controls how quickly an animated element changes over the duration of the animation.

If the animation is a car moving from point A to point B in a given time (your `animation-duration`), the `animation-timing-function` says how the car accelerates and decelerates over the course of the drive.

Sample values:

* `ease`: Starts slow, speeds up in the middle, and then slows down again in the end
* `ease-out`: Quick in the beginning then slows down
* `ease-in`: Slow in the beginning, then speeds up at the end
* `linear`: Applies a constant animation speed throughout

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
Colors from 0 to 255 for red, green, and blue.
ex: `rgb(0, 0, 0)`, `rgb(255, 255, 255)`

### 8.4 RGBA
Same as RGB, but with an added `Alpha` value which determines a level of opacity. 
Unlike the RGB values, A is measured from 0 (fully transparent) to 1 (fully opaque).
ex: `rgba(255, 0, 255, 0.5)`

### 8.5 HSL
`hsl()` is a means of directly declaring the Hue, Saturation, and Lightness.

1. Hue
    * If you picture a spectrum of colors starting with red on the left, moving through green in the middle, and blue on right, the hue is where a color fits along this line.
    * Hue uses a color wheel concept instead of the spectrum, where the angle of the color on the circle is given as a value between 0 and 360.
2. Saturation
    * The amount of gray in a color.
    * A fully saturated color has no gray in it, and a minimally saturated color is almost completely gray.
    * Saturation is given as a percentage, with 100% being fully saturated.
3. Lightness
    * The amount of white or black in a color.
    * A percentage is given ranging from 0% (black) to 100% (white), where 50% is the normal color.

## 9 Increasing Browser Compatibility
When using some things, such as variables, certain browsers will be unable to support this layout. 
In order to provide better back-ups for compatibility, best practice dictates declaring the back-ups in a supported format *before* those which may have compatibility issues.

This allows the value to be overwritten in the cascade when the initially desired feature is supported.

## 10 CSS Box Model
CSS treats each HTML element as its own box, which is usually referred to as the *CSS Box Model*. Block-level items automatically start on a new line (think headings, paragraphs, and divs) while inline items sit within surrounding content (like images or spans). The default layout of elements in this way is called the normal flow of a document. 

CSS also offers the `position` property to override the default layout settings of an element.

## 11 Accessibility
### 11.1 Screen Reader Only Content
In order to assist with those who are unable to view a website, a variety of elements are configured to respond a specific way for Screen Readers to review and output content appropriately, increasing the website's accessibility. 

The following is an example of how CSS can be configured for Screen Reader only content, which further aids in this endeavor.

```
.sr-only {
  position: absolute;
  left: -10000px;
  width: 1px;
  height: 1px;
  top: auto;
  overflow: hidden;
}
```

**Note:** The following CSS approaches will NOT do the same thing:

* `display: none;` or `visibility: hidden;` hides content for everyone, including screen reader users
* Zero values for pixel sizes, such as `width: 0px; height: 0px;` removes that element from the flow of your document, meaning screen readers will ignore it

### 11.2 Contrast
Low contrast between the foreground and background colors can make text difficult to read. 
Sufficient contrast improves the readability of your content, but what exactly does "sufficient" mean?

The Web Content Accessibility Guidelines (WCAG) recommend at least a 4.5 to 1 contrast ratio for normal text. 
he ratio is calculated by comparing the relative luminance values of two colors. 
This ranges from 1:1 for the same color, or no contrast, to 21:1 for white against black, the strongest contrast. 

### 11.3 Color
Color is a large part of visual design, but its use introduces two accessibility issues:

1. Color alone should not be used as the only way to convey important information because screen reader users won't see it.
2. Foreground and background colors need sufficient contrast so colorblind users can distinguish them.

The WCAG-recommended contrast ratio of 4.5:1 applies for color use as well as gray-scale combinations.

### 11.4 Hyperlinks
Screen Readers have the ability to only hear the links available on a page.

Screen readers do this by reading the link text, or what's between the anchor (`<a>`) tags. 
Having a list of "click here" or "read more" links isn't helpful. 

Instead, webpages should use brief but descriptive text within the a tags to provide more meaning for these users.

## 12 Responsive Design
### 12.1 Media Types
When using the `@media` selector, the user can define how the webpage will display based on the current viewport size (size of the page displayed to the user).
This value updates dynamically and is provided by the browser, so if the user resizes a page it will adjust accordingly.

Webpages should always be developed with the most common user in mind, be it desktop-first, mobile-first, etc..

#### 12.1.1 `@media` Properties
The following are some of the properties which can be leveraged via the `@media` selector: 

* `min-height`
* `max-height`
* `min-width`
* `max-width`

### 12.2 Images
Images can also be set in a responsive manner using the following: 

```
.responsive-img {
  max-width: 100%;
  height: auto;
}
```

In the above declaration, the `max-width` of 100% will make sure the image is never wider than the container it is in and the `height` of auto will make the image keep its original aspect ratio.

#### 12.2.1 Image Quality
Image quality can vary based not only on screen size, but on the amount of pixels available for an image.
Pixel density is an aspect that vary and is usually referred to as Pixel Per Inch(PPI) or Dots Per Inch(DPI).

The simplest way to make your images properly appear on High-Resolution Displays, such as the MacBook Pro's "retina display", is to define their `width` and `height` values as only half of what the original file is.

ex:
```
<style>
  img {height: 250px; width: 250px;}
</style>
<img src="coolPic500x500" alt="A most excellent picture">
```

### 12.3 Viewports
Instead of using `em` or `px` to size text, you can use viewport units for responsive typography.
Viewport units are relative to the viewport dimensions (width or height) of a device, and percentages are relative to the size of the parent container element.

The four different viewport units are:

* `vw` (viewport width): 10vw would be 10% of the viewport's width
* `vh` (viewport height): 3vh would be 3% of the viewport's height
* `vmin` (viewport minimum): 70vmin would be 70% of the viewport's smaller dimension (height or width)
* `vmax` (viewport maximum): 100vmax would be 100% of the viewport's bigger dimension (height or width)

ex: `body {width: 70vmin;}`

## 13 Flexbox
CSS3 introduced Flexible Boxes, or flexbox, to create page layouts for a dynamic UI.
It is a layout mode that arranges elements in a predictable way for different screen sizes and browsers.

### 13.1 Properties
#### 13.1.1 `display:flex`
Technically a value, but is required as a declaration in order to apply other flex properties to an object.

#### 13.1.2 `flex-direction`
Adding `display: flex` to an element turns it into a flex container.
This makes it possible to align any children of that element into rows or columns.

You do this by adding the `flex-direction` property to the parent item and setting it to one of the following the following values:

* `row`
* `column`
* `row-reverse`
* `column-reverse`

#### 13.1.3 Justify Content `justify-content`
Allows the user to define how a flexbox element will justify.
[This diagram](https://www.w3.org/TR/css-flexbox-1/images/flex-direction-terms.svg) provides a visual representation of key terms used for this method of justification.

* main: Depends on the `flex-direction` property. Rows use the x axis as their main (horizontal) and Columns use the y axis.
* size: Total length or width of the full container.
* start: Beginning of the full container.
* end: End of the full container.
* axis: Half the length of the size.

##### 13.1.3.1 Flex Start `flex-start`
Aligns items to the start of the flex container.
For a row, this pushes the items to the left of the container. For a column, this pushes the items to the top of the container.

This is the default alignment if no justify-content is specified.

##### 13.1.3.2 Flex End `flex-end`
Aligns items to the end of the flex container.

For a row, this pushes the items to the right of the container.
For a column, this pushes the items to the bottom of the container.

##### 13.1.3.3 Space Between `space-between`
Aligns items to the center of the main axis, with extra space placed between the items.
The first and last items are pushed to the very edge of the flex container. 

For example, in a row the first item is against the left side of the container, the last item is against the right side of the container, then the remaining space is distributed evenly among the other items.

##### 13.1.3.4 Space Around `space-around`
Similar to space-between but the first and last items are not locked to the edges of the container, the space is distributed around all the items with a half space on either end of the flex container.

##### 13.1.3.5 Space Evenly `space-evenly`
Distributes space evenly between the flex items with a full space at either end of the flex container.

#### 13.1.4 Align Items `align-items`
CSS offers the align-items property to align flex items along the cross axis.

For a row, it tells CSS how to push the items in the entire row up or down within the container.
For a column, it tells CSS how to push all the items left or right within the container.

##### 13.1.4.1 Flex Start `flex-start`
Aligns items to the start of the flex container.

For rows, this aligns items to the top of the container.
For columns, this aligns items to the left of the container.

##### 13.1.3.2 Flex End `flex-end`
Aligns items to the end of the flex container.

For a row, this pushes the items to the right of the container.
For a column, this pushes the items to the bottom of the container.

##### 13.1.4.3 Center `center`
Align items to the center.

For rows, this vertically aligns items (equal space above and below the items).
For columns, this horizontally aligns them (equal space to the left and right of the items).

##### 13.1.4.4 Stretch `stretch`
Stretch the items to fill the flex container.
For example, rows items are stretched to fill the flex container top-to-bottom.

This is the default value if no `align-items` value is specified.

##### 13.1.4.5 Baseline `baseline`
Align items to their baselines.
Baseline is a text concept, think of it as the line that the letters sit on.

#### 13.1.5 Flex Wrap `flex-wrap`
Using the flex-wrap property tells CSS to wrap items.
This means extra items move into a new row or column (think Wrap in Excel).

The break point of where the wrapping happens depends on the size of the items and the size of the container.

##### 13.1.5.1 No Wrap `nowrap`
This is the default setting, and does not wrap items.

##### 13.1.5.2 Wrap `wrap`
Wraps items from left-to-right if they are in a row, or top-to-bottom if they are in a column.

##### 13.1.5.3 Wrap Reverse `wrap-reverse`
Wraps items from right-to-left if they are in a row, or bottom-to-top if they are in a column.

#### 13.1.6 Flex Shrink `flex-shrink`
When used, it allows an item to shrink if the flex container is too small.
Items shrink when the width of the parent container is smaller than the combined widths of all the flex items within it.

The flex-shrink property takes numbers as values.
The larger the number, the more it will shrink compared to the other items in the container.

For example, if one item has a flex-shrink value of 1 and the other has a flex-shrink value of 3, the one with the value of 3 will shrink three times as much as the other.

#### 13.1.7 Flex Grow `flex-grow`
Conversely to `flex-shrink`, the `flex-grow` property controls the size of items when the parent container expands.

If one item has a `flex-grow` value of 1 and the other has a `flex-grow` value of 3, the one with the value of 3 will grow three times as much as the other.

#### 13.1.8 Flex Basis `flex-basis`
The `flex-basis` property specifies the initial size of the item before CSS makes adjustments with `flex-shrink` or `flex-grow`.

The units used by the `flex-basis` property are the same as other size properties (px, em, %, etc.).
The value `auto` sizes items based on the content.

#### 13.1.9 Flex `flex`
There is a shortcut available to set several flex properties at once. The flex-grow, flex-shrink, and flex-basis properties can all be set together by using the flex property.

ex: `flex: 1 0 10px;` This will set the item to `flex-grow: 1;`, `flex-shrink: 0;`, and `flex-basis: 10px;`.

The default property settings are `flex: 0 1 auto;`.

#### 13.1.10 Order `order`
The `order` property is used to tell CSS the order of how flex items appear in the flex container.

By default, items will appear in the same order they come in the source HTML.
The property takes numbers as values, and negative numbers can be used.

#### 13.1.11 Self Align `self-align`
This property allows you to adjust each item's alignment individually, instead of setting them all at once.
This is useful since other common adjustment techniques using the CSS properties `float`, `clear`, and `vertical-align` do not work on flex items.

`align-self` accepts the same values as `align-items` and will override any value set by the `align-items` property.