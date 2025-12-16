function showVoucher() {
    document.getElementById("voucherPopup").classList.add("show");
}

function closeVoucher() {
    document.getElementById("voucherPopup").classList.remove("show");
    document.querySelectorAll('#voucherPopup input[type="checkbox"]').forEach(cb => {
        cb.checked = false;
    });
}

