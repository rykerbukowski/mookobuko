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
    heroColor: z.string(),
    excerpt: z.string(),
    tags: z.array(z.object({
      label: z.string(),
      color: z.string(),
    })),
    status: z.string(),
  }),
});

export const collections = { posts };
