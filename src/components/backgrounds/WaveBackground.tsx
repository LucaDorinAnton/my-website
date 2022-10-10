import { useEffect, useRef } from 'react'
import KUTE from 'kute.js';

import './WaveBackground.css'


function WaveBackground() {

  const refs: any[] = [useRef(null), useRef(null), useRef(null)];
  const backgrounds = [1,2,3].map(n => <div 
    className={`background-main background-layer${n}`} 
    id={`bg${n}`} key={`bg${n}`} ref={refs[n - 1]}/>);
  

    useEffect(() => {
        const d: number = refs[0]?.current?.offsetWidth;
        const t = 750;
        const tweens = refs.map(ref => KUTE.to(ref.current, {translateX:-d}, {
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
          refs.map(ref => ref.current.style = 'left: 0px');
      }
    
      function run_next_animation(index: number) {
        if(index >= tweens.length) {
            clear_transform()
            return;
        }
    
        tweens[index].start()
    
          setTimeout(() => run_next_animation(index + 1), t * 1.2);
      }

      run_next_animation(0);
  })

  return (
    <>
      {backgrounds}
    </>

  )
}

export default WaveBackground;
