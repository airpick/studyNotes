# HTML Notes
## Table of Contents
xxx

## Overview
A quick and dirty reference page for all things HTML5. 
Study is being performed concurrently on [Free Code Camp](https://www.freecodecamp.org/).

## Elements
Any object in an html document is an element. 
Elements require one to two tags (depending on whether they are self-closing or require a closing tag) in order to function correctly.

ex: <p>This is a paragraph section.</p>

### Elements
#### Comment `<!--` `-->`
Maybe the most important element, this allows the user to leave a comment.

#### Headers `<h#>` `</h#>`
These help to separate sections and sub-sections on a website. 
They also often link up to help provide an easy to read hierarchical display for pages with a large volume of content.

* `<h1></h1>`
* `<h2></h2>`
* `<h3></h3>`
* `<h4></h4>`
* `<h5></h5>`
* `<h6></h6>`

#### Paragraph `<p>` `</p>`
As it's name implies.

#### Header `<header>` `</header>`
Used as a container for introductory content or a set of navigation links.

#### Main `<main>` `</main>`
Used as a container for the main content of a webpage.

#### Footer `<footer>` `</footer>`
User as a container which typically contains:

* authorship info
* copyright info
* contact info
* sitemap

#### Image `<img>`
Used for each image on a webpage.
In order for the image to display, the `src` attribute must be used.

##### Attributes
* `src`: used for the image's link
* `alt`: used for the alternative text displayed when a user hovers their mouse over the image

#### Anchor `<a>` `</a>`
Lays anchor on a page which other things can be attached to, such as hyperlinks or internal references within the current page. 

##### Attributes
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

#### Lists
Each item within any list must be included within a `<li>` `</li>` element. 
Each of these will represent one number or bullet point.
These must be contained within either an Ordered or Unordered element.

##### Unordered `<ul>` `</ul>`
Displays the list in bullet points.

##### Ordered `<ol>` `</ol>`
Displays the list with numbers.

#### Input `<input>`
Will allow the viewer to perform submit some type of input/interaction with the site.

##### Attributes
| Attribute | Value | Description |
| ---- | ---- | ---- |
| accept | • file_extension <br>• audio/* <br>• video/* <br>• image/* <br>• media_type | Specifies a filter for what file types the user can pick from the file input dialog box (only for type="file"). |
| alt | text | Specifies an alternate text for images (only for type="image"). |
| autocomplete | • on <br>• off | Specifies whether an <input> element should have autocomplete enabled. |
| autofocus | autofocus | Specifies that an <input> element should automatically get focus when the page loads. |
| checked | checked | Specifies that an <input> element should be pre-selected when the page loads (for type="checkbox" or type="radio"). |
| dirname | inputname.dir | Specifies that the text direction will be submitted |
| disabled | disabled | Specifies that an <input> element should be disabled |
| form | form_id | Specifies the form the <input> element belongs to |
| formaction | URL | Specifies the URL of the file that will process the input control when the form is submitted (for type="submit" and type="image") |
| formenctype | • application/x-www-form-urlencoded <br>• multipart/form-data <br>• text/plain | Specifies how the form-data should be encoded when submitting it to the server (for type="submit" and type="image"). |
| formmethod | • get <br>• post | Defines the HTTP method for sending data to the action URL (for type="submit" and type="image"). |
| formnovalidate | formnovalidate | Defines that form elements should not be validated when submitted |
| formtarget | • `_blank` <br>• `_self` <br>• `_parent` <br>• `_top` <br>• `framename` | Specifies where to display the response that is received after submitting the form (for type="submit" and type="image"). |
| height | pixels | Specifies the height of an <input> element (only for type="image"). |
| list | datalist_id | Refers to a <datalist> element that contains pre-defined options for an <input> element. |
| max | • number <br>• date | Specifies the maximum value for an <input> element. |
| maxlength | number | Specifies the maximum number of characters allowed in an <input> element. |
| min | • number <br>• date | Specifies a minimum value for an <input> element. |
| minlength | number | Specifies the minimum number of characters required in an <input> element. |
| multiple | multiple | Specifies that a user can enter more than one value in an <input> element. |
| name | text | Specifies the name of an <input> element. |
| pattern | regexp | Specifies a regular expression that an <input> element's value is checked against. |
| placeholder | text | Specifies a short hint that describes the expected value of an <input> element. |
| readonly | readonly | Specifies that an input field is read-only. |
| required | required | Specifies that an input field must be filled out before submitting the form. |
| size | number | Specifies the width, in characters, of an <input> element. |
| src | URL | Specifies the URL of the image to use as a submit button (only for type="image"). |
| step | • number <br>• any | Specifies the interval between legal numbers in an input field. |
| type | • button <br>• checkbox <br>• color <br>• date <br>• datetime-local <br>• email <br>• file <br>• hidden <br>• image <br>• month <br>• number <br>• password <br>• radio <br>• range <br>• reset <br>• search <br>•  <br>• submit <br>• tel <br>• text <br>•  <br>• time <br>• url <br>• week | Specifies the type <input> element to display. |
| value | text | Specifies the value of an <input> element. |
| width | pixels | Specifies the width of an <input> element (only for type="image"). |

#### Form `<form>` `</form>`
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

##### Attributes
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