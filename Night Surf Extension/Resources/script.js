function activateDarkMode(){
    var dark = document.createElement('style');

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
    document.head.appendChild(dark);
}
//To take action after the document loads, listen for the DOMContentLoaded event
document.addEventListener("DOMContentLoaded",function(event){
    activateDarkMode();
});

safari.extension.dispatchMessage("load")
safari.self.addEventListener("message", ({name, message}) => {
  const handler = messageHandlers[name]
  if (handler) {
    handler(message)
  }
})

