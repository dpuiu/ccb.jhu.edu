// @ts-check
import { defineConfig } from 'astro/config';
import starlight from '@astrojs/starlight';

// https://astro.build/config
export default defineConfig({
	integrations: [
		starlight({
			title: 'CCB',
			social: [{ icon: 'github', label: 'GitHub', href: 'https://github.com/withastro/starlight' }],
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
