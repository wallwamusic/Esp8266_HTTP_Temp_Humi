print('Setting up WIFI...')
station_cfg={}
station_cfg.ssid="wallwamusic"
station_cfg.pwd="12345678"
station_cfg.save=false
wifi.setmode(wifi.STATION)
wifi.sta.config(station_cfg)

--循环连接wifi
--60秒进行一次上传
tmr.alarm(1, 60000, tmr.ALARM_AUTO, function()
    if wifi.sta.getip() == nil then
        print('Waiting for IP ...')
    else
        print('IP is ' .. wifi.sta.getip())
        dofile("tempandhumi.lua")
    end
end)
