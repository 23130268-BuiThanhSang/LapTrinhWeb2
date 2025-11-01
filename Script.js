const slides = document.getElementById("BannerSlides");
const total = slides.children.length - 1;
let index = 0;
const bannerWidth = 800;

let autoSlide = setInterval(nextSlide, 5000);

function showSlide() {
    slides.style.transform = `translateX(-${index * bannerWidth}px)`;
}
function nextSlide() {
    index = (index + 1) % total;
    showSlide();
}

function prevSlide() {
    index = (index - 1 + total) % total;
    showSlide();
}


document.getElementById("nextBtn").addEventListener("click", () => {
    nextSlide();
    resetTimer();
});

document.getElementById("prevBtn").addEventListener("click", () => {
    prevSlide();
    resetTimer();
});

// Reset auto-slide timer when manually clicked
function resetTimer() {
    clearInterval(autoSlide);
    autoSlide = setInterval(nextSlide, 5000);
}
