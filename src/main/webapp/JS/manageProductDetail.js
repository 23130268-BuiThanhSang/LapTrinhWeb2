document.addEventListener("DOMContentLoaded", function () {
    const variantContainer = document.getElementById("VariantContainer");
    const btnAddVariant = document.getElementById("btnAddVariant");

    // Count current variants to ensure unique names for new ones
    // We start counting from the number of existing variants found in DOM
    let variantIndex = document.querySelectorAll('.VariantCard').length;

    if (btnAddVariant) {
        btnAddVariant.addEventListener("click", function () {
            addNewVariantCard();
        });
    }

    // Initialize listeners for Existing Image Inputs (for the "New Images" field on existing variants)
    document.querySelectorAll('.ImageInput').forEach(input => {
        setupImagePreview(input);
    });

    // --- FUNCTION: Add New Variant (Same as Add Page) ---
    function addNewVariantCard() {
        if (!variantContainer) return;
        const index = variantIndex++;

        const card = document.createElement("div");
        card.className = "VariantCard NewVariant"; // Add class NewVariant to distinguish

        // HTML Structure
        card.innerHTML = `
            <div class="VariantHeader">
                <span>Biến thể Mới #${index + 1}</span>
                <button type="button" class="RemoveVariantBtn">✕</button>
            </div>
            
            <div class="VariantRow VariantRow-Top">
                <div class="VariantField">
                    <label>Màu sắc:</label>
                    <select name="variants[${index}].color" required>
                        <option value="">-- Chọn màu --</option>
                        ${["Tím", "Nâu", "Đen", "Trắng", "Bạc", "Hồng", "Xanh Navy", "Xanh Dương", "Xanh Lục", "Vàng", "Đỏ", "Cam"]
            .map(c => `<option value="${c}">${c}</option>`).join("")}
                    </select>
                </div>
                
                <div class="VariantField">
                    <label>Kích cỡ:</label>
                    <input type="text" name="variants[${index}].size" placeholder="Nhập size (VD: 40, XL)" required>
                </div>

                <div class="VariantField">
                    <label>Giá:</label>
                    <input type="number" name="variants[${index}].price" min="0" required>
                </div>
                
                <div class="VariantField">
                    <label>Tồn kho:</label>
                    <input type="number" name="variants[${index}].stock" min="0" required>
                </div>
            </div>
            
            <div class="VariantRow VariantRow-Bottom">
                <div class="VariantField" style="width: 100%;">
                    <label>Hình ảnh (Giữ Ctrl để chọn nhiều):</label>
                    <input type="file" class="ImageInput" name="variants[${index}].images" multiple accept="image/*">
                    <div class="ImagePreviewBox" style="display: flex; gap: 10px; margin-top: 10px; flex-wrap: wrap;"></div>
                </div>
            </div>
        `;

        // Remove Button Logic (For NEW variants only)
        card.querySelector(".RemoveVariantBtn").addEventListener("click", function () {
            card.remove();
        });

        // Setup Preview
        setupImagePreview(card.querySelector(".ImageInput"));

        variantContainer.appendChild(card);
    }

    // --- FUNCTION: Image Preview Helper ---
    function setupImagePreview(inputElement) {
        inputElement.addEventListener("change", function(e) {
            // Find the sibling preview box
            const previewBox = e.target.parentElement.querySelector(".ImagePreviewBox");
            if(!previewBox) return;

            previewBox.innerHTML = "";
            const files = e.target.files;

            if (files) {
                Array.from(files).forEach(file => {
                    const reader = new FileReader();
                    reader.onload = function(e) {
                        const img = document.createElement("img");
                        img.src = e.target.result;
                        img.style.width = "60px";
                        img.style.height = "60px";
                        img.style.objectFit = "cover";
                        img.style.borderRadius = "5px";
                        img.style.border = "1px solid #ccc";
                        previewBox.appendChild(img);
                    }
                    reader.readAsDataURL(file);
                });
            }
        });
    }
});

// --- GLOBAL FUNCTIONS (Called from HTML onclick) ---

// 1. Mark Image for Deletion
function markImageDelete(imageId, btnElement) {
    if(!confirm("Bạn có chắc muốn xóa ảnh này?")) return;

    // Add ID to hidden input
    const input = document.getElementById("deletedImageIds");
    if(input.value) {
        input.value += "," + imageId;
    } else {
        input.value = imageId;
    }

    // Hide the UI element
    const container = btnElement.parentElement;
    container.style.display = "none";
}

// 2. Mark Existing Variant for Deletion
function markVariantDelete(variantId, btnElement) {
    if(!confirm("Cảnh báo: Bạn sắp xóa một biến thể ĐÃ TỒN TẠI. Hành động này sẽ xóa vĩnh viễn sau khi Lưu. Tiếp tục?")) return;

    // Add ID to hidden input
    const input = document.getElementById("deletedVariantIds");
    if(input.value) {
        input.value += "," + variantId;
    } else {
        input.value = variantId;
    }

    // Hide the card
    const card = btnElement.closest(".VariantCard");
    card.style.display = "none";

    // Disable inputs inside so they don't get submitted
    card.querySelectorAll("input, select").forEach(field => field.disabled = true);
}