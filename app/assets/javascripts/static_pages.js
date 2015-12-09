$(document).ready(function () {
    var img_array = ['campfire', 'smoke', 'sunset', 'urban'], newIndex = 0, index = 0, interval = 5000, start = false;
    (function changeBg() {
        if (start) {
            index = (index + 1) % img_array.length;
            $('.site-wrapper').css('backgroundImage', function () {
                return "url('https://s3.amazonaws.com/cdn-mcon/backgrounds/" + img_array[index] + ".jpg')";
            });
        } else {
            start = true;
        }
        setTimeout(changeBg, interval);            
    })();
});