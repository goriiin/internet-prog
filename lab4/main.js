let buttons = document.querySelectorAll('.button');

var data = [];

var total = 0;

// Добавляем обработчик событий для каждой кнопки
for(let i=0; i < buttons.length; i++){
    buttons[i].addEventListener('click', function(event){
        // Получаем цену товара
        let price = parseInt(event.target.parentElement.parentElement.nextElementSibling.querySelector('.product-price').innerText);

        let title = event.target.parentElement.parentElement.nextElementSibling.querySelector('.product-title a').innerText;
        var flag = true;

        for (const i of data){
            if (i.title === title){
                i.count++;
                flag = false;
                break;
            }
        }

        if (flag) {
            data.push({number: data.length + 1, title: title, price: price, count: 1});
        }

        addToTable();
    });
}

function addToTable(){
    let tableHead = document.querySelector('#productsTable thead');
    let table = document.querySelector('#productsTable tbody');
    let tableFoot = document.querySelector('#productsTable tfoot');

    tableHead.innerHTML = '';
    table.innerHTML = '';
    tableFoot.innerHTML = '';

    if (data.length != 0) {
        row = document.createElement("tr");

        row.innerHTML = `<th>Порядковый номер</th>
                     <th>Название</th>
                     <th>Цена</th>
                     <th>Количество</th>
                     <th></th>
                     <th>Общая цена</th>`

        tableHead.appendChild(row);

        total = 0;
        for (const i of data) {
            const row = document.createElement("tr");
            total += i.price * i.count;
            row.innerHTML = `
                         <td> ${i.number} </td> 
                         <td> ${i.title} </td>   
                         <td> ${i.price} </td> 
                         <td> ${i.count} </td>
                         <td><button onclick="plus('${i.title}')">+</button> <button onclick="minus('${i.title}')">-</button></td>
                         <td>${i.price * i.count}</td>
                        `;
            table.appendChild(row);
        }

        // Обновляем общую стоимость
        document.querySelector('.price a').innerText = total;

        row = document.createElement("tr");

        row.innerHTML = `<td>Общая сумма</td> <td>${total} </td>`

        tableFoot.appendChild(row);
    }
}

function plus(title){
    for (const i of data){
        if (i.title === title){
            i.count++;
            addToTable();
            break;
        }
    }
}

function minus(title){
    for (const i of data){
        if (i.title === title){
            i.count--;
            if (i.count <= 0){
                data.pop(i)
            }
            addToTable();
            break;
        }
    }
}

