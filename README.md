# Personal Blog

This is the source code for my personal blog, built with [Hugo](https://gohugo.io/) and styled with [Tailwind CSS](https://tailwindcss.com/).

## Tech Stack

*   **Static Site Generator:** Hugo
*   **Styling:** Tailwind CSS
*   **Hosting:** GitHub Pages

## Content Management

Posts are located in the `content/posts` directory. Posts with images should be in their own folders (a "leaf bundle") containing an `index.md` file and any associated images. Posts without images can be placed directly in the `content/posts` directory as markdown files.

### Creating a New Post

1.  Create a new directory: `content/posts/my-new-post/`
2.  Add an `index.md` file with front matter:
    ```markdown
    ---
    title: "My New Post"
    date: 2024-08-01
    tags: ["some-tag", "another-tag"]
    ---

    Your content here.
    ```
3.  Place images inside the `content/posts/my-new-post/` directory.

### Handling Images

To ensure images are processed correctly for optimal performance and display properly in list views, **always** use one of the custom shortcodes instead of standard Markdown syntax for images.

*   `imgproc`: For standard responsive images.
*   `image-modal`: For images that open in a gallery-style modal.

**Example using `imgproc`:**

```html
{{< imgproc path="my-image.jpg" command="resize 800x" alt="A descriptive alt text" >}}
```

This shortcode finds the image within the post's bundle and processes it according to the command. Using this method is essential for images to appear on post preview cards (e.g., on the `/posts` page).

## Development

To run the site locally, you need to have Hugo installed.

```bash
# Serve the site with live reload
hugo -D serve
```

The site will be available at `http://localhost:1313`.
