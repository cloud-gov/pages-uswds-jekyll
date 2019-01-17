# Federalist + U.S. Web Design System + Jekyll

This [Jekyll theme](https://jekyllrb.com/docs/themes/) is developed using  [U.S. Web Design System v 2.0](https://v2.designsystem.digital.gov) and is focused on providing developers a reference implementation and starter kit for Federalist sites.

If you're interested in using Gatsby for your site, checkout 


**WARNING** This is experimental.

This project strives to be compliant with requirements set by [21st Century IDEA Act](https://www.nextgov.com/it-modernization/2018/12/congress-votes-better-government-websites-digital-services/153478/). 

- &#9745; Provide a consistent experience and appearance.
- &#9745; Be accessible to individuals with disabilities (508 complinace).
- &#9744; Provide search function 
- &#9745; Fully functional and usable on common mobile devices.


This project assumes experience with Ruby and Javascript.

## Key Functionality
This repository contains the following examples and functionality:
 
*Complete:*  Publish blog posts, press releases, announcements, etc. To modify this code, check out `news/index.html`, which manages how the posts are listed. You should then check out `_layouts/post.html` to see how individual posts are structured.

*Complete:*  Publish single one-off pages. Instead of creating lots of folders throughout the root directory, you should put single pages in `_pages` folder and change the `permalink` at the top of each page. Use sub-folders only when you really need to.

*Complete:*  Publish lists (for example: job listings, links, references), you can use the template `_layouts/list.html`. Just create a file in you `_pages` folder with the following options:

```
---
title: Example Page
layout: list
permalink: /jobs
datafile: jobs
---
```

The reference to `datafile` referers to the name of the file in `_data/jobs.yml` and loops through the values. Feel free to modify this as needed.


*In Progress:* Searchable site. Integration with [`jekyll_pages_api_search`](https://github.com/18F/jekyll_pages_api_search) is in progress, but you can setup [search.gov](https://search.gov).



## How to edit
- We try to keep configuration options to a minimum so you can easily remove functionality, but you can review `_config.yml` to see the options that are available to you. There are a few values on top that you **need** to change. They make reference to the agency name and contact information. The advanced options at the bottom should be changed only if you know what you know what you're doing.
- Do not edit files from the Web Design System directly. That means that `assets/css/uswds.css` and `assets/js/uswds.js` are offlimits. This will make it easier for you to update the Web Design System safely. Instead, you should either 1) create new files in `assets/js/app.js` and `assets/css/app.css` that overide USWDS functionality 2) Or you can create a folder called `src/`, add your custom Javascript and CSS, and include a [build process](https://webpack.js.org/concepts/configuration/#simple-configuration) that outputs compressed code into `assets/js/bundle.js` and `assets/css/bundle.css`. You can then include the compiled code in `_includes/header.html`.
- You will need to edit files in `_includes/`, which include the primary menu, side navigation, logos etc
- `index.html` may not require much editing, depending on how you customize `hero.html` and `highlights.html`.
- `_layouts/` may require the least amount of editing since they are primiarly responsible for printing the content.
- `news/index.html` can be edited, but be careful. It will the pagination system for the posts. If you do edit it, be prepared to edit `_config.yml`. You should also familiarize yourself with [jekyll-paginate-v2](https://github.com/sverrirs/jekyll-paginate-v2)
- Non-developers should focus only on `_posts` and `_pages`

## Known Issues
- The search gem is not compatible with latest version of Jekyll. More information [here](https://github.com/18F/jekyll_pages_api_search/pull/41)
- To set the underline indicator (`usa-current`) on the top menu, we need Javascript to match the routing. 

## Installation
`git clone https://github.com/18F/federalist-uswds-jekyll`
`cd federalist-uswds-jekyll`
`npm install` # this installs the latest version of the web design system
`bundle install` # this installs the required Ruby library
`bundle exec jekyll serve`


## Technologies you should be familiarize yourself with

- [Jekyll](https://jekyllrb.com/docs/assets/)
- [Front Matter](https://jekyllrb.com/docs/frontmatter) - The top of each page/post includes keywords within `--` tags. This is meta data that helps Jekyll build the site, but you can also use it to pass custom variables.
