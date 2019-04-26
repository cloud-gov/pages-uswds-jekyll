<!--
  Federalist recommends you use Continuous Integration to automatically test
  and validate any new changes to your site. CircleCI is free for open source
  projcets. You should replace this badge with your own.

  https://circleci.com/
-->
[![CircleCI](https://circleci.com/gh/18F/federalist-uswds-jekyll.svg?style=svg)](https://circleci.com/gh/18F/federalist-uswds-jekyll)

# Federalist + U.S. Web Design System + Jekyll

This [Jekyll theme](https://jekyllrb.com/docs/themes/) is developed using the [U.S. Web Design System v 2.0](https://v2.designsystem.digital.gov) and is focused on providing developers a starter kit and reference implementation for Federalist websites.

This code uses the [Jekyll](https://jekyllrb.com) site engine and built with Ruby. If you prefer to use Javascript, check out [federalist-uswds-gatsby](https://github.com/18F/federalist-uswds-gatsby), which uses [Gatsby](https://gatsbyjs.org) site engine.

This project assumes that you are comfortable editing source code. If you prefer to launch a website without editing any source code, checkout [uswds-jekyll](https://github.com/18F/uswds-jekyll), which allows you to change the layout and content with configuration files.

This project strives to be compliant with requirements set by [21st Century IDEA Act](https://www.meritalk.com/articles/senate-passes-idea-act/). The standards require that a website or digital service:

- is accessible to individuals with disabilities;
- has a consistent appearance;
- does not duplicate any legacy websites (the legislation also requires agencies to ensure that legacy websites are regularly reviewed, removed, and consolidated);
- has a search function;
- uses an industry standard secure connection;
- “is designed around user needs with data-driven analysis influencing management and development decisions, using qualitative and quantitative data to determine user goals, needs, and behaviors, and continually test the website, web-based form, web-based application, or digital service to ensure that user needs are addressed;”
- allows for user customization; and
- is mobile-friendly.

## Key Functionality
This repository contains the following examples and functionality:
 
✅  Publish blog posts, press releases, announcements, etc. To modify this code, check out `blog/index.html`, which manages how the posts are listed. You should then check out `_layouts/post.html` to see how individual posts are structured.

✅ Publish single one-off pages. Instead of creating lots of folders throughout the root directory, you should put single pages in `_pages` folder and change the `permalink` at the top of each page. Use sub-folders only when you really need to.

✅  Publish data (for example: job listings, links, references), you can use the template `_layouts/data.html`. Just create a file in you `_pages` folder with the following options:

```
---
title: Example Page
layout: data
permalink: /jobs
datafile: jobs
---
```

The reference to `datafile` referers to the name of the file in `_data/jobs.yml` and loops through the values. Feel free to modify this as needed.

✅  There are two different kinds of `pages`, one does not have a side bar navigation, and the other uses `_includes/sidenav.html`. You can enable this option by adding `sidenav: true` to your page front matter.

```
---
title: Example Page with Sidebar
layout: page
sidenav: true
permalink: /example-page-with-sidebar
---
```


✅ Enable search with [Search.gov](https://search.gov) by adding option to `_config.yml`. 


## How to edit
- We try to keep configuration options to a minimum so you can easily remove functionality, but you can review `_config.yml` to see the options that are available to you. There are a few values on top that you **need** to change. They make reference to the agency name and contact information. The advanced options at the bottom should be changed only if you know what you know what you're doing.
- Do not edit files in the `assets/` folder. This folder is reserved for serving assets once the sites is compiled. If you want add your own custom code, add and edit files in `src/`, ideally mirroring the `assets/` folder structure. This will keep the code repository small and not include unneccessary files. 
- If you look at `package.json` you will see that the `npm run federalist` command will copy the contents from `src/` and move it over to `assets/` folder during the build process. If you want more advanced functionality, you should look into using [Webpack](https://webpack.js.org/concepts/configuration/).
- Do not edit files in the `_site/` folder. These files are automatically generated and changes you make there will be destroyed.
- You will most certainly need to edit files in `_includes/`, which include the primary menu, side navigation, logos etc
- `index.html` may not require much editing, depending on how you customize `hero.html` and `highlights.html`.
- `_layouts/` may require the least amount of editing of all the files since they are primarily responsible for printing the content.
- `blog/index.html` can be edited, but be careful. It will impact the pagination system for the posts. If you do edit the file, be prepared to edit `_config.yml`. You should also familiarize yourself with [jekyll-paginate-v2](https://github.com/sverrirs/jekyll-paginate-v2)
- Non-developers should focus only on `_posts` and `_pages`


## Installation

Clone the repository.

    $ git clone https://github.com/18F/federalist-uswds-jekyll
    $ cd federalist-uswds-jekyll

Install the Node.js dependencies.

    $ npm install

Build the site.

    $ npm run build

Run the site locally.

    $ npm start

Open your web browser to [localhost:4000](http://localhost:4000/) to view your
site.

After you make changes, be sure to run the tests.

    $ npm test

Note that when built by Federalist, `npm run federalist` is used instead of the
`build` script.


## Technologies you should be familiarize yourself with

- [Jekyll](https://jekyllrb.com/docs/) - The primary site engine that builds your code and content.
- [Front Matter](https://jekyllrb.com/docs/frontmatter) - The top of each page/post includes keywords within `--` tags. This is meta data that helps Jekyll build the site, but you can also use it to pass custom variables.
- [U.S. Web Design System v 2.0](https://v2.designsystem.digital.gov) 
- [Jekyll Search](https://github.com/18F/jekyll_pages_api_search/)


## Contributing

See [CONTRIBUTING](CONTRIBUTING.md) for additional information.

## Public domain

This project is in the worldwide [public domain](LICENSE.md). As stated in [CONTRIBUTING](CONTRIBUTING.md):

> This project is in the public domain within the United States, and copyright
> and related rights in the work worldwide are waived through the [CC0 1.0
> Universal public domain dedication](https://creativecommons.org/publicdomain/zero/1.0/).
>
> All contributions to this project will be released under the CC0 dedication.
> By submitting a pull request, you are agreeing to comply with this waiver of
> copyright interest.
