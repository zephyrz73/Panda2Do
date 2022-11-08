// import "./components/homePrompt"

import React from 'react';
import { createRoot } from 'react-dom/client';
import App from './App';
const container = document.getElementById('root');
const root = createRoot(container);
import { BrowserRouter } from "react-router-dom";

document.addEventListener('DOMContentLoaded', () => {
  root.render(
  <BrowserRouter>
    <App/>
  </BrowserRouter>
  );
});
