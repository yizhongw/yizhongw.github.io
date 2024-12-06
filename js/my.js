function toggle_old_news() {
    var x = document.getElementById("old-news");
    if (x.style.display === "none") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
}

window.dataLayer = window.dataLayer || [];
function gtag(){dataLayer.push(arguments);}
gtag('js', new Date());
gtag('config', 'UA-87285955-1');

// $("div.navbar-fixed-top").autoHidingNavbar({
//     showOnBottom: false,
//     showOnUpscroll: false,
//     animationDuration: 600
// });