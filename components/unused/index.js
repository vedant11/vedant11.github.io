import {createRoot} from 'react-dom/client';

console.log("hello")
function BaseComponent() {
console.log("hello")
return <div>BaseComponent</div>;
}

// Render your React component instead
const root = createRoot(document.getElementById('rendering-base'));
root.render(BaseComponent);
