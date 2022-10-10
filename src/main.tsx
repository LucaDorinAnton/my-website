import React from 'react'
import ReactDOM from 'react-dom/client'
import { createBrowserRouter, RouterProvider } from 'react-router-dom'
import Index from './routes/Index' 
import Error404 from './errors/404'
import './index.css'


const router = createBrowserRouter([
  {
    path: '/',
    element: <Index />,
    errorElement: <Error404 />
  },
]);

ReactDOM.createRoot(document.getElementById('root') as HTMLElement).render(
  <React.StrictMode>
    <RouterProvider router={router} />
  </React.StrictMode>
)
