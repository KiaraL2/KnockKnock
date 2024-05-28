const ratingInput = document.querySelector('input[name="review_ratings"]');
const ratingValue = document.getElementById('ratingValue');

ratingInput.addEventListener('input', function () {
    ratingValue.textContent = ratingInput.value;
});

// 초기 값 설정
ratingValue.textContent = ratingInput.value;