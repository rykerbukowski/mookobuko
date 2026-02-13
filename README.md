# 🌍 mookobuko — Meg & Ryker's World Trip

A custom-built travel blog powered by [Astro](https://astro.build).

## 🚀 Quick Start

```bash
# Install dependencies
npm install

# Start dev server (http://localhost:4321)
npm run dev

# Build for production
npm run build

# Preview production build
npm run preview
```

## 📁 Project Structure

```
mookobuko/
├── public/              # Static assets (images, favicon)
├── src/
│   ├── components/      # Reusable UI components
│   │   ├── Hero.astro        # Animated starfield hero
│   │   ├── RouteMap.astro    # Horizontal travel route
│   │   ├── Ticker.astro      # Fun facts ticker
│   │   ├── StoryCard.astro   # Blog post preview card
│   │   ├── Stats.astro       # Animated counter stats
│   │   └── About.astro       # About section
│   ├── content/
│   │   └── posts/       # ⭐ YOUR BLOG POSTS (Markdown)
│   │       ├── taiwan.md
│   │       ├── sapporo.md
│   │       ├── tokyo.md
│   │       └── minimoon.md
│   ├── layouts/
│   │   └── BaseLayout.astro  # Shared layout (nav, footer)
│   ├── pages/
│   │   ├── index.astro       # Homepage
│   │   └── posts/[slug].astro # Dynamic post pages
│   ├── styles/
│   │   └── global.css        # Global styles & design tokens
│   └── content.config.ts     # Content collection schema
├── astro.config.mjs
├── package.json
└── tsconfig.json
```

## ✍️ Adding a New Blog Post

1. Create a new `.md` file in `src/content/posts/`:

```markdown
---
title: "Thailand Adventures"
subtitle: "Muay Thai, Street Food & Island Hopping"
date: 2026-03-01
location: "Thailand"
locationEmoji: "🇹🇭"
heroImage: "/images/thailand-hero.jpg"
heroColor: "#FF3CAC"
excerpt: "Your short excerpt here..."
tags:
  - label: "🥊 Muay Thai"
    color: "#FF6B6B"
  - label: "🍜 Street Food"
    color: "#FFD93D"
status: published
---

Write your blog post content here in Markdown!

## Section Heading

Regular paragraph text. **Bold** and *italic* work.

![Alt text](/images/your-photo.jpg)
```

2. That's it! The homepage and post page are generated automatically.

## 🎨 Customizing

### Update the Route Map
Edit `src/components/RouteMap.astro` — the `stops` array at the top.

### Update Stats
Edit `src/components/Stats.astro` — the `stats` array at the top.

### Update Fun Facts Ticker
Edit `src/components/Ticker.astro` — the `facts` array at the top.

### Colors & Design Tokens
Edit `src/styles/global.css` — the `:root` CSS variables.

## 🌐 Deploying

### Netlify (recommended — free)
1. Push your project to GitHub
2. Go to [netlify.com](https://netlify.com) and connect your repo
3. Build settings: Build command = `npm run build`, Publish directory = `dist`
4. Add your custom domain `mookobuko.com`

### Vercel (also free)
1. Push to GitHub
2. Import at [vercel.com](https://vercel.com)
3. It auto-detects Astro — just deploy!

## 📸 Images

For best performance, put images in `public/images/` and reference them as `/images/filename.jpg` in your posts. You can also use external URLs (like your current mookobuko.com images).

For even better optimization, you can move images to `src/assets/` and use Astro's built-in `<Image>` component for automatic optimization.

## 💡 Tips

- Use `status: draft` in frontmatter to hide a post from the homepage
- The homepage auto-sorts posts by date (newest first)
- All animations are CSS-only for maximum performance
- The site generates as static HTML — blazing fast, great SEO
```
