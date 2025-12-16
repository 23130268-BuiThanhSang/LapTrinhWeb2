document.addEventListener("DOMContentLoaded", function () {
    const addSection = document.getElementById("AddProductSection");
    const searchSection = document.getElementById("SearchProductSection");
    const groupSection = document.getElementById("AddGroupSection");

    const btnAdd = document.getElementById("btnAddProduct");
    const btnSearch = document.getElementById("btnSearchProduct");
    const btnGroup = document.getElementById("btnAddGroup");

    // Helper: hide all sections
    function hideAllSections() {
        addSection.style.display = "none";
        searchSection.style.display = "none";
        groupSection.style.display = "none";
    }

    // Helper: remove active class from all buttons
    function clearActiveTabs() {
        btnAdd.classList.remove("activeTab");
        btnSearch.classList.remove("activeTab");
        btnGroup.classList.remove("activeTab");
    }

    // Default: show search section
    hideAllSections();
    searchSection.style.display = "block";
    btnSearch.classList.add("activeTab");

    // Add product
    btnAdd.addEventListener("click", function () {
        hideAllSections();
        clearActiveTabs();

        addSection.style.display = "block";
        btnAdd.classList.add("activeTab");
    });

    // Search product
    btnSearch.addEventListener("click", function () {
        hideAllSections();
        clearActiveTabs();

        searchSection.style.display = "block";
        btnSearch.classList.add("activeTab");
    });

    // Add product group
    btnGroup.addEventListener("click", function () {
        hideAllSections();
        clearActiveTabs();

        groupSection.style.display = "block";
        btnGroup.classList.add("activeTab");
    });

});
