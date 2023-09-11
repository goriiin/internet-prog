let buttons = document.querySelectorAll('.button');

// Добавляем обработчик событий для каждой кнопки
for(let i=0; i < buttons.length; i++){
    buttons[i].addEventListener('click', function(event){
        // Получаем цену товара
        let price = parseInt(event.target.parentElement.parentElement.nextElementSibling.querySelector('.product-price').innerText);

        // Получаем текущую общую стоимость
        let total = parseInt(document.querySelector('.price a').innerText);

        // Обновляем общую стоимость
        document.querySelector('.price a').innerText = total + price;


        let item = event.target.parentElement.parentElement;

        alert(item)

        let prod = item.querySelectorAll(".product-title a").innerText

        alert(prod)

    });
}

