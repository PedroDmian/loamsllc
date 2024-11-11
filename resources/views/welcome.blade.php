<x-core-layout>

    <!-- Hero Section -->
    <section class="bg-gradient-to-r from-purple-500 to-blue-500 text-white py-12 w-full h-[90vh] md:h-[70vh] flex items-center relative" id="section-presentation">
        <div class="absolute top-0 left-1/4 sm:left-1/3">
            <img src="{{ asset('build/assets/images/ball_blue.png') }}" alt="" srcset="">
        </div>

        <div class="absolute top-44 sm:top-44 lg:top-1/3 left-10 sm:left-0 lg:left-44 opacity-30 md:opacity-100 blur-sm md:blur-none">
            <img src="{{ asset('build/assets/images/ball_green.png') }}" alt="" srcset="">
        </div>

        <div class="absolute top-3 translate-x-1/4 sm:end-9">
            <img src="{{ asset('build/assets/images/dls_one.png') }}" alt="" srcset="">
        </div>

        <div class="container mx-auto text-center px-4 z-10">
            <h2 class="text-4xl sm:text-5xl font-bold">LOAMS LLC</h2>
            <p class="text-base sm:text-lg mt-6">WELCOME to <span class="font-bold">LOAMS, LLC</span> Online/Offline DATA Production, Management,
                Consultation and Distribution</p>
            <p class="text-base sm:text-lg mt-1">
                System. The only unique, enjoyable and personalized consultation platform, that offers participants/users
            </p>
            <p class="text-base sm:text-lg mt-1">number strings (or combinations) set of various popular draw lottery/Lotto games, with a <span class="font-bold">GUARANTEED</span></p>
            <p class="text-base sm:text-lg mt-1">
                winning combination in each set
            </p>
        </div>

        <div class="absolute bottom-0 left-0 transform translate-y-1/3 sm:translate-y-1/4">
            <img src="{{ asset('build/assets/images/dls_two.png') }}" alt="" srcset="" class="max-w-40 lg:max-w-max">
        </div>

        <div class="absolute bottom-0 -right-14 sm:right-0 transform translate-y-1/3 sm:-translate-x-2/3 sm:translate-y-1/4">
            <img src="{{ asset('build/assets/images/ball_red.png') }}" alt="" srcset="" class="max-w-40 lg:max-w-max">
        </div>
    </section>

    <!-- How We Work Section -->
    <section id="how-we-work" class="py-12 bg-white pb-20">
        <div class="container mx-auto text-center px-4">
            <div class="grid grid-cols-1 md:grid-cols-2 gap-8 mt-8 px-4">
                <div>
                    <h1 class="text-6xl sm:text-7xl text-start font-bold text-pink-500">
                        How <br/>
                        we work
                    </h1>
                    <p class="text-gray-700 mt-4 text-base text-start mt-6">For every $1 consultation fee paid, LOAMS, LLC, will “EMAIL” you Our custom system’s UNIQUE number strings (or combinations) SET and <strong>GUARANTEES</strong> you one or more winnings in that specific date/day’s game. The system concentrates on draw Lottery/Lotto games and examples are “Mega Millions (with 25 combinations in each set),” and “Powerball (with 26 combinations in each set).”</p>
                </div>
                <div>
                    <img src="{{ asset('build/assets/images/womans.png') }}" alt="" srcset="" class="image-mask">
                </div>
            </div>
        </div>
    </section>

    <!-- Steps Section -->
    <section id="steps" class="py-12 relative">
        <div class="absolute top-0 left-1/4 sm:left-1/4 transform -translate-y-2/4 sm:-translate-y-2/4">
            <img src="{{ asset('build/assets/images/ball_yellow.png') }}" alt="" srcset="">
        </div>

        <div class="absolute top-1/4 end-0 sm:end-0 top-1/4">
            <img src="{{ asset('build/assets/images/ball_white.png') }}" alt="" srcset="">
        </div>

        <div class="absolute bottom-1/4 start-0 sm:end-0">
            <img src="{{ asset('build/assets/images/ball_orange.png') }}" alt="" srcset="">
        </div>

        <div class="container mx-auto mt-20 z-10 relative">
            <h1 class="text-6xl sm:text-6xl font-bold text-center text-white mb-10">STEPS</h1>
            
            <div class="flex justify-center">
                <div class="grid grid-cols-1 md:grid-cols-3 gap-8 mt-8 px-4 w-10/12">
                    <div class="bg-white p-6 rounded-lg shadow-lg text-center box-step">
                        <div class="flex justify-center">
                            <h1 class="text-6xl font-bold text-white">
                                <span class="circle-number"></span>
                                1
                            </h1>
                        </div>
                        <p class="mt-4 text-white mt-10 text-lg"><span class="bidget">Choose</span> your game</p>
                    </div>
                    <div class="bg-white p-6 rounded-lg shadow-lg text-center box-step">
                        <div class="flex justify-center">
                            <h1 class="text-6xl font-bold text-white">
                                <span class="circle-number"></span>
                                2
                            </h1>
                        </div>
                        <p class="mt-4 text-white mt-10 text-lg"><span class="bidget">Choose</span> your quantity of unique SET(S), using the (+) or (-) to increase or decrease. Each recommended UNIQUE set for you incurs only $1 consultation fee.</p>
                    </div>
                    <div class="bg-white p-6 rounded-lg shadow-lg text-center box-step">
                        <div class="flex justify-center">
                            <h1 class="text-6xl font-bold text-white">
                                <span class="circle-number"></span>
                                3
                            </h1>
                        </div>
                        <p class="mt-4 text-white mt-10 text-lg"><span class="bidget">Pay</span> the indicated corresponding consultation fee(s).</p>
                    </div>
                    <div class="bg-white p-6 rounded-lg shadow-lg text-center box-step">
                        <div class="flex justify-center">
                            <h1 class="text-6xl font-bold text-white">
                                <span class="circle-number"></span>
                                4
                            </h1>
                        </div>
                        <p class="mt-4 text-white mt-10 text-lg"><span class="bidget">Receive</span> within minutes via “EMAIL” your UNIQUE set(s) of number combination strings.</p>
                    </div>
                    <div class="bg-white p-6 rounded-lg shadow-lg text-center box-step">
                        <div class="flex justify-center">
                            <h1 class="text-6xl font-bold text-white">
                                <span class="circle-number"></span>
                                5
                            </h1>
                        </div>
                        <p class="mt-4 text-white mt-10 text-lg"><span class="bidget">Play</span> “ALL” the number combination strings as assigned to you at an offline or online state approved lottery provider.</p>
                    </div>
                    <div class="bg-white p-6 rounded-lg shadow-lg text-center box-step">
                        <div class="flex justify-center">
                            <h1 class="text-6xl font-bold text-white">
                                <span class="circle-number"></span>
                                6
                            </h1>
                        </div>
                        <p class="mt-4 text-white mt-10 text-lg"><span class="bidget">Enjoy</span> your “monetary” price from our GUARANTEED winning combination in each set.</p>
                    </div>
                </div>
            </div>
        </div>

        
        <div class="flex justify-center">
            <div class="w-11/12 sm:w-8/12 md:w-6/12 mt-10">
                <p class="text-center mt-5 text-white">
                    ***By using this site, you are seeking our advice for draw lottery game number combinations and, you’ve accepted our suggestion for you to play by 6PM ET, at a state approved offline or online lottery agent/provider, all the number strings (or combinations) within the set assigned to you to play for a specific date/day.
                </p>
            </div>
        </div>
    </section>

    <!-- Call to Action Section -->
    <section id="participate" class="py-12 bg-white relative overflow-hidden">
        <div class="absolute top-2/4 start-0 md:top-0 sm:end-0 w-1/4 sm:w-auto">
            <img src="{{ asset('build/assets/images/jack_ticket.png') }}" alt="" srcset="" class="w-1/4 md:w-auto">
        </div>

        <div class="absolute -top-10 md:-top-10 -end-0 sm:end-0">
            <img src="{{ asset('build/assets/images/dls_three.png') }}" alt="" srcset="">
        </div>

        <div class="absolute -bottom-1/3 end-1/4">
            <img src="{{ asset('build/assets/images/clover.png') }}" alt="" srcset="">
        </div>

        <div class="container mx-auto text-center py-40 relative z-10">
            <h3 class="text-5xl sm:text-5xl font-bold text-pink-500">
                What are you waiting for?
            </h3>
            <a 
                href="{{ route('landing.participant') }}"
                class="bg-pink-500 mt-11 text-white py-6 px-9 mt-6 uppercase inline-block rounded-6 font-bold text-4xl sm:text-4xl hover:bg-pink-600">
                Participate
            </a>
        </div>
    </section>

    <!-- Legal Disclaimer Section -->
    <section id="disclaimer" class="py-12 bg-gray-100">
        <div class="container mx-auto text-justify py-11 w-11/12 sm:w-11/12 md:w-1/2">
            <h3 class="text-5xl sm:text-5xl font-bold text-pink-500 text-center mb-11">Legal Disclaimer</h3>
            <p class="text-gray-600 mt-4">
                By using this site, you are seeking our advice to draw lottery game number combinations, and you've accepted our suggestion for you to play by 6PM ET, at a state approved offline or online lottery agent/provider, all the number strings (or combinations) within the SET assigned to you to play for a specific date/day.
            </p>

            <p class="text-gray-600 mt-5">
                While every  effort is made to ensure its accuracy, the information provided on this website is unofficial and may contain errors.
            </p>

            <p class="text-gray-600 mt-6">
                LOAMS, LLC expressly disclaims any liability or responsibility for any inaccuracies or errors in any information contained on this website.
            </p>

            <p class="text-gray-600 mt-6">
                Lottery games are based on chance, should be played for entertainment only, and should not be played for investment purposes.
            </p>
            
            <p class="text-gray-600 mt-6">
                No data may be copied or re-transmitted from this website without the express written permission of LOAMS, LLC.
            </p>
            
            <p class="text-gray-600 mt-6">
                Official drawing results used in the validation of winning combinations are recorded in the drawing records of the lottery commissions/boards. In the case of a discrepancy between the information provided through this website and the official drawing results, rules, policies, documents, or publications, the official drawing results or information shall prevail.
            </p>
            
            <p class="text-gray-600 mt-6 font-bold">
                Must be at least 21 years of age to participate.
            </p>
            
            <p class="text-gray-600 mt-6">
                Information contained on this website is subject to periodic changes and amendments without prior notice.
            </p>

            <h3 class="mt-7 font-bold text-2xl uppercase">Contact:</h3>
            <div class="mt-1 block">
                <a href="tel+202-705-0687" class="font-bold text-2xl uppercase flex content-end mb-2">
                    <img src="{{ asset('build/assets/images/phone.png') }}" alt="" class="w-6 h-5 me-2 mb-0">
                    202-705-0687
                </a>
                <a href="mailto:ooadiele@gmail.com" class="font-bold text-2xl uppercase flex content-end">
                    <img src="{{ asset('build/assets/images/envelope.png') }}" alt="" class="w-6 h-5 me-2 mb-0">
                    ooadiele@gmail.com
                </a>
            </div>
        </div>
    </section>

    <!-- Footer Section -->
    <footer class="bg-pink-500 text-white py-3">
        <div class="container mx-auto text-center px-4">
            <a href="javascript:;">Privacy policy</a> | <a href="javascript:;">Terms & Conditions</a>
        </div>
    </footer>
</x-core-layout>
