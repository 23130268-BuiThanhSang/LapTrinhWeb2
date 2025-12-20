<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="stylesheet" href="CSS/manageUser.css">
    <link rel="stylesheet" href="CSS/manageUser_UserDetail.css">

</head>
<body>
<div class="ManagerUser">
    <jsp:include page="/Share/admin_leftbar.jsp" />
    <div class="manageUserDetailUi">
        <div class="manageUserHeader">
            <h2>User Management</h2>
        </div>

        <div class="userDetailCard">
            <!-- Avatar -->
            <div class="userAvatarSection">
                <img src="<!-- avatar url here -->" alt="User Avatar" class="userAvatar">
            </div>

            <!-- User Info -->
            <div class="userInfoSection">

                <div class="userField">
                    <label>User ID</label>
                    <input type="text" value="<!-- user id -->" readonly>
                </div>

                <div class="userField">
                    <label>Account Name</label>
                    <input type="text" value="<!-- account name -->" readonly>
                </div>

                <div class="userField">
                    <label>User Name</label>
                    <input type="text" value="<!-- user name -->">
                </div>

                <div class="userField">
                    <label>Birth Year</label>
                    <input type="number" value="<!-- birth year -->">
                </div>

                <div class="userField">
                    <label>Phone Number</label>
                    <input type="text" value="<!-- phone number -->">
                </div>

                <div class="userField">
                    <label>Email</label>
                    <input type="email" value="<!-- email -->">
                </div>

                <div class="userField">
                    <label>Account Status</label>
                    <select>
                        <option value="active">Active</option>
                        <option value="inactive">Inactive</option>
                    </select>
                </div>

                <div class="userField">
                    <label>Avatar URL</label>
                    <input type="text" value="<!-- avatar url -->">
                </div>

            </div>
        </div>

        <div class="userActionBar">
            <button class="btnSave">
                <i class="fa-solid fa-floppy-disk"></i> Save Changes
            </button>
            <button class="btnCancel">
                <i class="fa-solid fa-xmark"></i> Cancel
            </button>
        </div>

    </div>
</div>

</body>
</html>
