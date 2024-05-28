let form_group_options = document.querySelector(".form_group_options");
let proposal_option = document.querySelector(".proposal_option");
let addOptionBtn = document.getElementById("addOptionBtn");
let totalPriceElement = document.getElementById("totalPrice");

addOptionBtn.addEventListener("click", function () {
    let newOption = proposal_option.cloneNode(true);
    newOption.querySelectorAll('input').forEach(input => input.value = '');
    form_group_options.insertBefore(newOption, addOptionBtn);
    addEventListeners(newOption);
    calculateTotalPrice();
});

function addEventListeners(optionElement) {
    let priceInput = optionElement.querySelector(".proposal_price");
    let quantityInput = optionElement.querySelector(".proposal_quantity");

    priceInput.addEventListener("input", calculateTotalPrice);
    quantityInput.addEventListener("input", calculateTotalPrice);
}

function calculateTotalPrice() {
    let total = 0;
    document.querySelectorAll(".proposal_option").forEach(option => {
        let price = parseFloat(option.querySelector(".proposal_price").value) || 0;
        let quantity = parseFloat(option.querySelector(".proposal_quantity").value) || 0;
        total += price * quantity;
    });
    totalPriceElement.textContent = total;
}

// 초기 옵션에 이벤트 리스너 추가
addEventListeners(proposal_option);