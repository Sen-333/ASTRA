function tryLogin() {
    let un = $("#txtUsername").val();
    let pw = $("#txtPassword").val();
    if (un.trim() !== "" && pw.trim() !== "") {
        // make an ajax call
        $.ajax({
            url: "ajaxhandler/loginAjax.php",
            type: "POST",
            dataType: "json",
            data: {
                user_name: un,
                password: pw,
                action: "verifyUser"
            },
            beforeSend: function () {
                // if you want to do something just
                // before making the call
                $("#diverror").removeClass("applyerrordiv");
                $("#lockscreen").addClass("applylockscreen");
            },
            success: function (rv) {
                // if the ajax call was successful,
                // result will be in rv
                $("#lockscreen").removeClass("applylockscreen");
                if (rv.status === "ALL OK") {
                    document.location.replace("attendance.php");
                } else {
                    $("#diverror").addClass("applyerrordiv");
                    $("#errormessage").text(rv.status);
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                // if for some reason the call was unsuccessful
                console.error("AJAX error: " + textStatus + ' : ' + errorThrown);
                alert("Oops, something went wrong. Please try again.");
                $("#lockscreen").removeClass("applylockscreen");
            },
        });
    }
}

// do everything only when the document is loaded
$(function () {
    // capture the keyup event
    $(document).on("keyup", "input", function () {
        $("#diverror").removeClass("applyerrordiv");
        let un = $("#txtUsername").val();
        let pw = $("#txtPassword").val();
        if (un.trim() !== "" && pw.trim() !== "") {
            $("#btnLogin").removeClass("inactivecolor");
            $("#btnLogin").addClass("activecolor");
        } else {
            $("#btnLogin").removeClass("activecolor");
            $("#btnLogin").addClass("inactivecolor");
        }
    });
    $(document).on("click", "#btnLogin", function (e) {
        e.preventDefault();
        tryLogin();
    });
});
