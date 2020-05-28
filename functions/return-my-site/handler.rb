def get_file_as_string(filename)
    data = ''
    f = File.open(filename, "r") 
    f.each_line do |line|
      data += line
    end
    return data
end

def return_my_site(event:, context:)
    html =  get_file_as_string("static/index.html")
    {
    statusCode: 200,
    headers: {
    'Content-Type': 'text/html',
    },
    body: String(html),
    }
end