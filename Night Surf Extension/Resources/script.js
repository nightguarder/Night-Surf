document.addEventListener("DOMContentLoaded", function(event) {
    safari.extension.dispatchMessage("Hello World!");
});
safari.extension.dispatchMessage("load")
safari.self.addEventListener("message", ({name, message}) => {
  const handler = messageHandlers[name]
  if (handler) {
    handler(message)
  }
})

