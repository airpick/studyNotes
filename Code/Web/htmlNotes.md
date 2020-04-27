# HTML Notes
## Table of Contents
xxx

## Overview
A quick and dirty reference page for all things HTML5. 
Study is being performed concurrently on [Free Code Camp](https://www.freecodecamp.org/).

## Elements
Any object in an html document is an element. 
Elements require one or more tags (depending on whether they require a closing tag) in order to function correctly.

ex: <p>This is a paragraph section.</p>

### List of Elements
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
Lays anchor on a page which other things can be attached to, such as hyperlinks.

##### Attributes
| Attribute | Value | Description |
| ---- | ---- | ---- |
| download | filename | Causes a download of the specified filename to occur if the user selects the anchor. |
| href | URL | Redirects the user to the URL selected. |
| hreflang | language_code | Specifies the language used for the linked document. |
| media | media_query | Specifies what media/device the linked document is optimized for. |
| ping | list_of_URLs | Specifies a space-separated list of URLs to which, when the link is followed, post requests with the body ping will be sent by the browser (in the background). Typically used for tracking. |
| referrerpolicy | no-referrer
no-referrer-when-downgrade
origin
origin-when-cross-origin
unsafe-url | Specifies which referrer to send. |
| rel | alternate
author
bookmark
external
help
license
next
nofollow
noreferrer
noopener
prev
search
tag | Specifies the relationship between the current document and the linked document. |
| target | _blank
_parent
_self
_top
framename | Specifies where to open the linked document. |
| type | media_type | Specifies the media type of the linked document. |