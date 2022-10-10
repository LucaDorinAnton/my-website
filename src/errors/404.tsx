import MainLayout from "../components/layouts/MainLayout";
import { faTriangleExclamation } from '@fortawesome/free-solid-svg-icons'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import './404.css'

const Error404 = () => (
    <MainLayout waveBackground={false} navBar={false} mainContent={
        <section className="errorSection">
            <span>
                <FontAwesomeIcon icon={faTriangleExclamation}/>
                &nbsp;Sorry, page not found&nbsp;
                <FontAwesomeIcon icon={faTriangleExclamation}/>
            </span>
            <span className="text-sm">Please try again later...</span>
        </section>  
    }/>)

export default Error404;