//DISABLED IN INFO.plist!
//Injecting the dark mode into active Page
document.addEventListener("DOMContentLoaded", function(event) {
    applyDarkTheme();
});
// Check if dark mode is enabled
function isDarkModeEnabled() {
    console.log("Is dark mode enabled?", isDarkModeEnabled);
    return window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches;
}

// Apply dark theme

var dark = document.createElement('style')

dark.textContent = `
  html {
    background-color: #ddd;
    filter: hue-rotate(180deg) invert(100%) !important;
  }
  :root{
    color-scheme: dark;
  }
  body {
    margin: 0;
    background-color: #ddd;
  }
  
  iframe, img, video, canvas {
  filter: hue-rotate(180deg) invert(100%) !important;
  }
  `
function applyDarkTheme(){
    if (isDarkModeEnabled){
        document.head.appendChild(dark)
    }
    else
        console.log("Dark mode is already active", isDarkModeEnabled)
        return;
}
