function showPage(pageId) {
    document.querySelectorAll('.error, .success').forEach(span => {
        span.innerText = '';
    });

    document.querySelectorAll('.page').forEach(p => {
        p.style.display = "none";
    });

    const page = document.getElementById(pageId);
    if (page) {
        page.style.display = "block";
    }
}


window.addEventListener('load', function () {
});