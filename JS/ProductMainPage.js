const tabButtons = document.querySelectorAll(".TabButton");
const tabContents = document.querySelector(".TabContents");

tabButtons.forEach((button, index) => {
    button.addEventListener("click", () => {
        // Update button active state
        tabButtons.forEach(b => b.classList.remove("active"));
        button.classList.add("active");

        // Slide the content container
        tabContents.style.transform = `translateX(-${index * 100}%)`;
    });
});


const mainImage = document.querySelector(".MainImage");
const thumbButtons = document.querySelectorAll(".ThumbButton img");

thumbButtons.forEach(thumb => {
    thumb.addEventListener("click", () => {
        mainImage.src = thumb.src; // Change main image source
    });
});
