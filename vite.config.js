import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';
import { viteStaticCopy } from 'vite-plugin-static-copy';

export default defineConfig({
    plugins: [
        laravel({
            input: [
                'resources/assets/css/app.css',
                'resources/assets/js/app.js',
                'resources/assets/js/participant.js',
            ],
            refresh: true,
        }),
        viteStaticCopy({
            targets: [
                {
                    src: 'resources/assets/images',
                    dest: 'assets'
                },
                {
                    src: 'resources/assets/js',
                    dest: 'assets',
                }
            ],
            watch: {
                reloadPageOnChange: true 
            }
        })
    ],
    /* server: {
        host: 'loams.test',
        https: true,
        cors: true,
        hmr: {
            host: 'loams.test'
        }
    } */
});
