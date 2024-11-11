$(document).ready(function () {
  setTimeout(() => recalculate_price(), 500);
});

const recalculate_price = () => {
  const gamesList = getGames();
  let amount = 0;

  for (const game of gamesList) {
    const inputContent = $(`#qty-${game.id}`) ? parseFloat($(`#qty-${game.id}`).val()) : 0;

    if(!isNaN(inputContent)) {
      amount += inputContent * game.price;
    }
  }

  $('#total_price').html(amount.toFixed(2));
}

const getGames = () => {
  const gamesList = [];

  $('input.game-checkbox:checked').each(function() {
    const game = {
      name: $(this).val(),
      image: $(this).attr('data-image'),
      id: $(this).attr('data-id'),
      price: $(this).attr('data-price'),
      quantity: 0
    };

    if(game.id) {
      const inputElement = $(`input[name=qty-${game.id}]`);

      if(inputElement) {
        game.quantity = parseFloat(inputElement.val());
      }
    }

    gamesList.push(game);
  });

  return gamesList;
}

$('body').on('input', '.quantity-input', function() {
  this.value = this.value.replace(/[^0-9]/g, '');

  recalculate_price();
});

$('body').on('click', '.plus', function() {
  const inputDefaultId = $(this).data('id');
  const inputElement = $(`#qty-${inputDefaultId}`);
  const quantityNumber = (inputElement) ? parseFloat(inputElement.val()) : 0;

  if(inputElement) {
    inputElement.val(quantityNumber + 1);
    
    recalculate_price();
  }
})

$('body').on('click', '.min', function() {
  const inputDefaultId = $(this).data('id');
  const inputElement = $(`#qty-${inputDefaultId}`);
  const quantityNumber = (inputElement) ? parseFloat(inputElement.val()) : 0;

  if (quantityNumber >= 2 && inputElement) {
    inputElement.val(quantityNumber - 1);
    
    recalculate_price();
  }
});

$('body').on('click', '#btn-next', function() {
  const gamesList = getGames();

  if(gamesList <= 0) {
    return $.toast({
      heading: 'Warning',
      text: 'It is necessary to select a game to continue',
      showHideTransition: 'plain',
      icon: 'warning'
    });
  }

  $('#tap-one').addClass('hidden');
  $('#tap-two').removeClass('hidden');

  let gamesHTML = '';

  for (const game of gamesList) {
    gamesHTML += `
      <div class="bg-white p-6 rounded-lg shadow-lg mt-5 text-center box-step flex items-center flex-wrap mr-5 relative flex justify-between">
          <div>
              <img src="${ game.image }" alt="" class="m-auto" width="100px" id="image-game-selected">
          </div>
          <div class="flex justify-center items-center">
              <span class="min button btn-tickets cursor-pointer mr-2" data-id="${game.id}">
                  <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="size-6">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M15 12H9m12 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                  </svg>                                  
              </span>
              
              <input type="text" name="qty-${game.id}" id="qty-${game.id}" class="custom-input quantity-input" value="1"/>

              <span class="plus button btn-tickets cursor-pointer ml-2" data-id="${game.id}">
                  <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="size-6">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 9v6m3-3H9m12 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                  </svg>                                  
              </span>
          </div>
      </div>
    `;
  }

  $('#container-games').html(gamesHTML);

  setTimeout(() => recalculate_price(), 500);
});

$('body').on('click', '#payment-btn', async function() {
  const games = getGames();
  const getEmail = $('input[name=email]').val();

  if(!getEmail) {
    return $.toast({
      heading: 'Warning',
      text: 'Email address is required',
      showHideTransition: 'plain',
      icon: 'warning'
    });
  }

  if(!games.length) {
    return $.toast({
      heading: 'Warning',
      text: 'It is necessary to select a game to continue',
      showHideTransition: 'plain',
      icon: 'warning'
    });
  }

  try {
    const response = await getQuery('post', '/api/square_link', {
      getGame: games,
      email: getEmail
    });

    $.toast({
      heading: 'Success',
      text: 'Thank you',
      showHideTransition: 'slide',
      icon: 'success'
  })
  
    window.location.href = response.paymentLinkUrl; 
  } catch (error) {
    return $.toast({
      heading: 'Warning',
      text: error.message || 'Error when buying tickets try again later',
      showHideTransition: 'plain',
      icon: 'warning'
    });
  }
})

const getQuery = (method, url, params = null) => {
  $.ajaxSetup({
    headers: {
      'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
  });

  return new Promise((resolve, reject) => {
    $.ajax({
      type: method,
      url: url,
      contentType: 'application/json',
      data: JSON.stringify(params),
      success: (response) => resolve(response),
      error: (error) => reject(error)
    });
  })
}

$('body').on('click', '#return_game', function() {
  $('#tap-one').removeClass('hidden');
  $('#tap-two').addClass('hidden');
});