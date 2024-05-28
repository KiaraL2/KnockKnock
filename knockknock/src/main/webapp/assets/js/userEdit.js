function updateProfile() {
    // 정보 수정 로직을 여기에 추가
    alert("정보수정이 완료되었습니다")
    window.location.href = 'main.jsp';
}

function deleteProfile() {
    if (confirm('정말로 회원탈퇴 하시겠습니까?')) {
        // 회원 탈퇴 로직을 여기에 추가

        window.location.href = 'main.jsp';
    }
}