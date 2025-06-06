# Personal Blog

This is the source code for my personal blog, built with [Hugo](https://gohugo.io/) and styled with [Tailwind CSS](https://tailwindcss.com/).

## Tech Stack

*   **Static Site Generator:** Hugo
*   **Styling:** Tailwind CSS
*   **Hosting:** GitHub Pages

## Content Management

Posts are located in the `content/posts` directory. Posts with images should be in their own folders (a "leaf bundle") containing an `index.md` file and any associated images. Posts without images can be placed directly in the `content/posts` directory as markdown files.

### Creating a New Post

There is a helper script in the `bin` directory to simplify post creation.

To create a new post, you can run:

```bash
./bin/make-post.sh "Your Post Title" "tag1, tag2"
```

This will create a new file `content/posts/your-post-title.md`.

To create a post with its own directory for images (a leaf bundle), use the `--dir` or `-d` flag:

```bash
./bin/make-post.sh "Your Post Title" "tag1, tag2" your-post-title --dir
```

This will create `content/posts/your-post-title/index.md`.

All new posts are created as drafts.

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
