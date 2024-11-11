import defaultTheme from 'tailwindcss/defaultTheme';
import forms from '@tailwindcss/forms';

/** @type {import('tailwindcss').Config} */
export default {
    content: [
        './vendor/laravel/framework/src/Illuminate/Pagination/resources/views/*.blade.php',
        './storage/framework/views/*.php',
        './resources/views/**/*.blade.php',
    ],

    theme: {
        extend: {
            colors: {
                pink: {
                    500: '#D82B84'
                },
                'custom-gray': '#F3F4F6'
            },
            backgroundColor: {
                pink: {
                    500: '#D82B84'
                },
            },
            fontSize: {
                'custom-16': '16px',
                'custom-20': '20px',
            },
            fontFamily: {
                sans: ['Montserrat', 'Figtree', ...defaultTheme.fontFamily.sans],
            },
            borderRadius: {
                '6': '6px',
            }
        },
    },

    plugins: [forms],
};
