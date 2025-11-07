document.querySelectorAll(".FilterHeader").forEach(header => {
    header.addEventListener("click", () => {
        const content = header.nextElementSibling;
        content.classList.toggle("active");
    });
});
