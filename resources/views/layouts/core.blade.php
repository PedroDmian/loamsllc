<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-toast-plugin/1.3.2/jquery.toast.min.css" integrity="sha512-wJgJNTBBkLit7ymC6vvzM1EcSWeM9mmOu+1USHaRBbHkm6W9EgM0HY27+UtUaprntaYQJF75rc8gjxllKs5OIQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-toast-plugin/1.3.2/jquery.toast.min.js" integrity="sha512-zlWWyZq71UMApAjih4WkaRpikgY9Bz1oXIW5G0fED4vk14JjGlQ1UmkGM392jEULP8jbNMiwLWdM8Z87Hu88Fw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!-- Scripts -->
    @vite(['resources/assets/css/app.css', 'resources/assets/js/app.js'])
</head>

<body class="bg-gray-100">
    <header class="py-6 header fixed w-full z-50 to-blue-500" id="header">
        <div class="container mx-auto flex flex-wrap items-center justify-between px-4">
            <h1 class="text-white text-custom-20 font-bold">LOAMS LLC</h1>
    
            <!-- Botón del menú de hamburguesa -->
            <div class="md:hidden">
                <button id="menu-button" class="text-white focus:outline-none">
                    <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16m-7 6h7"></path>
                    </svg>
                </button>
            </div>
    
            <nav class="hidden md:block w-full md:w-auto text-center md:text-right">
                <ul class="flex flex-col md:flex-row md:space-x-6 space-y-4 md:space-y-0">
                    <li class="md:mr-8"><a href="#how-we-work" class="text-white text-base">HOW WE WORK</a></li>
                    <li class="md:mr-8"><a href="#steps" class="text-white text-base">STEPS</a></li>
                    <li class="md:mr-8"><a href="#participate" class="text-white bg-pink-500 py-2 px-4 rounded-6 hover:bg-pink-600">PARTICIPATE</a></li>
                    <li class="md:mr-8"><a href="#disclaimer" class="text-white text-base">LEGAL DISCLAIMER</a></li>
                </ul>
            </nav>
        </div>
    
        <div id="mobile-menu" class="md:hidden hidden">
            <nav class="text-white">
                <ul class="flex flex-col space-y-4 p-4">
                    <li><a href="#how-we-work" class="text-base">HOW WE WORK</a></li>
                    <li><a href="#steps" class="text-base">STEPS</a></li>
                    <li><a href="#participate" class="text-base bg-pink-500 py-2 px-4 rounded-6 hover:bg-pink-600">PARTICIPATE</a></li>
                    <li><a href="#disclaimer" class="text-base">LEGAL DISCLAIMER</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <main class="overflow-x-hidden">
        {{ $slot }}
    </main>

    @stack('scripts')
</body>
</html>
