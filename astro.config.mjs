import { defineConfig } from 'astro/config';
import starlight from '@astrojs/starlight';

export default defineConfig({
  site: 'https://dpuiu.github.io',
  base: '/ccb.jhu.edu',

  integrations: [
    starlight({
      title: 'CCB',

      social: [
        {
          icon: 'github',
          label: 'GitHub',
          href: 'https://github.com/dpuiu/ccb.jhu.edu',
        },
      ],

      sidebar: [
        {
          label: 'People',
          items: [{ autogenerate: { directory: 'people' } }],
        },
        {
          label: 'Software',
          items: [{ autogenerate: { directory: 'software' } }],
        },
      ],
    }),
  ],
});
