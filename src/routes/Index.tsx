import MainLayout from '../components/layouts/MainLayout'
import './Index.css'

const Index = () => (
    <MainLayout 
        navBar={true} 
        waveBackground={true} 
        mainContent={
            <section className='indexHeading'>
                Let's build <br/> great things <br/> together 
            </section>}
        />)


export default Index;