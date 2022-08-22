document.addEventListener('DOMContentLoaded', function() {
    let bg1 = document.getElementById('bg1');
    let bg2 = document.getElementById('bg2');
    let bg3 = document.getElementById('bg3');

    let bg_divs = [bg1, bg2, bg3];
    let d = bg1.offsetWidth;
    let t = 750;

    let tweens = bg_divs.map(e => KUTE.to(e, {translateX:-d}, {
        duration:t,
        easing: 'easingCubicOut'
    }));


    function run_next_animation(index) {
        if(index >= tweens.length) return;

        tweens[index].start()

        setTimeout(() => run_next_animation(index + 1), t * 1.2);
    }

    run_next_animation(0);
 }, false);