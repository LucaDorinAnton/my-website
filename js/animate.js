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


    /**
     * Once the animation finished, KUTE will have put a transform on the
     * background divs. If the the viewport is zoomed in or out, because
     * the transform is in pixels, the background will scale awkwardly.
     * Replace the transform with an absolute position, and the background
     * will not scale on zoom anymore.
     * 
     * This will still break if the user zooms during the animation.
     * 
     */
    function clear_transform() {
        bg_divs.map(e => e.style = 'left: 0px');
    }


    function run_next_animation(index) {
        if(index >= tweens.length) {
            clear_transform()
            return;
        }

        tweens[index].start()

        setTimeout(() => run_next_animation(index + 1), t * 1.2);
    }

    run_next_animation(0);
 }, false);