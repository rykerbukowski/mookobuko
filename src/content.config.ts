import { defineCollection, z } from 'astro:content';

const posts = defineCollection({
  type: 'content',
  schema: z.object({
    title: z.string(),
    subtitle: z.string().optional(),
    date: z.date(),
    location: z.string(),
    locationEmoji: z.string(),
    heroImage: z.string(),
    heroColor: z.string().default('#FF6B6B'),
    excerpt: z.string(),
    tags: z.array(z.object({
      label: z.string(),
      color: z.string().default('#FF6B6B'),
    })),
    gallery: z.array(z.string()).optional(),
    status: z.enum(['published', 'draft']).default('published'),
  }),
});

export const collections = { posts };
