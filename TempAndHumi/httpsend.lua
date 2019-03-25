address = "http://xx.xx.203.167:8080/watertest/upload.action?tempvalue="..temp.."&humivalue="..humi
http.get(address, nil, function(code, data)
    if (code < 0) then
      print("HTTP request failed")
    else
      print(code, data)
    end
  end)
