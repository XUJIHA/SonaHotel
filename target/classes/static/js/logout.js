document.addEventListener("DOMContentLoaded", function() {
  document.getElementById("delete").addEventListener("click", function() {
    Swal.fire({
      title: '您確定是否要登出?',
      text: "您將無法恢復!",
      icon: 'warning',
      showCancelButton: true,
      cancelButtonText: "取消",
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: '確定登出!'
    }).then((result) => {
      if (result.isConfirmed) {
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "/logout", true);
        xhr.onload = function () {
          console.log("success");
          Swal.fire({
            title: '已登出!',
            text: username + '已經登出.',
            icon: 'success',
            timer: 2000,
            showConfirmButton: false
          }).then((result) => {
            if (result.dismiss === Swal.DismissReason.timer) {
              location.href = "/logout";
            }
          });
        };
        xhr.onerror = function () {
          console.log("error");
        };
        xhr.send();
      }
    });
  });
});