import { defineConfig } from 'astro/config';
import starlight from '@astrojs/starlight';

export default defineConfig({

  integrations: [
    starlight({
      title: 'CCB',

      tableOfContents: false,
      social: [
        {
          icon: 'github',
          label: 'GitHub',
          href: 'https://github.com/dpuiu/ccb.jhu.edu',
        },
      ],

      sidebar: [
       {
          label: 'About',
          items: [{ autogenerate: { directory: 'about' } }],
        },
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
