import { defineConfig } from 'astro/config';

export default defineConfig({
  site: 'https://mookobuko.com',
  markdown: {
    shikiConfig: {
      theme: 'github-dark',
    },
  },
});
