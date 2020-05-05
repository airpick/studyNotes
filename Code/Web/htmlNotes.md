# HTML Notes
## Table of Contents
1. [Overview](#user-content-1-overview)
2. [DOCTYPE Declaration](#user-content-2-doctype-declaration-doctype-)
3. [Elements](#user-content-3-elements)
    * [3.1 Basic Elements](#user-content-31-basic-elements)
        * [3.1.1 Comment](#user-content-311-comment------)
        * [3.1.2 HTML](#user-content-312-html-html-html)
        * [3.1.3 Head](#user-content-313-head-head-head)
        * [3.1.4 Body](#user-content-314-body-body-body)
        * [3.1.5 Header](#user-content-315-header-header-header)
        * [3.1.6 Main](#user-content-316-main-main-main)
        * [3.1.7 Footer](#user-content-317-footer-footer-footer)
        * [3.1.8 Headers](#user-content-318-headers-h-h)
        * [3.1.9 Paragraph](#user-content-319-paragraph-p-p)
        * [3.1.10 Image](#user-content-3110-image-img)
        * [3.1.11 Anchor](#user-content-3111-anchor-a-a)
        * [3.1.12 Lists](#user-content-3112-lists)
        * [3.1.13 Div](#user-content-3113-div-div-div)
        * [3.1.14 Strong](#user-content-3114-strong-strong-strong)
        * [3.1.15 Underline](#user-content-3115-underline-u-u)
        * [3.1.16 Emphasis](#user-content-3116-emphasis-em-em)
        * [3.1.17 Strikethrough](#user-content-3117-strikethrough-s-s)
        * [3.1.18 Horizontal Line](#user-content-3118-horizontal-line-hr)
        * [3.1.19 Section](#user-content-3119-section-section-section)
        * [3.1.20 Article](#user-content-3120-article-article-article)
        * [3.1.21 Nav](#user-content-3121-nav-nav-nav)
        * [3.1.22 Audio](#user-content-3122-audio-audio-audio)
        * [3.1.23 Source](#user-content-3123-source-source)
    * [3.2 Forms and Interactive Elements](#user-content-32-forms-and-interactive-elements)
        * [3.2.1 Form](#user-content-321-form-form-form)
        * [3.2.2 Input](#user-content-322-input-input)
        * [3.2.3 Button](#user-content-323-button-button-button)
        * [3.2.4 Label](#user-content-324-label-label-label)
4. [Other Important Features](#user-content-4-other-important-features)
    * [4.1 Organizational Attributes](#user-content-41-organizational-attributes)
        * [4.1.1 Class](#user-content-411-class-class)
        * [4.1.2 ID](#user-content-412-id-id)

## 1 Overview
A quick and dirty reference page for all things HTML5. 
Study is being performed concurrently on [Free Code Camp](https://www.freecodecamp.org/).

## 2 DOCTYPE Declaration `<!DOCTYPE ...>`
The first line of any HTML document must contain a declaration which conveys the version of HTML used with the browser. 
This will look like `<!DOCTYPE ...>`, but with the elliipsis (`...`) replaced with the HTML version in use. 

`DOCTYPE` itself must be capitalized to provide compatibility with older browsers, but the version itself does not require case-sensitivity.

To elegantly declare HTML5 as the version, use `<!DOCTYPE html>`.

## 3 Elements
Any object in an html document is an element. 
Elements require one to two tags (depending on whether they are self-closing or require a closing tag) in order to function correctly.

ex: `<p>This is a paragraph section.</p>`

### 3.1 Basic Elements
#### 3.1.1 Comment `<!--` `-->`
Maybe the most important element, this allows the user to leave a comment.

#### 3.1.2 HTML `<html>` `</html>`
All HTML code should be contained within this element. 
Typically, this is initiated just after the DOCTYPE declaration and continues for all HTML related code.

#### 3.1.3 Head `<head>` `</head>`
This element will contain metadata relating to the page. 
Typically, it is best to include this just after the DOCTYPE declaration and initial `<html>` element.

#### 3.1.4 Body `<body>` `</body>`
All content actually used for page display should be contained within this. 
Think of it as the counterpart to the metadata contained in the `<head>` element. 

It will most often be included just after the `</head>` element is closed.

By default, even if not declared all space within an HTML document not otherwise specified as by a different section element will be considered a body.

#### 3.1.5 Header `<header>` `</header>`
Used as a container for introductory content or a set of navigation links.

The `<header>` is meant for use in the `<body>` tag of your HTML document. 
This is different than the `<head>` element, which contains the page's title, meta information, etc.

#### 3.1.6 Main `<main>` `</main>`
Used as a container for the main content of a webpage.

#### 3.1.7 Footer `<footer>` `</footer>`
User as a container which typically contains:

* authorship info
* copyright info
* contact info
* sitemap

#### 3.1.8 Headers `<h#>` `</h#>`
These help to separate sections and sub-sections on a website. 
They also often link up to help provide an easy to read hierarchical display for pages with a large volume of content.

* `<h1></h1>`
* `<h2></h2>`
* `<h3></h3>`
* `<h4></h4>`
* `<h5></h5>`
* `<h6></h6>`

#### 3.1.9 Paragraph `<p>` `</p>`
As it's name implies.

#### 3.1.10 Image `<img>`
Used for each image on a webpage.
In order for the image to display, the `src` attribute must be used.

##### 3.1.10.1 Attributes
* `src`: used for the image's link
* `alt`: used for the alternative text displayed when a user hovers their mouse over the image

#### 3.1.11 Anchor `<a>` `</a>`
Lays anchor on a page which other things can be attached to, such as hyperlinks or internal references within the current page. 

##### 3.1.11.1 Attributes
| Attribute | Value | Description |
| ---- | ---- | ---- |
| download | filename | Causes a download of the specified filename to occur if the user selects the anchor. |
| href | • URL <br>• `#id` | • Redirects the user to the URL selected. <br>• Navigates the user to the the attribute which has the correlating `id` used within the current page. |
| hreflang | language_code | Specifies the language used for the linked document. |
| media | media_query | Specifies what media/device the linked document is optimized for. |
| ping | list_of_URLs | Specifies a space-separated list of URLs to which, when the link is followed, post requests with the body ping will be sent by the browser (in the background). Typically used for tracking. |
| referrerpolicy | • no-referrer <br>• no-referrer-when-downgrade <br>• origin <br>• origin-when-cross-origin <br>• unsafe-url | Specifies which referrer to send. |
| rel | • alternate <br>• author <br>• bookmark <br>• external <br>• help <br>• license <br>• next <br>• nofollow <br>• noreferrer <br>• noopener <br>• prev <br>• search <br>• tag | • Provides a link to an alternate representation of the document (i.e. print page, translated or mirror). <br>• Provides a link to the author of the document. <br>• Permanent URL used for bookmarking. <br>• Indicates that the referenced document is not part of the same site as the current document. <br>• Provides a link to a help document. <br>• Provides a link to licensing information for the document. <br>• Provides a link to the next document in the series. <br>• Links to an unendorsed document, like a paid link ("nofollow" is used by Google, to specify that the Google search spider should not follow that link). <br>• Requires that the browser should not send an HTTP referer header if the user follows the hyperlink. <br>• Requires that any browsing context created by following the hyperlink must not have an opener browsing context. <br>• The previous document in a selection. <br>• Links to a search tool for the document. <br>• A tag (keyword) for the current document. |
| target | • `_blank` <br>• `_parent` <br>• `_self` <br>• `_top` <br>• `framename` | • Opens the document in a new window or tab. <br>• Opens the document in the same frame it was selected in (default). <br>• Opens the document in the parent frame. <br>• Opens the document in the full body of the window. <br>• Opens the document in a named frame. |
| type | media_type | Specifies the media type of the linked document. |

#### 3.1.12 Lists
Each item within any list must be included within a `<li>` `</li>` element. 
Each of these will represent one number or bullet point.
These must be contained within either an Ordered or Unordered element.

##### 3.1.12.1 Unordered `<ul>` `</ul>`
Displays the list in bullet points.

##### 3.1.12.2 Ordered `<ol>` `</ol>`
Displays the list with numbers.

#### 3.1.13 Div `<div>` `</div>`
The `<div>` tag defines a division or a section in an HTML document.
The `<div>` element is often used as a container for other HTML elements to style them with CSS or to perform certain tasks with JavaScript.
`<div>` is most likely the most used element of all HTML.

#### 3.1.14 Strong `<strong>` `</strong>`
Makes the text within bold. 
Technically speaking, the browser applies the CSS style `font-weight: bold` to the text.

#### 3.1.15 Underline `<u>` `</u>`
With the `<u>` element, the browser applies the CSS of `text-decoration: underline;` to the element.
This causes the text to be underlined.

#### 3.1.16 Emphasis `<em>` `</em>`
This displays text as italicized, as the browser applies the CSS of `font-style: italic;` to the element.

#### 3.1.17 Strikethrough `<s>` `</s>`
With the `<s>` tag, the browser applies the CSS of `text-decoration: line-through;` to the element.

#### 3.1.18 Horizontal Line `<hr>`
Creates a horizontal line across the width of its containing element.

#### 3.1.19 Section `<section>` `</section>`
Used to group thematically related content. 
Otherwise identical to a `<div>`, but the content within has some sort of relational value.

#### 3.1.20 Article `<article>` `</article>`
Groups independent, self-contained content.
If the contents could appear simply in an RSS feed, then this is the correct element to use. 
Otherwise, a `<section>`, `<div>`, or other dividing element would be more appropriate.

#### 3.1.21 Nav `<nav>` `</nav>`
The `<nav>` element has the embedded landmark feature for easy screen reader navigation.
This tag is meant to wrap around the main navigation links in your page.

If there are repeated site links at the bottom of the page, it isn't necessary to markup those with a nav tag as well.
Using a `<footer>` is sufficient for these types of situations.

#### 3.1.22 Audio `<audio>` `</audio>`
The `<audio>` element gives semantic meaning when it wraps sound or audio stream content in your markup. 

Audio content also needs a text alternative to be accessible to people who are deaf or hard of hearing. 
This can be done with nearby text on the page or a link to a transcript.

The `controls` attribute adds audio controls, like play, pause, and volume.
The `<source>` element allows you to specify alternative audio files which the browser may choose from. 

The browser will use the first recognized format.
The text between the `<audio>` and `</audio>` tags will only be displayed in browsers that do not support the `<audio>` element.

##### 3.1.22.1 Controls `controls`
The `controls` attribute is a boolean attribute.
When present, it specifies that audio controls should be displayed.

Audio controls should include:

* Play
* Pause
* Seeking
* Volume

#### 3.1.23 Source `<source>`
The `<source>` tag is used to specify multiple media resources for media elements, such as `<video>`, `<audio>`, and `<picture>`.

The `<source>` tag allows you to specify alternative video/audio/image files which the browser may choose from, based on its media type, codec support, or media query.

### 3.2 Forms and Interactive Elements
#### 3.2.1 Form `<form>` `</form>`
Creates an HTML form for user input.
Can contain one or more of the following form-type elements:

* `<input>`
* `<textarea>`
* `<button>`
* `<select>`
* `<option>`
* `<optgroup>`
* `<fieldset>`
* `<label>`
* `<output>`

##### 3.2.1.1 Attributes
| Attribute | Value | Description |
| ---- | ---- | ---- |
| accept-charset | character_set | Specifies the character encodings that are to be used for the form submission. |
| action | URL | Specifies where to send the form-data when a form is submitted. |
| autocomplete | • on <br>• off | Specifies whether a form should have autocomplete on or off. |
| enctype | • application/x-www-form-urlencoded <br>• multipart/form-data <br>• text/plain | Specifies how the form-data should be encoded when submitting it to the server (only for method="post"). |
| method | • get <br>• post | Specifies the HTTP method to use when sending form-data. |
| name | text | Specifies the name of a form. |
| novalidate | novalidate | Specifies that the form should not be validated when submitted. |
| target | • `_blank` <br>• `_self` <br>• `_parent` <br>• `_top` | Specifies where to display the response that is received after submitting the form. |

#### 3.2.2 Input `<input>`
Will allow the viewer to perform submit some type of input/interaction with the site.

##### 3.2.2.1 Attributes
Important note: the `value` attribute is crucial for submitting data, as it helps to more verbosely communicate which input from a larger selection was used.

| Attribute | Value | Description |
| ---- | ---- | ---- |
| accept | • file_extension <br>• audio/* <br>• video/* <br>• image/* <br>• media_type | Specifies a filter for what file types the user can pick from the file input dialog box (only for type="file"). |
| alt | text | Specifies an alternate text for images (only for type="image"). |
| autocomplete | • on <br>• off | Specifies whether an `<input>` element should have autocomplete enabled. |
| autofocus | autofocus | Specifies that an `<input>` element should automatically get focus when the page loads. |
| checked | checked | Specifies that an `<input>` element should be pre-selected when the page loads (for type="checkbox" or type="radio"). |
| dirname | inputname.dir | Specifies that the text direction will be submitted |
| disabled | disabled | Specifies that an `<input>` element should be disabled |
| form | form_id | Specifies the form the `<input>` element belongs to |
| formaction | URL | Specifies the URL of the file that will process the input control when the form is submitted (for type="submit" and type="image") |
| formenctype | • application/x-www-form-urlencoded <br>• multipart/form-data <br>• text/plain | Specifies how the form-data should be encoded when submitting it to the server (for type="submit" and type="image"). |
| formmethod | • get <br>• post | Defines the HTTP method for sending data to the action URL (for type="submit" and type="image"). |
| formnovalidate | formnovalidate | Defines that form elements should not be validated when submitted |
| formtarget | • `_blank` <br>• `_self` <br>• `_parent` <br>• `_top` <br>• `framename` | Specifies where to display the response that is received after submitting the form (for type="submit" and type="image"). |
| height | pixels | Specifies the height of an `<input>` element (only for type="image"). |
| list | `datalist_id` | Refers to a `<datalist>` element that contains pre-defined options for an `<input>` element. |
| max | • number <br>• date | Specifies the maximum value for an `<input>` element. |
| maxlength | number | Specifies the maximum number of characters allowed in an `<input>` element. |
| min | • number <br>• date | Specifies a minimum value for an `<input>` element. |
| minlength | number | Specifies the minimum number of characters required in an `<input>` element. |
| multiple | multiple | Specifies that a user can enter more than one value in an `<input>` element. |
| name | text | Specifies the name of an `<input>` element. |
| pattern | regexp | Specifies a regular expression that an `<input>` element's value is checked against. |
| placeholder | text | Specifies a short hint that describes the expected value of an `<input>` element. |
| readonly | readonly | Specifies that an input field is read-only. |
| required | required | Specifies that an input field must be filled out before submitting the form. |
| size | number | Specifies the width, in characters, of an `<input>` element. |
| src | URL | Specifies the URL of the image to use as a submit button (only for type="image"). |
| step | • number <br>• any | Specifies the interval between legal numbers in an input field. |
| type | • button <br>• checkbox <br>• color <br>• date <br>• datetime-local <br>• email <br>• file <br>• hidden <br>• image <br>• month <br>• number <br>• password <br>• radio <br>• range <br>• reset <br>• search <br>• submit <br>• tel <br>• text <br>• time <br>• url <br>• week | Specifies the type `<input>` element to display. |
| value | text | Specifies the value of an `<input>` element. |
| width | pixels | Specifies the width of an `<input>` element (only for type="image"). |

#### 3.2.3 Button `<button>` `</button>`
As its name implies, it will present interactable buttons on a page.

##### 3.2.3.1 Attributes
| Attribute | Value | Description |
| ---- | ---- | ---- |
| autofocus | autofocus | Specifies that a button should automatically get focus when the page loads. |
| disabled | disabled | Specifies that a button should be disabled. |
| form | form_id | Specifies which form the button belongs to. |
| formaction | URL | Specifies where to send the form-data when a form is submitted. Only for `type="submit"`. |
| formenctype | • application/x-www-form-urlencoded <br>• multipart/form-data <br>• text/plain | Specifies how form-data should be encoded before sending it to a server. Only for `type="submit"`. |
| formmethod | • get <br>• post | Specifies how to send the form-data (which HTTP method to use). Only for `type="submit"`. |
| formnovalidate | formnovalidate | Specifies that the form-data should not be validated on submission. Only for `type="submit"`. |
| formtarget | • `_blank` <br>• `_self` <br>• `_parent` <br>• `_top` <br>• `framename` | Specifies where to display the response after submitting the form. Only for `type="submit"`. |
| name | name | Specifies a name for the button. |
| type | • button <br>• reset <br>• submit | Specifies the type of button. |
| value | text | Specifies an initial value for the button. |

#### 3.2.4 Label `<label>` `</label>`
The `<label>` tag defines a label for several elements:

* `<input type="color">`
* `<input type="date">`
* `<input type="datetime-local">`
* `<input type="email">`
* `<input type="file">`
* `<input type="month">`
* `<input type="number">`
* `<input type="password">`
* `<input type="radio">`
* `<input type="range">`
* `<input type="search">`
* `<input type="tel">`
* `<input type="text">`
* `<input type="time">`
* `<input type="url">`
* `<meter>`
* `<progress>`
* `<select>`
* `<textarea>`

Proper use of labels with the elements above will benefit:

* Screen reader users (will read out the label when the user is focused on the element)
* Users who have difficulty clicking on very small regions (such as checkboxes) - because when a user clicks the text within the `<label>` element, it toggles the input (this increases the hit area). 

The `for` attribute of the `<label>` tag should be equal to the `id` attribute of the related element to bind them together. 

##### 3.2.4.1 Attributes
| Attribute | Value | Description |
| ---- | ---- | ---- |
| for | element_id | Specifies which form element a label is bound to. |
| form | form_id | Specifies which form the label belongs to. |

## 4 Other Important Features
### 4.1 Organizational Attributes
#### 4.1.1 Class `class=""`
While not an element, this attribute is essential for aiding in the application of CSS. 
CSS can easily target classes to apply thematic changes to many different objects in a page in a manner more independent of the elements chosen.

This helps to add a great deal of customization and efficiency to the appearance of a website.

#### 4.1.2 ID `id=""`
IDs also aid in using CSS to quickly style a single element.
JavaScript is also able to quickly select and modify specific elements.

Best practice is to have IDs be unique (although this is not enforced by the browser).
As such, try not to assign the same ID to multiple elements.