$(document).ready(function() {
    // 최초 로딩 시 서버에서 받아온 시간을 설정
    var current_time = new Date();
    updateClock(current_time);

    // 1초마다 시간 업데이트
    setInterval(function() {
        current_time = new Date(current_time.getTime() + 1000);
        updateClock(current_time);
    }, 1000);

    function updateClock(time) {
        var formatted_time = time.toLocaleString();
        $("#clock").text(formatted_time);
    }
});
