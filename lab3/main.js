const treeBtn = document.getElementById("tree-btn"); // Находим кнопку
const treeContainer = document.getElementById("tree-container"); // Находим контейнер для дерева

const drawTree = (node, tabs) => {
    if (node.tagName !== undefined) {
        const text = "-&nbsp".repeat(tabs) + node.tagName; // Генерируем текст с отступами
        console.log(text); // Выводим текст в консоль
        const p = document.createElement("p"); // Создаем элемент <p>
        p.innerHTML = text; // Добавляем текст внутрь элемента <p>

        // Установка класса "tree-node" для элемента <p>
        p.classList.add("tree-node");

        // Установка border-radius для создания суперэллипса
        const borderRadius = calculateBorderRadius(text.length);
        p.style.borderRadius = borderRadius + "px";

        // Устанавливаем цвет текста в зависимости от уровня вложенности
        p.style.color = getColor(tabs); // Получаем цвет в зависимости от уровня вложенности

        treeContainer.appendChild(p); // Добавляем элемент <p> в контейнер для дерева
        node.childNodes.forEach((c) => drawTree(c, tabs + 1)); // Рекурсивно вызываем функцию для всех дочерних узлов
    }
};

const calculateBorderRadius = (length) => {
    // Расчет значения border-radius для суперэллипса
    // Можно использовать формулу или табличные значения, в зависимости от предпочтений
    // В данном случае просто возвращаем половину длины текста
    return length / 4;
};

const getColor = (level) => {
    const colors = ["red", "green", "blue", "orange", "purple", "gray"]; // Массив цветов
    return colors[level % colors.length]; // Возвращаем цвет из массива в зависимости от уровня вложенности
};

treeBtn.addEventListener("click", (event) => {
    treeContainer.innerHTML = ""; // Очищаем контейнер перед каждым новым рисованием дерева
    drawTree(document.body, 0); // Начинаем рисовать дерево, начиная от корневого узла document.body
});