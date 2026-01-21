# Personal Blog

This is the source code for my personal blog, built with [Hugo](https://gohugo.io/) and styled with [Tailwind CSS](https://tailwindcss.com/).

## Tech Stack

*   **Static Site Generator:** Hugo
*   **Styling:** Tailwind CSS
*   **Hosting:** GitHub Pages

## Development

```bash
# Start development server with Tailwind CSS watch (recommended)
npm run dev

# Or run individually:
npm run dev:server    # Hugo server on port 1314, drafts enabled
npm run watch:css     # Tailwind CSS file watcher
```

## Content Management

Posts are located in the `content/posts` directory. Posts with images should be in their own folders (a "leaf bundle") containing an `index.md` file and any associated images. Posts without images can be placed directly in the `content/posts` directory as markdown files.

### Creating a New Post

There is a helper script in the `bin` directory to simplify post creation.

```bash
./bin/make-post.sh "Your Post Title" "tag1, tag2"
./bin/make-post.sh "Your Post Title" "tag1, tag2" custom-slug --dir  # With images (leaf bundle)
```

All new posts are created as drafts.

### Post Frontmatter

```yaml
title: "Post Title"
date: 2024-01-15
draft: true          # Remove or set false to publish
featured: true       # Show on homepage (optional)
tags: ["tag1", "tag2"]
subtitle: "Optional"
summary: "Optional"
```

Use `<!--more-->` to mark the summary cutoff point.

### Footnotes

Use standard Markdown footnote syntax (auto-numbered by Hugo/Goldmark):

```markdown
Some text with a footnote[^label] and another[^other].

[^label]: Footnote content here.
[^other]: Another footnote.
```

Labels can be any descriptive string. Hugo auto-numbers based on order of appearance.

### Handling Images

To ensure images are processed correctly for optimal performance and display properly in list views, **always** use one of the custom shortcodes instead of standard Markdown syntax for images.

*   `imgproc`: For standard responsive images.
*   `image-modal`: For images that open in a gallery-style modal.

**Example using `imgproc`:**

```html
{{< imgproc path="my-image.jpg" command="resize 800x" alt="A descriptive alt text" >}}
```

This shortcode finds the image within the post's bundle and processes it according to the command.

## Deployment

Pushes to the `production` branch trigger GitHub Actions deployment to GitHub Pages.
