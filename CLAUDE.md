# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Development Commands

```bash
# Start development server with Tailwind CSS watch (recommended)
npm run dev

# Or run individually:
npm run dev:server    # Hugo server on port 1314, drafts enabled
npm run watch:css     # Tailwind CSS file watcher

# Create a new post
./bin/make-post.sh "Post Title" "tag1, tag2"
./bin/make-post.sh "Post Title" "tag1, tag2" custom-slug --dir  # With images (leaf bundle)
```

## Deployment

Pushes to `production` branch trigger GitHub Actions deployment to GitHub Pages. The workflow installs Hugo 0.124.0, runs `npm ci`, and builds with `hugo --gc --minify`.

## Architecture

**Hugo static site** with custom theme using **Tailwind CSS**.

### Content Structure
- `content/posts/` - Blog posts as Markdown with YAML frontmatter
- Simple posts: `post-slug.md` directly in posts/
- Posts with images: `post-slug/index.md` (leaf bundle) with co-located images

### Template Hierarchy
- `layouts/_default/baseof.html` - Base template with head, header, main, footer blocks
- `layouts/_default/single.html` - Individual post template
- `layouts/_default/list.html` - Post listing with tag filtering
- `layouts/partials/` - Reusable components (header, footer, head)
- `layouts/shortcodes/` - Custom shortcodes for content

### Key Shortcodes
Always use these instead of raw Markdown image syntax:
- `imgproc` - Responsive images with Hugo processing: `{{< imgproc path="image.jpg" command="resize 800x" alt="..." >}}`
- `image-modal` - Gallery-style modal images
- `callout` - Styled callout boxes
- `alert-banner` - Alert banners

### Post Frontmatter
```yaml
title: "Post Title"
date: 2024-01-15
draft: true          # Remove or set false to publish
tags: ["tag1", "tag2"]
subtitle: "Optional"
summary: "Optional"
```

Use `<!--more-->` to mark the summary cutoff point.

### Footnotes
Use standard Markdown footnote syntax (auto-numbered by Goldmark):
```markdown
Some text with a footnote[^label] and another[^other].

[^label]: Footnote content here.
[^other]: Another footnote.
```
Labels can be any descriptive string. Hugo auto-numbers based on order of appearance.

## Git Workflow

- `develop` - Development branch
- `master` - Main branch for PRs
- `production` - Triggers deployment
