if (document.getElementById('countdownTimer')) {
    pad = function(n, len) { // leading 0's
        var s = n.toString();
        return (new Array( (len - s.length + 1) ).join('0')) + s;
    };
	
    function countDown() {
        var now = new Date();
        if ( (now.getDay() >= 0) && (now.getDay() <= 6) ) { // Monday to Friday only
            var target = 15; // 15:00hrs is the cut-off point
            if (now.getHours() < target) { // don't do anything if we're past the cut-off point
                var hrs = (target - 1) - now.getHours();
                if (hrs < 0) hrs = 0;
                var mins = 59 - now.getMinutes();
                if (mins < 0) mins = 0;
                var secs = 59 - now.getSeconds();
                if (secs < 0) secs = 0;
                var str = pad(hrs, 2) + ':' + pad(mins, 2) + '.<small>' + pad(secs, 2) + '</small>';
                document.getElementById('countdownTimer').innerHTML = str;
            }
			else
			{
				document.getElementById('countdownTimer').innerHTML = "Time UP!";
			}
        }
    }
    var timerRunning = setInterval('countDown()', 1000);
}
