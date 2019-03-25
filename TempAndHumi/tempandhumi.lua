--对应nodemcu引脚D2
pin=2
status,temp,humi,temp_dec,humi_dec=dht.read(pin)
if status == dht.OK then
    print("DHT Temperature:"..temp..";".."Humidity:"..humi)
    dofile("httpsend.lua")
elseif status == dht.ERROR_CHECKSUM then
    print("DHT Checksum error.")
elseif status ==dht.ERROR_TIMEOUT then
    print("DHT timed out.")
end

