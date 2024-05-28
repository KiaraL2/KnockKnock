document.addEventListener("DOMContentLoaded", function () {
    const proposalText = document.querySelector(".proposal-text");
    const moreLink = proposalText.querySelector(".more-link");

    if (proposalText.scrollHeight > proposalText.clientHeight) {
        moreLink.style.display = "block";
    }

    moreLink.addEventListener("click", function (e) {
        e.preventDefault();
        proposalText.classList.add("expanded");
        moreLink.style.display = "none";
    });
});