<x-core-layout>
  <input type="hidden" name="price_ticket" id="price_ticket" value="0">

  <canvas id="canvas-confetti" class="fixed top-0 left-0 w-full h-full z-40"></canvas>

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

      <div class="container mx-auto text-center px-4 z-50" id="tap-one">
          <h2 class="text-4xl sm:text-5xl font-bold">Payment successfully completed!</h2>
          <div class="flex">
              <div class="bg-white line-participant line-participant-active"></div>
          </div>
          <p class="text-base sm:text-lg mt-6">Thank you for your purchase. The tickets have been sent to your email address. Please check your inbox (or spam folder) to access them.</p>

          <div class="mt-24">
            <div class="mt-3">
                <a class="text-white uppercase font-bold bg-pink-500 py-2 px-10 rounded-6 hover:bg-pink-600 relative z-50"  href="{{ route('landing.home') }}">
                  Back to home
                </a>
            </div>
        </div>
      </div>
      
      
  </section>
  <!-- Footer Section -->
  <footer class="bg-pink-500 text-white py-3 mt-0 fixed bottom-0 w-full z-0">
      <div class="container mx-auto text-center px-4">
          <a href="javascript:;">Privacy policy</a> | <a href="javascript:;">Terms & Conditions</a>
      </div>
  </footer>

  @push('scripts')
    <script src="https://cdn.jsdelivr.net/npm/js-confetti@latest/dist/js-confetti.browser.js"></script>

    <script>
      $(document).ready(function () {
        const canvas = document.getElementById('canvas-confetti');
        
        const jsConfetti = new JSConfetti({ canvas });

        setTimeout(() => {
          jsConfetti.addConfetti();
        }, 500);

        setTimeout(() => {
          jsConfetti.addConfetti();
        }, 1500);
      });
    </script>
  @endpush
</x-core-layout>
