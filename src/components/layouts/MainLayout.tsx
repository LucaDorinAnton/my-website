import WaveBackground from "../backgrounds/WaveBackground";
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { faGithub, faLinkedin } from '@fortawesome/free-brands-svg-icons'
import { faEnvelope } from '@fortawesome/free-regular-svg-icons'
import './MainLayout.css'

type MainLayoutProps = {
    waveBackground: boolean,
    navBar: boolean
    mainContent: JSX.Element
}


const MainLayout = (props: MainLayoutProps) => {
    const navBar = props.navBar ? 
    <div className="navbar-top">
        <a href="http://ldanton.ro">Luca-Dorin Anton</a>
        <div className="links">
            <a href='https://github.com/LucaDorinAnton' className='navbar-link'><FontAwesomeIcon icon={faGithub} /></a>
            <a href='https://www.linkedin.com/in/ldanton/' className='navbar-link'><FontAwesomeIcon icon={faLinkedin} /></a>
            <a href='mailto:lucadorinanton@gmail.com' className='navbar-link'><FontAwesomeIcon icon={faEnvelope} /></a>
        </div>
    </div> : null;

    return (<>
        {props.waveBackground ? WaveBackground() : null}
        <div className="main-content">
            {navBar}
            {props.mainContent}
        </div>
    </>);

}
    


export default MainLayout;