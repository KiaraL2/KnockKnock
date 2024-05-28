document.querySelector('.add-button').addEventListener('click', function () {
    const container = document.querySelector('.input-container');

    const newFileInput = document.createElement('input');
    newFileInput.type = 'file';
    newFileInput.className = 'file-input';
    newFileInput.style.marginRight = '10px'; // 추가된 입력 필드 간 간격 유지
    newFileInput.style.marginBottom = '10px'; // 줄 바꿈 시 아래 간격 추가

    const newTextInput = document.createElement('input');
    newTextInput.type = 'text';
    newTextInput.className = 'text-input';
    newTextInput.style.marginRight = '10px'; // 추가된 입력 필드 간 간격 유지
    newTextInput.style.marginBottom = '10px'; // 줄 바꿈 시 아래 간격 추가

    const removeButton = document.createElement('button');
    removeButton.type = 'button';
    removeButton.className = 'remove-button';
    removeButton.innerText = '삭제';
    removeButton.addEventListener('click', function () {
        container.removeChild(newFileInput);
        container.removeChild(newTextInput);
        container.removeChild(removeButton);
    });

    container.insertBefore(newFileInput, container.lastElementChild); // 추가 버튼 앞에 새 입력 필드 추가
    container.insertBefore(newTextInput, container.lastElementChild); // 추가 버튼 앞에 새 입력 필드 추가
    container.insertBefore(removeButton, container.lastElementChild); // 추가 버튼 앞에 삭제 버튼 추가
});