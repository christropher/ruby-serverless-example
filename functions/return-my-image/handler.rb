require 'base64'

def return_my_image(event:, context:)
  {
    statusCode: 200,
    headers: {
      'Content-type': 'image/jpeg',
      'content-disposition': 'attachment; filename=me.jpeg'
    },
    body: Base64.encode64(File.open("static/index.html", "rb").read),
    isBase64Encoded: true
  }
end