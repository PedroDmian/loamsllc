<x-core-layout>
    <div class="loader-content">
        <div>
            <div class="custom-loader"></div>

            <div>
                <h1 style="font-weight: bold; margin-top: 20px;">
                    Loader
                </h1>
            </div>
        </div>
    </div>

    <!-- Hero Section -->
    <section class="bg-gradient-to-r from-purple-500 to-blue-500 text-white py-12 w-full h-[90vh] md:h-[93vh] flex items-center relative z-100" id="section-presentation">
        <div class="absolute top-0 left-1/4 sm:left-1/3">
            <img src="{{ asset('build/assets/images/ball_blue.png') }}" alt="" srcset="">
        </div>

        <div class="absolute top-44 sm:top-44 lg:top-1/3 left-10 sm:left-0 lg:left-44 opacity-30 md:opacity-100 blur-sm md:blur-none">
            <img src="{{ asset('build/assets/images/ball_green.png') }}" alt="" srcset="">
        </div>

        <div class="absolute top-3 translate-x-1/4 sm:end-9">
            <img src="{{ asset('build/assets/images/dls_one.png') }}" alt="" srcset="">
        </div>

        <div class="container mx-auto text-center px-4 z-10" id="tap-one">
            <h2 class="text-4xl sm:text-5xl font-bold">Participate now!</h2>
            <div class="flex">
                <div class="bg-white line-participant line-participant-active"></div>
                <div class="bg-white line-participant"></div>
            </div>
            <p class="text-base sm:text-lg mt-6">Choose your favorite game, you can choose one or both!</p>
            
            <div class="block">
                <div class="flex justify-center mt-10">
                    @foreach ($data->games as $game)
                        <div class="bg-white p-6 rounded-lg shadow-lg text-center box-step flex items-center flex-wrap mr-5 relative">
                            <input type="checkbox" name="game-{{ $game->id }}" id="game-{{ $game->id }}" value="{{ $game->name }}" data-image="{{ $game->image }}" data-id="{{ $game->id }}" data-price="{{ $game->price }}" class="absolute top-5 right-5 game-checkbox">
                            <label for="game-{{ $game->id }}">
                                <div class="w-full text-center">
                                    <img src="{{ $game->image }}" alt="" class="m-auto">
                                </div>
                                
                                <div class="w-full">
                                    <p class="mt-4 text-white text-lg font-bold">
                                        {{ $game->name }}
                                    </p>
                                </div>
                            </label>
                        </div>
                    @endforeach
                </div>

                <div class="mt-24">
                    <div>
                        <button 
                            class="text-white uppercase font-bold bg-pink-500 py-2 px-10 rounded-6 hover:bg-pink-600" 
                            type="button"
                            id="btn-next"
                        >
                            Next
                        </button>
                    </div>

                    <div class="mt-3">
                        <a class="text-white py-2 px-10 rounded-6 mt-3" href="{{ route('landing.home') }}">
                            Cancel
                        </a>
                    </div>
                </div>
            </div>

        </div>
        
        <div class="container mx-auto text-center px-4 z-10 hidden" id="tap-two">
            <h2 class="text-4xl sm:text-5xl font-bold">Participate now!</h2>
            <div class="flex">
                <div class="bg-white line-participant line-participant-active"></div>
                <div class="bg-white line-participant"></div>
            </div>
            <p class="text-base sm:text-lg mt-10">Choose   your quantity of unique SET(S), using the (+) or (-) to increase or decrease.</p>
            <p class="text-base sm:text-lg mt-1">Each recommended UNIQUE set for you incurs only $1 consultation fee.</p>
            
            <div class="block">
                <div class="flex justify-center mt-10 content-center">
                    <div class="block w-9/12" id="container-games">
                    
                    </div>
                </div>

                <div class="mt-24">
                    <div class="mb-7">
                        <p class="text-center font-bold">
                            Total: $ <span id="total_price">{{ number_format(0, 2) }}</span> usd
                        </p>
                    </div>

                    <div class="block">
                        <div class="flex justify-center mt-10 content-center">
                            <div class="mb-5 bg-white p-6 rounded-lg shadow-lg w-11/12 sm:w-3/12 text-center box-step">
                                <label for="email" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Your email</label>
                                <input type="email" id="email" name="email" class="bg-white-50 border text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-white-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-dark dark:focus:ring-pick-500 dark:focus:border-blue-500" placeholder="name@loamsllc.com" required />
                              </div>
                        </div>
                    </div>

                    <div>
                        <button id="payment-btn" class="text-white uppercase font-bold bg-pink-500 py-2 px-10 rounded-6 hover:bg-pink-600" type="button">
                            Pay
                        </button>
                    </div>

                    <div>
                        <button class="text-white py-2 px-10 rounded-6 mt-3" type="button" id="return_game">
                            Return
                        </button>
                    </div>
                </div>
            </div>

        </div>

        <div class="absolute bottom-0 left-0 transform translate-y-1/3 sm:translate-y-1/4 z-10">
            <img src="{{ asset('build/assets/images/dls_two.png') }}" alt="" srcset="" class="max-w-40 lg:max-w-max">
        </div>

        <div class="absolute bottom-0 -right-14 sm:right-0 transform translate-y-1/3 sm:-translate-x-2/3 sm:translate-y-1/4">
            <img src="{{ asset('build/assets/images/ball_red.png') }}" alt="" srcset="" class="max-w-40 lg:max-w-max">
        </div>
    </section>

    
    <!-- Footer Section -->
    <footer class="bg-pink-500 text-white py-3 mt-0 fixed bottom-0 w-full z-0">
        <div class="container mx-auto text-center px-4">
            <a href="javascript:;">Privacy policy</a> | <a href="javascript:;">Terms & Conditions</a>
        </div>
    </footer>

    @push('scripts')
        <script type="text/javascript" src="https://sandbox.web.squarecdn.com/v1/square.js"></script>
    @endpush
    @vite(['resources/assets/js/participant.js'])
</x-core-layout>
