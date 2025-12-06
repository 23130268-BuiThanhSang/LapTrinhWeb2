
function showVoucher(){
    document.getElementById("voucherPopup").style.display = "flex";
}

function closeVoucher(){
    document.getElementById("voucherPopup").style.display = "none";
}

const btCx = document.getElementById("voucher-apply");
const grpCx = document.querySelectorAll(".voucher-item input[type='checkbox']");


function checkCx() {
    let hasChecked = false;
    for (let i = 0; i < grpCx.length; i++) {
        if (grpCx[i].checked) {
            hasChecked = true;
            break;
        }
    }
    if (hasChecked) {
        btCx.style.background = "#31BFFF";
        btCx.style.color = "white";
        btCx.style.border = "1px solid black";
    } else {
        btCx.style.background = "#DEDEDE";
        btCx.style.color = "#6B6B6B";
        btCx.style.border = "1px solid #6B6B6B";
    }
}
    grpCx.forEach(b=>b.addEventListener('change', checkCx));
    checkCx();

