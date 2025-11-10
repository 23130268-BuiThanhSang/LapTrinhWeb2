function showVoucher(){
    document.getElementById("voucherID").style.display="block";
}
function closeVoucher(){
    document.getElementById("voucherID").style.display="none";
}
const btCx=document.getElementById("approveVc");
const grpCx=document.querySelectorAll(".checkBx");

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
