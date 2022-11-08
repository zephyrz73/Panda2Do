// import "./components/homePrompt"

import React from 'react';
import { createRoot } from 'react-dom/client';
import HelloMessage from './App';

console.log('first')
const container = document.getElementById('root');
const root = createRoot(container);

document.addEventListener('DOMContentLoaded', () => {
  root.render(<HelloMessage name="World" />);
});
