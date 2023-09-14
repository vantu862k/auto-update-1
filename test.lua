require("AT-func")
local json = require"json"
sleep(2500)
Port = Ports()
mangPort = splitString(Port,":")
::batdaulai::
sleep(randomSo(10,30)*100)
May = readFileString("/private/var/mobile/Library/AutoTouch/Scripts/May.txt")
function RandomApp()
    chayApp = randomSo(1,24)
    if chayApp == 1 then
        toast("Google",3)
        Google()
    elseif chayApp == 2 then
        toast("Safari",3)
        Safari()
    elseif chayApp == 3 then
        toast("Firefoxfocus",3)
        Firefoxfocus()
    elseif chayApp == 4 then
        toast("Opera",3)
        Opera()
    elseif chayApp == 5 then
        toast("OperaGX",3)
        OperaGX()
    elseif chayApp == 6 then
        toast("Firefox",3)
        Firefox()
    elseif chayApp == 7 then
        toast("Yandex",3)
        Yandex()
    elseif chayApp == 8 then
        toast("CocCoc",3)
        CocCoc()
    elseif chayApp == 9 then
        toast("Edge",3)
        Edge()
    elseif chayApp == 10 then
        toast("CryptoTab",3)
        CryptoTab()
    elseif chayApp == 11 then
        toast("Chrome",3)
        Chrome()
    elseif chayApp == 12 then
        toast("Bolt",3)
        Bolt()
    elseif chayApp == 13 then
        toast("Aloha",3)
        Aloha()
    elseif chayApp == 14 then
        toast("Ping",3)
        Ping()
    elseif chayApp == 15 then
        toast("Diigo",3)
        Diigo()
    elseif chayApp == 16 then
        toast("Ghost",3)
        Ghost()
    elseif chayApp == 17 then
        toast("Crypto",3)
        Crypto()
    elseif chayApp == 18 then
        toast("Maxthon",3)
        Maxthon()
    elseif chayApp == 19 then
        toast("Ocean",3)
        Ocean()
    elseif chayApp == 20 then
        toast("Puma",3)
        Puma()
    elseif chayApp == 21 then
        toast("Pure",3)
        Pure()
    elseif chayApp == 23 then
        toast("Ecosia",3)
        Ecosia()
    elseif chayApp == 24 then
        toast("Dolphin",3)
        Dolphin()
    elseif chayApp == 22 then
        toast("Webbrowser",3)
        Webbrowser()
    end
end

function Google()
    if readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt") then
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        if #sl_ok == 10 then
            writeFile("OK.txt","","w")
            alert("Đã xong 10 mail")
            at.stop()
        else
            sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
            if #sl_xit == 5 then
                writeFile("Xit.txt","","w")
                alert("Đã xịt 5 lần liên tục, nghỉ mai reg")
                at.stop()
            end
        end
    else
        writeFile("OK.txt","","w")
        sleep(500)
        writeFile("Xit.txt","","w")
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
    end
    toast("Đã reg: "..#sl_ok..", đã xịt: "..#sl_xit.." liên tục")
    sleep(2000)
    ChangeIPOBC()
    appRun(id_Google);
    app = "Google"
    sleep(randomSo(60,80)*100)
    if isImage("khongGG.png") then
        clickImage("khongGG.png")
        sleep(randomSo(7,10)*100)
    end
    while not isImage("timKiemGG.png") do
        sleep(randomSo(3,5)*100)
        if isImage("timKiem_2_GG.png") then
            break
        end
    end
    if isImage("timKiemGG.png") then
        clickImage("timKiemGG.png")
        sleep(randomSo(10,15)*100)
    elseif isImage("timKiem_2_GG.png") then
        clickImage("timKiem_2_GG.png")
        sleep(randomSo(10,15)*100)
    end
    sleep(randomSo(7,10)*100)
    inputKey("gmailabout")
    sleep(randomSo(4,7)*100)
    tap(656,1286)
    sleep(randomSo(10,15)*100)
    RegGmail1()
    RegGmailgiaidoan22()
    while not isImage("mailKPxanh.png") do
        sleep(randomSo(4,7)*100)
        if isImage("verrySDTGG.png") then
            writeLineFile("Xit.txt","1","a")
            sleep(500)
            ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
            get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
            time = json.decode(get)["datetime"]
            get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
            goto xoadataGG
        end
    end
    if isImage("mailKPxanh.png") then
        urlImage = "/private/var/mobile/Library/AutoTouch/Scripts/images/mailKPxanh.png"
        result = findImage(urlImage,1,0.99,nil,false)
        tap(result[1][1]+(randomSo(10,30)*10),(result[1][2]+(randomSo(3,5)*10)))
        sleep(randomSo(10,20)*100)
    end
    mailRecovery = Recovery()
    inputKey(mailRecovery)
    sleep(randomSo(4,7)*100)
    writeLineFile("OK.txt","1","a")
    sleep(1000)
    writeFile("Xit.txt","","w")
    ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
    get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
    time = json.decode(get)["datetime"]
    get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?email="..email.."@gmail.com".."&pass="..pass.."&recovery="..mailRecovery.."&tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
    while not isImage("tiepTheoXanhTrang.png") do
        sleep(100)
    end
    sleep(randomSo(4,7)*100)
    clickImage("tiepTheoXanhTrang.png")
    sleep(randomSo(10,15)*100)
    while not isImage("soDT_BoQua.png") do
        sleep(100)
    end
    while isImage("soDT_BoQua.png") do
        sleep(randomSo(5,15)*100)
        clickImage("boQuaXanhTrang.png")
        sleep(randomSo(10,20)*100)
    end
    while not isImage("tiepTheoTen.png") do
        sleep(100)
        if isImage("tieptheoNew2.png") then
            break
        end
    end
    if isImage("tiepTheoTen.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tiepTheoTen.png")
        sleep(randomSo(10,30)*100)
    elseif isImage("tieptheoNew2.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tieptheoNew2.png")
        sleep(randomSo(10,30)*100)
    end
    while not isImage("ThanhCong.png") do
        sleep(randomSo(4,7)*100)
    end
    while not isImage("toiDongYGG.png") do
        sleep(randomSo(4,7)*100)
        moveTo(356,854,356,362)
        sleep(1500)
    end
    while isImage("toiDongYGG.png") do
        clickImage("toiDongYGG.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("okGmailGG.png") do
        sleep(randomSo(4,7)*100)
        if (isImage("TaiUngDung.png") or isImage("openTheApp.png") or isImage("moUngDung.png") or isImage("BTVietGG.png") or isImage("XongMail.png") or isImage("loi502.png") or isImage("loi400.png")) then
            break
        end
    end
    sleep(randomSo(10,15)*100)
    rCho = randomSo(8,14)
    for i =1,rCho do
        sleep(randomSo(60,80)*100)
        if (isImage("TaiUngDung.png") or isImage("okGmailGG.png")) then
            sleep(randomSo(4,7)*100)
            moveTo(344, 1001,348,  528)
            sleep(2500)
            if isImage("KhongQuanTam.png") then
                clickImage("KhongQuanTam.png")
                sleep(randomSo(10,15)*100)
            end
        end
        toast("chờ tý",5)
    end
    ::xoadataGG::
    sleep(randomSo(4,7)*100)
    sleep(randomSo(10,15)*100)
    while not isImage("ThungracGG.png") do
        sleep(randomSo(3,5)*100)
        if isImage("tabGG.png") then
            clickImage("tabGG.png")
            sleep(randomSo(7,10)*100)
        end
        if isImage("ThungracGG_2.png") then
            break
        end
    end
    if isImage("ThungracGG.png") then
        clickImage("ThungracGG.png")
        sleep(randomSo(10,15)*100)
    elseif isImage("ThungracGG_2.png") then
        clickImage("ThungracGG_2.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("dongTatCaTabGG.png") do
        sleep(randomSo(3,5)*100)
        if isImage("ThungracGG.png") then
            clickImage("ThungracGG.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("ThungracGG_2.png") then
            clickImage("ThungracGG_2.png")
            sleep(randomSo(10,15)*100)
        end
    end
    while isImage("dongTatCaTabGG.png") do
        clickImage("dongTatCaTabGG.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("XongTabGG.png") do
        sleep(randomSo(3,5)*100)
    end
    clickImage("XongTabGG.png")
    sleep(randomSo(10,20)*100)
    while not isImage("timKiemGG.png") do
        sleep(randomSo(3,5)*100)
        if isImage("timKiem_2_GG.png") then
            break
        end
    end
    while not isImage("caiDatGG.png") do
        sleep(randomSo(3,5)*100)
        if (isImage("timKiemGG.png") or isImage("timKiem_2_GG.png")) then
            sleep(randomSo(3,5)*100)
            tap(693,   94)
            sleep(randomSo(10,20)*100)
        end
    end
    clickImage("caiDatGG.png")
    sleep(randomSo(10,20)*100)
    while not isImage("XoaTatcaGG.png") do
        sleep(randomSo(3,5)*100)
        if isImage("caiDatGG.png") then
            clickImage("caiDatGG.png")
            sleep(randomSo(7,10)*100)
        elseif isImage("riengtuGG.png") then
            clickImage("riengtuGG.png")
            sleep(randomSo(7,10)*100)
        elseif isImage("XoaCookieGG.png") then
            clickImage("XoaCookieGG.png")
            sleep(randomSo(7,10)*100)
        elseif isImage("lichSuGG.png") then
            clickImage("lichSuGG.png")
            sleep(randomSo(7,10)*100)
        end
    end
    clickImage("XoaTatcaGG.png")
    sleep(randomSo(10,20)*100)
    while not isImage("daXoaCookieGG.png") do
        sleep(randomSo(3,5)*100)
        if isImage("XoaTatcaGG.png") then
            clickImage("XoaTatcaGG.png")
            sleep(randomSo(7,10)*100)
        end
    end
    while not isImage("XoaTatcaGG.png") do
        sleep(randomSo(3,5)*100)
        if isImage("lichsuUngdungGG.png") then
            clickImage("lichsuUngdungGG.png")
            sleep(randomSo(7,10)*100)
        elseif isImage("xoaTatCaDenGG.png") then
            clickImage("xoaTatCaDenGG.png")
            sleep(randomSo(7,10)*100)
        end
    end
    while isImage("XoaTatcaGG.png") do
        clickImage("XoaTatcaGG.png")
        sleep(randomSo(10,20)*100)
    end
    vuotApp()
    sleep(1500)
    toast("Xong 1 mail")
    sleep(3000)
    toast("Bắt đầu lại")
    RandomApp()
end

function Safari()
    if readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt") then
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        if #sl_ok == 10 then
            writeFile("OK.txt","","w")
            alert("Đã xong 10 mail")
            at.stop()
        else
            sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
            if #sl_xit == 5 then
                writeFile("Xit.txt","","w")
                alert("Đã xịt 5 lần liên tục, nghỉ mai reg")
                at.stop()
            end
        end
    else
        writeFile("OK.txt","","w")
        sleep(500)
        writeFile("Xit.txt","","w")
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
    end
    toast("Đã reg: "..#sl_ok..", đã xịt: "..#sl_xit.." liên tục")
    sleep(2000)
    ChangeIPOBC()
    appRun(id_Safari);
    app = "Safari"
    sleep(randomSo(20,30)*100)
    while not isImage("nhapWebSafari.png") do
        sleep(randomSo(3,5)*100)
    end
    sleep(randomSo(10,50)*100)
    clickImage("nhapWebSafari.png")
    sleep(randomSo(10,20)*100)
    sleep(randomSo(7,10)*100)
    inputKey("gmailabout")
    sleep(randomSo(4,7)*100)
    tap(656,1286)
    sleep(randomSo(10,15)*100)
    RegGmail1()
    RegGmailgiaidoan2()
    while not isImage("mailKPxanh.png") do
        sleep(randomSo(4,7)*100)
        if isImage("verrySDTGG.png") then
            writeLineFile("Xit.txt","1","a")
            sleep(randomSo(5,7)*100)
            ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
            get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
            time = json.decode(get)["datetime"]
            get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
            goto xoadataSafari
        end
    end
    if isImage("mailKPxanh.png") then
        urlImage = "/private/var/mobile/Library/AutoTouch/Scripts/images/mailKPxanh.png"
        result = findImage(urlImage,1,0.99,nil,false)
        tap(result[1][1]+(randomSo(10,30)*10),(result[1][2]+(randomSo(3,5)*10)))
        sleep(randomSo(10,20)*100)
    end
    mailRecovery = Recovery()
    inputKey(mailRecovery)
    sleep(randomSo(4,7)*100)
    writeLineFile("OK.txt","1","a")
    sleep(1000)
    writeFile("Xit.txt","","w")
    ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
    get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
    time = json.decode(get)["datetime"]
    get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?email="..email.."@gmail.com".."&pass="..pass.."&recovery="..mailRecovery.."&tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
    while not isImage("tiepTheoXanhTrang.png") do
        sleep(100)
    end
    sleep(randomSo(4,7)*100)
    clickImage("tiepTheoXanhTrang.png")
    sleep(randomSo(10,15)*100)
    while not isImage("soDT_BoQua.png") do
        sleep(100)
    end
    while isImage("soDT_BoQua.png") do
        sleep(randomSo(5,15)*100)
        clickImage("boQuaXanhTrang.png")
        sleep(randomSo(10,20)*100)
    end
    while not isImage("tiepTheoTen.png") do
        sleep(100)
        if isImage("tieptheoNew2.png") then
            break
        end
    end
    if isImage("tiepTheoTen.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tiepTheoTen.png")
        sleep(randomSo(10,30)*100)
    elseif isImage("tieptheoNew2.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tieptheoNew2.png")
        sleep(randomSo(10,30)*100)
    end
    while not isImage("ThanhCong.png") do
        sleep(randomSo(4,7)*100)
    end
    while not isImage("toiDongYGG.png") do
        sleep(randomSo(4,7)*100)
        moveTo(356,854,356,362)
        sleep(1500)
    end
    while isImage("toiDongYGG.png") do
        clickImage("toiDongYGG.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("okGmailGG.png") do
        sleep(randomSo(4,7)*100)
        if (isImage("TaiUngDung.png") or isImage("openTheApp.png") or isImage("moUngDung.png") or isImage("BTVietGG.png") or isImage("XongMail.png") or isImage("loi502.png") or isImage("loi400.png")) then
            break
        end
    end
    sleep(randomSo(10,15)*100)
    rCho = randomSo(8,14)
    for i =1,rCho do
        sleep(randomSo(60,80)*100)
        if (isImage("TaiUngDung.png") or isImage("okGmailGG.png")) then
            sleep(randomSo(4,7)*100)
            moveTo(344, 1001,348,  528)
            sleep(2500)
            if isImage("KhongQuanTam.png") then
                clickImage("KhongQuanTam.png")
                sleep(randomSo(10,15)*100)
            end
        end
        toast("chờ tý",5)
    end
    ::xoadataSafari::
    sleep(randomSo(4,7)*100)
    sleep(randomSo(10,15)*100)
    vuotApp()
    sleep(randomSo(5,7)*100)
    while not isImage("daVaoSafari.png") do
        openURL("prefs:root=SAFARI")
        sleep(randomSo(10,20)*100)
        for i=1,10 do
            sleep(randomSo(5,7)*100)
            if isImage("daVaoSafari.png") then
                break
            end
        end   
    end
    while not isImage("daVaoSafari.png") do
        sleep(randomSo(5,7)*100)
    end
    while not isImage("xoalichsuSafari.png") do
        sleep(randomSo(5,7)*100)
        moveTo(376,  638,376,  364)
        sleep(randomSo(20,30)*100)
    end
    clickImage("xoalichsuSafari.png")
    sleep(randomSo(10,15)*100)
    while not isImage("xoalichsudenSafari.png") do
        sleep(randomSo(5,7)*100)
        if isImage("xoalichsuSafari.png") then
            clickImage("xoalichsuSafari.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("xoaDataDoSafari.png") then
            clickImage("xoaDataDoSafari.png")
            sleep(randomSo(10,15)*100)
        end
    end
    sleep(500)
    vuotApp()
    sleep(1500)
    toast("Xong 1 mail")
    sleep(3000)
    toast("Bắt đầu lại")
    RandomApp()
end

function Firefoxfocus()
    if readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt") then
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        if #sl_ok == 10 then
            writeFile("OK.txt","","w")
            alert("Đã xong 10 mail")
            at.stop()
        else
            sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
            if #sl_xit == 5 then
                writeFile("Xit.txt","","w")
                alert("Đã xịt 5 lần liên tục, nghỉ mai reg")
                at.stop()
            end
        end
    else
        writeFile("OK.txt","","w")
        sleep(500)
        writeFile("Xit.txt","","w")
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
    end
    toast("Đã reg: "..#sl_ok..", đã xịt: "..#sl_xit.." liên tục")
    sleep(2000)
    ChangeIPOBC()
    appRun(id_FirefoxFocus);
    app = "FirefoxFocus"
    while not isImage("timKiemFocus.png") do
        sleep(randomSo(3,5)*100)
    end
    sleep(randomSo(10,20)*100)
    sleep(randomSo(7,10)*100)
    inputKey("gmailabout")
    sleep(randomSo(4,7)*100)
    tap(656,1286)
    sleep(randomSo(10,15)*100)
    RegGmail1()
    RegGmailgiaidoan2()
    while not isImage("mailKPxanh.png") do
        sleep(randomSo(4,7)*100)
        if isImage("verrySDTGG.png") then
            writeLineFile("Xit.txt","1","a")
            sleep(randomSo(5,7)*100)
            ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
            get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
            time = json.decode(get)["datetime"]
            get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
            goto xoadataFocus
        end
    end
    if isImage("mailKPxanh.png") then
        urlImage = "/private/var/mobile/Library/AutoTouch/Scripts/images/mailKPxanh.png"
        result = findImage(urlImage,1,0.99,nil,false)
        tap(result[1][1]+(randomSo(10,30)*10),(result[1][2]+(randomSo(3,5)*10)))
        sleep(randomSo(10,20)*100)
    end
    mailRecovery = Recovery()
    inputKey(mailRecovery)
    sleep(randomSo(4,7)*100)
    writeLineFile("OK.txt","1","a")
    sleep(1000)
    writeFile("Xit.txt","","w")
    ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
    get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
    time = json.decode(get)["datetime"]
    get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?email="..email.."@gmail.com".."&pass="..pass.."&recovery="..mailRecovery.."&tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
    while not isImage("tiepTheoXanhTrang.png") do
        sleep(100)
    end
    sleep(randomSo(4,7)*100)
    clickImage("tiepTheoXanhTrang.png")
    sleep(randomSo(10,15)*100)
    while not isImage("soDT_BoQua.png") do
        sleep(100)
    end
    while isImage("soDT_BoQua.png") do
        sleep(randomSo(5,15)*100)
        clickImage("boQuaXanhTrang.png")
        sleep(randomSo(10,20)*100)
    end
    while not isImage("tiepTheoTen.png") do
        sleep(100)
        if isImage("tieptheoNew2.png") then
            break
        end
    end
    if isImage("tiepTheoTen.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tiepTheoTen.png")
        sleep(randomSo(10,30)*100)
    elseif isImage("tieptheoNew2.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tieptheoNew2.png")
        sleep(randomSo(10,30)*100)
    end
    while not isImage("ThanhCong.png") do
        sleep(randomSo(4,7)*100)
    end
    while not isImage("toiDongYGG.png") do
        sleep(randomSo(4,7)*100)
        moveTo(356,854,356,362)
        sleep(1500)
    end
    while isImage("toiDongYGG.png") do
        clickImage("toiDongYGG.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("okGmailGG.png") do
        sleep(randomSo(4,7)*100)
        if (isImage("TaiUngDung.png") or isImage("openTheApp.png") or isImage("moUngDung.png") or isImage("BTVietGG.png") or isImage("XongMail.png") or isImage("loi502.png") or isImage("loi400.png")) then
            break
        end
    end
    sleep(randomSo(10,15)*100)
    rCho = randomSo(8,14)
    for i =1,rCho do
        sleep(randomSo(60,80)*100)
        if (isImage("TaiUngDung.png") or isImage("okGmailGG.png")) then
            sleep(randomSo(4,7)*100)
            moveTo(344, 1001,348,  528)
            sleep(2500)
            if isImage("KhongQuanTam.png") then
                clickImage("KhongQuanTam.png")
                sleep(randomSo(10,15)*100)
            end
        end
        toast("chờ tý",5)
    end
    ::xoadataFocus::
    sleep(randomSo(4,7)*100)
    sleep(randomSo(10,15)*100)
    while not isImage("XoalichsuFocus.png") do
        sleep(randomSo(4,7)*100)
    end
    while not isImage("XoalichsuFocus.png") do
        sleep(randomSo(4,7)*100)
        clickImage("XoalichsuFocus.png")
        sleep(randomSo(20,30)*100)
    end
    vuotApp()
    sleep(1500)
    toast("Xong 1 mail")
    sleep(3000)
    toast("Bắt đầu lại")
    RandomApp()
end

function Opera()
    if readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt") then
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        if #sl_ok == 10 then
            writeFile("OK.txt","","w")
            alert("Đã xong 10 mail")
            at.stop()
        else
            sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
            if #sl_xit == 5 then
                writeFile("Xit.txt","","w")
                alert("Đã xịt 5 lần liên tục, nghỉ mai reg")
                at.stop()
            end
        end
    else
        writeFile("OK.txt","","w")
        sleep(500)
        writeFile("Xit.txt","","w")
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
    end
    toast("Đã reg: "..#sl_ok..", đã xịt: "..#sl_xit.." liên tục")
    sleep(2000)
    ChangeIPOBC()
    appRun(id_opera);
    app = "opera"
    while not isImage("huyOpera.png") do
        sleep(randomSo(3,5)*100)
        if isImage("khongCamOn_Opera.png") then
            clickImage("khongCamOn_Opera.png")
            sleep(randomSo(7,10)*100)
        end
        if isImage("timKiemOpera.png") then
            clickImage("timKiemOpera.png")
            sleep(randomSo(10,15)*100)
        end
        if not isImage("huyOpera.png") then
            sleep(randomSo(3,5)*100)
            tap(675,223)
            sleep(randomSo(10,15)*100)
        end
    end
    sleep(randomSo(10,20)*100)
    sleep(randomSo(7,10)*100)
    inputKey("gmailabout")
    sleep(randomSo(4,7)*100)
    tap(656,1286)
    sleep(randomSo(10,15)*100)
    RegGmail1()
    RegGmailgiaidoan2()
    while not isImage("mailKPxanh.png") do
        sleep(randomSo(4,7)*100)
        if isImage("verrySDTGG.png") then
            writeLineFile("Xit.txt","1","a")
            sleep(randomSo(5,7)*100)
            ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
            get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
            time = json.decode(get)["datetime"]
            get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
            goto xoadataOpera
        end
    end
    if isImage("mailKPxanh.png") then
        urlImage = "/private/var/mobile/Library/AutoTouch/Scripts/images/mailKPxanh.png"
        result = findImage(urlImage,1,0.99,nil,false)
        tap(result[1][1]+(randomSo(10,30)*10),(result[1][2]+(randomSo(3,5)*10)))
        sleep(randomSo(10,20)*100)
    end
    mailRecovery = Recovery()
    inputKey(mailRecovery)
    sleep(randomSo(4,7)*100)
    writeLineFile("OK.txt","1","a")
    sleep(1000)
    writeFile("Xit.txt","","w")
    ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
    get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
    time = json.decode(get)["datetime"]
    get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?email="..email.."@gmail.com".."&pass="..pass.."&recovery="..mailRecovery.."&tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
    while not isImage("tiepTheoXanhTrang.png") do
        sleep(100)
    end
    sleep(randomSo(4,7)*100)
    clickImage("tiepTheoXanhTrang.png")
    sleep(randomSo(10,15)*100)
    while not isImage("soDT_BoQua.png") do
        sleep(100)
    end
    while isImage("soDT_BoQua.png") do
        sleep(randomSo(5,15)*100)
        clickImage("boQuaXanhTrang.png")
        sleep(randomSo(10,20)*100)
    end
    while not isImage("tiepTheoTen.png") do
        sleep(100)
        if isImage("tieptheoNew2.png") then
            break
        end
    end
    if isImage("tiepTheoTen.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tiepTheoTen.png")
        sleep(randomSo(10,30)*100)
    elseif isImage("tieptheoNew2.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tieptheoNew2.png")
        sleep(randomSo(10,30)*100)
    end
    while not isImage("ThanhCong.png") do
        sleep(randomSo(4,7)*100)
    end
    while not isImage("toiDongYGG.png") do
        sleep(randomSo(4,7)*100)
        moveTo(356,854,356,362)
        sleep(1500)
    end
    while isImage("toiDongYGG.png") do
        clickImage("toiDongYGG.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("okGmailGG.png") do
        sleep(randomSo(4,7)*100)
        if (isImage("TaiUngDung.png") or isImage("openTheApp.png") or isImage("moUngDung.png") or isImage("BTVietGG.png") or isImage("XongMail.png") or isImage("loi502.png") or isImage("loi400.png")) then
            break
        end
    end
    sleep(randomSo(10,15)*100)
    rCho = randomSo(8,14)
    for i =1,rCho do
        sleep(randomSo(60,80)*100)
        if (isImage("TaiUngDung.png") or isImage("okGmailGG.png")) then
            sleep(randomSo(4,7)*100)
            moveTo(344, 1001,348,  528)
            sleep(2500)
            if isImage("KhongQuanTam.png") then
                clickImage("KhongQuanTam.png")
                sleep(randomSo(10,15)*100)
            end
        end
        toast("chờ tý",5)
    end
    ::xoadataOpera::
    sleep(randomSo(4,7)*100)
    sleep(randomSo(10,15)*100)
    while not isImage("dongOpera.png") do
        sleep(randomSo(4,7)*100)
        if isImage("tabOpera.png") then
            clickImage("tabOpera.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("dongTatCaOpera.png") then
            clickImage("dongTatCaOpera.png")
            sleep(randomSo(4,7)*100)
        end
    end
    while isImage("dongOpera.png") do
        sleep(randomSo(4,7)*100)
        clickImage("dongOpera.png")
        sleep(randomSo(20,30)*100)
    end
    while isImage("xongTabOpera.png") do
        sleep(randomSo(4,7)*100)
        clickImage("xongTabOpera.png")
        sleep(randomSo(20,30)*100)
    end
    while not isImage("xoaDulieuOpera.png") do
        sleep(randomSo(4,7)*100)
        if isImage("menuOpera.png") then
            clickImage("menuOpera.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("caiDatOpera.png") then
            clickImage("caiDatOpera.png")
            sleep(randomSo(4,7)*100)
        end
    end
    while isImage("xoaDulieuOpera.png") do
        sleep(randomSo(4,7)*100)
        clickImage("xoaDulieuOpera.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("xoaXamOpera.png") do
        sleep(randomSo(4,7)*100)
        if isImage("xoaDulieuOpera.png") then
            clickImage("xoaDulieuOpera.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("XoaXanhOpera.png") then
            break
        end
    end
    if isImage("xoaXamOpera.png") then
        sleep(randomSo(4,7)*100)
        tap(664,  278)
        sleep(randomSo(4,7)*100)
        tap(658,  429)
        sleep(randomSo(4,7)*100)
        tap(659,  573)
        sleep(randomSo(4,7)*100)
        tap(664,  747)
        sleep(randomSo(4,7)*100)
    end
    while not isImage("XoaXanhOpera.png") do
        sleep(randomSo(4,7)*100)
        if isImage("xoaXamOpera.png") then
            sleep(randomSo(4,7)*100)
            tap(664,  278)
            sleep(randomSo(4,7)*100)
            tap(658,  429)
            sleep(randomSo(4,7)*100)
            tap(659,  573)
            sleep(randomSo(4,7)*100)
            tap(664,  747)
            sleep(randomSo(4,7)*100)
        end
    end
    clickImage("XoaXanhOpera.png")
    sleep(randomSo(4,7)*100)
    while not isImage("daXoaOpera.png") do
        sleep(randomSo(3,5)*100)
        if isImage("xoadDuLieuDaChonOpera.png") then
            clickImage("xoadDuLieuDaChonOpera.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("XoaXanhOpera.png") then
            clickImage("XoaXanhOpera.png")
            sleep(randomSo(3,5)*100)
        end
    end
    vuotApp()
    sleep(1500)
    toast("Xong 1 mail")
    sleep(3000)
    toast("Bắt đầu lại")
    RandomApp()
end

function OperaGX()
    if readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt") then
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        if #sl_ok == 10 then
            writeFile("OK.txt","","w")
            alert("Đã xong 10 mail")
            at.stop()
        else
            sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
            if #sl_xit == 5 then
                writeFile("Xit.txt","","w")
                alert("Đã xịt 5 lần liên tục, nghỉ mai reg")
                at.stop()
            end
        end
    else
        writeFile("OK.txt","","w")
        sleep(500)
        writeFile("Xit.txt","","w")
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
    end
    toast("Đã reg: "..#sl_ok..", đã xịt: "..#sl_xit.." liên tục")
    sleep(2000)
    ChangeIPOBC()
    appRun(id_operaGX);
    app = "operaGX"
    while not isImage("huyOperaGX.png") do
        sleep(randomSo(3,5)*100)
        if isImage("timKiemOperaGX.png") then
            clickImage("timKiemOperaGX.png")
            sleep(randomSo(7,10)*100)
        end
    end
    sleep(randomSo(7,10)*100)
    sleep(randomSo(7,10)*100)
    inputKey("gmailabout")
    sleep(randomSo(4,7)*100)
    tap(656,1286)
    sleep(randomSo(10,15)*100)
    RegGmail1()
    RegGmailgiaidoan2()
    while not isImage("mailKPxanh.png") do
        sleep(randomSo(4,7)*100)
        if isImage("verrySDTGG.png") then
            writeLineFile("Xit.txt","1","a")
            sleep(500)
            ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
            get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
            time = json.decode(get)["datetime"]
            get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
            goto xoadataOperaGX
        end
    end
    if isImage("mailKPxanh.png") then
        urlImage = "/private/var/mobile/Library/AutoTouch/Scripts/images/mailKPxanh.png"
        result = findImage(urlImage,1,0.99,nil,false)
        tap(result[1][1]+(randomSo(10,30)*10),(result[1][2]+(randomSo(3,5)*10)))
        sleep(randomSo(10,20)*100)
    end
    mailRecovery = Recovery()
    inputKey(mailRecovery)
    sleep(randomSo(4,7)*100)
    writeLineFile("OK.txt","1","a")
    sleep(1000)
    writeFile("Xit.txt","","w")
    ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
    get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
    time = json.decode(get)["datetime"]
    get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?email="..email.."@gmail.com".."&pass="..pass.."&recovery="..mailRecovery.."&tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
    while not isImage("tiepTheoXanhTrang.png") do
        sleep(100)
    end
    sleep(randomSo(4,7)*100)
    clickImage("tiepTheoXanhTrang.png")
    sleep(randomSo(10,15)*100)
    while not isImage("soDT_BoQua.png") do
        sleep(100)
    end
    while isImage("soDT_BoQua.png") do
        sleep(randomSo(5,15)*100)
        clickImage("boQuaXanhTrang.png")
        sleep(randomSo(10,20)*100)
    end
    while not isImage("tiepTheoTen.png") do
        sleep(100)
        if isImage("tieptheoNew2.png") then
            break
        end
    end
    if isImage("tiepTheoTen.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tiepTheoTen.png")
        sleep(randomSo(10,30)*100)
    elseif isImage("tieptheoNew2.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tieptheoNew2.png")
        sleep(randomSo(10,30)*100)
    end
    while not isImage("ThanhCong.png") do
        sleep(randomSo(4,7)*100)
    end
    while not isImage("toiDongYGG.png") do
        sleep(randomSo(4,7)*100)
        moveTo(356,854,356,362)
        sleep(1500)
    end
    while isImage("toiDongYGG.png") do
        clickImage("toiDongYGG.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("okGmailGG.png") do
        sleep(randomSo(4,7)*100)
        if (isImage("TaiUngDung.png") or isImage("openTheApp.png") or isImage("moUngDung.png") or isImage("BTVietGG.png") or isImage("XongMail.png") or isImage("loi502.png") or isImage("loi400.png")) then
            break
        end
    end
    sleep(randomSo(10,15)*100)
    rCho = randomSo(8,14)
    for i =1,rCho do
        sleep(randomSo(60,80)*100)
        if (isImage("TaiUngDung.png") or isImage("okGmailGG.png")) then
            sleep(randomSo(4,7)*100)
            moveTo(344, 1001,348,  528)
            sleep(2500)
            if isImage("KhongQuanTam.png") then
                clickImage("KhongQuanTam.png")
                sleep(randomSo(10,15)*100)
            end
        end
        toast("chờ tý",5)
    end
    ::xoadataOperaGX::
    sleep(randomSo(5,7)*100)
    sleep(randomSo(10,15)*100)
    while not isImage("dongDoOperaGX.png") do
        sleep(randomSo(4,7)*100)
        if isImage("tabOperaGx.png") then
            clickImage("tabOperaGx.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("dongTatCaOperaGX.png") then
            clickImage("dongTatCaOperaGX.png")
            sleep(randomSo(4,7)*100)
        end
    end
    while isImage("dongDoOperaGX.png") do
        sleep(randomSo(4,7)*100)
        clickImage("dongDoOperaGX.png")
        sleep(randomSo(20,30)*100)
    end
    while isImage("xongTabOperaGX.png") do
        sleep(randomSo(4,7)*100)
        clickImage("xongTabOperaGX.png")
        sleep(randomSo(20,30)*100)
    end
    while not isImage("caiDatOperaGX.png") do
        sleep(randomSo(4,7)*100)
        if isImage("menuOperaGX.png") then
            clickImage("menuOperaGX.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("dongDoOperaGX.png") then
            clickImage("dongDoOperaGX.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("xongTabOperaGX.png") then
            clickImage("xongTabOperaGX.png")
            sleep(randomSo(4,7)*100)
        end
    end
    while isImage("caiDatOperaGX.png") do
        sleep(randomSo(4,7)*100)
        clickImage("caiDatOperaGX.png")
        sleep(randomSo(20,30)*100)
    end
    vuotGX()
    sleep(randomSo(40,50)*100)
    if isImageRegion("vaoXoaLSOperaGX.png",691, 1099, 731, 1235) then
        click("vaoXoaLSOperaGX.png",691, 1099, 731, 1235)
        sleep(randomSo(20,30)*100)
    end
    while not isImage("xoaDenOperaGX.png") do
        sleep(randomSo(4,7)*100)
        if isImageRegion("vaoXoaLSOperaGX.png",691, 1099, 731, 1235) then
            click("vaoXoaLSOperaGX.png",691, 1099, 731, 1235)
            sleep(randomSo(20,30)*100)
        end
    end
    if isImage("xoaDenOperaGX.png") then
        sleep(randomSo(4,7)*100)
        tap(181,  317)
        sleep(randomSo(7,10)*100)
        tap(201,  445)
        sleep(randomSo(7,10)*100)
        tap(205,  572)
        sleep(randomSo(7,10)*100)
        tap(183,  739)
        sleep(randomSo(7,10)*100)
        tap(186,  868)
        sleep(randomSo(7,10)*100)
    end
    while not isImage("xoaDoOperaGX.png") do
        sleep(randomSo(4,7)*100)
        if isImage("xoaDenOperaGX.png") then
            sleep(randomSo(4,7)*100)
            tap(181,  317)
            sleep(randomSo(7,10)*100)
            tap(201,  445)
            sleep(randomSo(7,10)*100)
            tap(205,  572)
            sleep(randomSo(7,10)*100)
            tap(183,  739)
            sleep(randomSo(7,10)*100)
            tap(186,  868)
            sleep(randomSo(7,10)*100)
        end
    end
    clickImage("xoaDoOperaGX.png")
    sleep(randomSo(4,7)*100)
    while not isImage("xoaXongOperaGX.png") do
        sleep(randomSo(4,7)*100)
        if isImage("xoaDoOperaGX.png") then
            clickImage("xoaDoOperaGX.png")
            sleep(randomSo(4,7)*100)
        end
    end
    vuotApp()
    sleep(1500)
    toast("Xong 1 mail")
    sleep(3000)
    toast("Bắt đầu lại")
    RandomApp()
end

function Firefox()
    if readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt") then
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        if #sl_ok == 10 then
            writeFile("OK.txt","","w")
            alert("Đã xong 10 mail")
            at.stop()
        else
            sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
            if #sl_xit == 5 then
                writeFile("Xit.txt","","w")
                alert("Đã xịt 5 lần liên tục, nghỉ mai reg")
                at.stop()
            end
        end
    else
        writeFile("OK.txt","","w")
        sleep(500)
        writeFile("Xit.txt","","w")
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
    end
    toast("Đã reg: "..#sl_ok..", đã xịt: "..#sl_xit.." liên tục")
    sleep(2000)
    ChangeIPOBC()
    appRun(id_Firefox);
    app = "Firefox"
    while not isImage("timKiemFirefox.png") do
        sleep(randomSo(3,5)*100)
        if isImage("timKiemFirefox2.png") then
            break
        end
    end
    sleep(randomSo(3,5)*100)
    if isImage("timKiemFirefox2.png") then
        clickImage("timKiemFirefox2.png")
        sleep(randomSo(15,20)*100)
        if isImage("timKiemFirefox2.png") then
            clickImage("timKiemFirefox2.png")
            sleep(randomSo(15,20)*100)
        end
    elseif isImage("timKiemFirefox.png") then
        clickImage("timKiemFirefox.png")
        sleep(randomSo(15,20)*100)
        if isImage("timKiemFirefox.png") then
            clickImage("timKiemFirefox.png")
            sleep(randomSo(15,20)*100)
        end
    end
    sleep(randomSo(10,15)*100)
    sleep(randomSo(7,10)*100)
    inputKey("gmailabout")
    sleep(randomSo(4,7)*100)
    tap(656,1286)
    sleep(randomSo(10,15)*100)
    RegGmail1()
    RegGmailgiaidoan2()
    while not isImage("mailKPxanh.png") do
        sleep(randomSo(4,7)*100)
        if isImage("verrySDTGG.png") then
            writeLineFile("Xit.txt","1","a")
            sleep(500)
            ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
            get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
            time = json.decode(get)["datetime"]
            get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
            goto xoadataFirefox
        end
    end
    if isImage("mailKPxanh.png") then
        urlImage = "/private/var/mobile/Library/AutoTouch/Scripts/images/mailKPxanh.png"
        result = findImage(urlImage,1,0.99,nil,false)
        tap(result[1][1]+(randomSo(10,30)*10),(result[1][2]+(randomSo(3,5)*10)))
        sleep(randomSo(10,20)*100)
    end
    mailRecovery = Recovery()
    inputKey(mailRecovery)
    sleep(randomSo(4,7)*100)
    writeLineFile("OK.txt","1","a")
    sleep(1000)
    writeFile("Xit.txt","","w")
    ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
    get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
    time = json.decode(get)["datetime"]
    get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?email="..email.."@gmail.com".."&pass="..pass.."&recovery="..mailRecovery.."&tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
    while not isImage("tiepTheoXanhTrang.png") do
        sleep(100)
    end
    sleep(randomSo(4,7)*100)
    clickImage("tiepTheoXanhTrang.png")
    sleep(randomSo(10,15)*100)
    while not isImage("soDT_BoQua.png") do
        sleep(100)
    end
    while isImage("soDT_BoQua.png") do
        sleep(randomSo(5,15)*100)
        clickImage("boQuaXanhTrang.png")
        sleep(randomSo(10,20)*100)
    end
    while not isImage("tiepTheoTen.png") do
        sleep(100)
        if isImage("tieptheoNew2.png") then
            break
        end
    end
    if isImage("tiepTheoTen.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tiepTheoTen.png")
        sleep(randomSo(10,30)*100)
    elseif isImage("tieptheoNew2.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tieptheoNew2.png")
        sleep(randomSo(10,30)*100)
    end
    while not isImage("ThanhCong.png") do
        sleep(randomSo(4,7)*100)
    end
    while not isImage("toiDongYGG.png") do
        sleep(randomSo(4,7)*100)
        moveTo(356,854,356,362)
        sleep(1500)
    end
    while isImage("toiDongYGG.png") do
        clickImage("toiDongYGG.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("okGmailGG.png") do
        sleep(randomSo(4,7)*100)
        if (isImage("TaiUngDung.png") or isImage("openTheApp.png") or isImage("moUngDung.png") or isImage("BTVietGG.png") or isImage("XongMail.png") or isImage("loi502.png") or isImage("loi400.png")) then
            break
        end
    end
    sleep(randomSo(10,15)*100)
    rCho = randomSo(8,14)
    for i =1,rCho do
        sleep(randomSo(60,80)*100)
        if (isImage("TaiUngDung.png") or isImage("okGmailGG.png")) then
            sleep(randomSo(4,7)*100)
            moveTo(344, 1001,348,  528)
            sleep(2500)
            if isImage("KhongQuanTam.png") then
                clickImage("KhongQuanTam.png")
                sleep(randomSo(10,15)*100)
            end
        end
        toast("chờ tý",5)
    end
    ::xoadataFirefox::
    sleep(randomSo(4,7)*100)
    sleep(randomSo(10,15)*100)
    while not isImage("dongTatCaTabFirefox.png") do
        sleep(randomSo(4,7)*100)
        if isImage("tabFirefox.png") then
            clickImage("tabFirefox.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("xoaTabFirefox.png") then
            clickImage("xoaTabFirefox.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("xoaTabFireFox2.PNG") then
            clickImage("xoaTabFireFox2.PNG")
            sleep(randomSo(4,7)*100)
        end
    end
    while isImage("dongTatCaTabFirefox.png") do
        sleep(randomSo(4,7)*100)
        clickImage("dongTatCaTabFirefox.png")
        sleep(randomSo(20,30)*100)
    end
    while not isImage("caiDatFirefox.png") do
        sleep(randomSo(4,7)*100)
        if isImage("menuOperaGX.png") then
            clickImage("menuOperaGX.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("dongTatCaTabFirefox.png") then
            clickImage("dongTatCaTabFirefox.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("menuFirefox.png") then
            clickImage("menuFirefox.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("menuFireFox2.PNG") then
            clickImage("menuFireFox2.PNG")
            sleep(randomSo(4,7)*100)
        end
    end
    while isImage("caiDatFirefox.png") do
        sleep(randomSo(4,7)*100)
        clickImage("caiDatFirefox.png")
        sleep(randomSo(20,30)*100)
    end
    while not isImage("quanLyDLFirefox.png") do
        sleep(randomSo(5,7)*100)
        moveTo(376,  638,376,  364)
        sleep(randomSo(25,35)*100)
    end
    clickImage("quanLyDLFirefox.png")
    sleep(randomSo(20,30)*100)
    while not isImage("xoaLichSuDenFirefox.png") do
        sleep(randomSo(4,7)*100)
        if isImage("quanLyDLFirefox.png") then
            clickImage("quanLyDLFirefox.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("okXoaFirefox.png") then
            clickImage("okXoaFirefox.png")
            sleep(randomSo(30,40)*100)
        elseif isImage("xoaDlDoFirefox.png") then
            clickImage("xoaDlDoFirefox.png")
            sleep(randomSo(4,7)*100)
        end
    end
    vuotApp()
    sleep(1500)
    toast("Xong 1 mail")
    sleep(3000)
    toast("Bắt đầu lại")
    RandomApp()
end

function Yandex()
    if readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt") then
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        if #sl_ok == 10 then
            writeFile("OK.txt","","w")
            alert("Đã xong 10 mail")
            at.stop()
        else
            sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
            if #sl_xit == 5 then
                writeFile("Xit.txt","","w")
                alert("Đã xịt 5 lần liên tục, nghỉ mai reg")
                at.stop()
            end
        end
    else
        writeFile("OK.txt","","w")
        sleep(500)
        writeFile("Xit.txt","","w")
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
    end
    toast("Đã reg: "..#sl_ok..", đã xịt: "..#sl_xit.." liên tục")
    sleep(2000)
    ChangeIPOBC()
    appRun(id_Yandex);
    app = "Yandex"
    sleep(randomSo(20,30)*100)
    while not isImage("timKiem_Yandex.png") do
        sleep(randomSo(4,7)*100)
        if isImage("howDo_Yandex.png") then
            sleep(randomSo(7,10)*100)
            tap(671,  407)
            sleep(randomSo(10,15)*100)
        end
        if isImage("baChamYandex.png") then
            break
        end
    end
    if isImage("baChamYandex.png") then
        sleep(randomSo(10,15)*100)
        tap(352,  684)
        sleep(randomSo(15,30)*100)
    elseif isImage("timKiem_Yandex.png") then
        clickImage("timKiem_Yandex.png")
        sleep(randomSo(15,20)*100)
    end
    sleep(randomSo(10,20)*100)
    rLink = randomSo(1,2)
    if rLink == 1 then
        sleep(randomSo(10,20)*100)
        inputText("google.com/gmail/about")
        sleep(randomSo(4,7)*100)
    else
        sleep(randomSo(10,20)*100)
        inputText("gmail.com")
        sleep(randomSo(4,7)*100)
    end
    sleep(randomSo(4,7)*100)
    tap(656,1286)
    sleep(randomSo(10,15)*100)
    while not isImage("taiGmail.png") do
        sleep(randomSo(4,7)*100)
        if isImage("taiGmail2.png") or isImage("taoTaiKhoanBrowser.png") or isImage("taoTaiKhoanBrowser2.png") then
            break
        end
        if isImage("xongBanPhimLam.png") then
            clickImage("xongBanPhimLam.png")
            sleep(randomSo(15,20)*100)
        end
    end
    sleep(randomSo(10,15)*100)
    if isImage("taiGmail.png") then
        clickImage("taiGmail.png")
        sleep(randomSo(10,15)*100)
    elseif isImage("taiGmail2.png") then
        clickImage("taiGmail2.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("hoNew.png") do
        sleep(randomSo(4,7)*100)
        if isImage("taiGmail.png") then
            clickImage("taiGmail.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("taiGmail2.png") then
            clickImage("taiGmail2.png")
            sleep(randomSo(10,15)*100)
        end
        if isImage("taoTaiKhoanBrowser.png") then 
            clickImage("taoTaiKhoanBrowser.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("taoTaiKhoanBrowser2.png") then 
            clickImage("taoTaiKhoanBrowser2.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("CaNhanToiBrowser.png") then
            clickImage("CaNhanToiBrowser.png")
            sleep(randomSo(10,15)*100)
        end
    end
    RegGmail2()
    RegGmailgiaidoan2()
    while not isImage("mailKPxanh.png") do
        sleep(randomSo(4,7)*100)
        if isImage("verrySDTGG.png") then
            writeLineFile("Xit.txt","1","a")
            sleep(1000)
            ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
            get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
            time = json.decode(get)["datetime"]
            get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
            goto xoadataYandex
        end
    end
    if isImage("mailKPxanh.png") then
        urlImage = "/private/var/mobile/Library/AutoTouch/Scripts/images/mailKPxanh.png"
        result = findImage(urlImage,1,0.99,nil,false)
        tap(result[1][1]+(randomSo(10,30)*10),(result[1][2]+(randomSo(3,5)*10)))
        sleep(randomSo(10,20)*100)
    end
    mailRecovery = Recovery()
    inputKey(mailRecovery)
    sleep(randomSo(4,7)*100)
    writeLineFile("OK.txt","1","a")
    sleep(1000)
    writeFile("Xit.txt","","w")
    ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
    get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
    time = json.decode(get)["datetime"]
    get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?email="..email.."@gmail.com".."&pass="..pass.."&recovery="..mailRecovery.."&tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
    while not isImage("tiepTheoXanhTrang.png") do
        sleep(100)
    end
    sleep(randomSo(4,7)*100)
    clickImage("tiepTheoXanhTrang.png")
    sleep(randomSo(10,15)*100)
    while not isImage("soDT_BoQua.png") do
        sleep(100)
    end
    while isImage("soDT_BoQua.png") do
        sleep(randomSo(5,15)*100)
        clickImage("boQuaXanhTrang.png")
        sleep(randomSo(10,20)*100)
    end
    while not isImage("tiepTheoTen.png") do
        sleep(100)
        if isImage("tieptheoNew2.png") then
            break
        end
    end
    if isImage("tiepTheoTen.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tiepTheoTen.png")
        sleep(randomSo(10,30)*100)
    elseif isImage("tieptheoNew2.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tieptheoNew2.png")
        sleep(randomSo(10,30)*100)
    end
    while not isImage("ThanhCong.png") do
        sleep(randomSo(4,7)*100)
    end
    while not isImage("toiDongYGG.png") do
        sleep(randomSo(4,7)*100)
        moveTo(356,854,356,362)
        sleep(1500)
    end
    while isImage("toiDongYGG.png") do
        clickImage("toiDongYGG.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("okGmailGG.png") do
        sleep(randomSo(4,7)*100)
        if (isImage("TaiUngDung.png") or isImage("openTheApp.png") or isImage("moUngDung.png") or isImage("BTVietGG.png") or isImage("XongMail.png") or isImage("loi502.png") or isImage("loi400.png")) then
            break
        end
    end
    sleep(randomSo(10,15)*100)
    rCho = randomSo(8,14)
    for i =1,rCho do
        sleep(randomSo(60,80)*100)
        if (isImage("TaiUngDung.png") or isImage("okGmailGG.png")) then
            sleep(randomSo(4,7)*100)
            moveTo(344, 1001,348,  528)
            sleep(2500)
            if isImage("KhongQuanTam.png") then
                clickImage("KhongQuanTam.png")
                sleep(randomSo(10,15)*100)
            end
        end
        toast("chờ tý",5)
    end
    ::xoadataYandex::
    sleep(randomSo(4,7)*100)
    sleep(randomSo(10,15)*100)
    while not isImage("closeTabYandex.png") do
        sleep(randomSo(4,7)*100)
        if isImage("tabYandex.png") then
            clickImage("tabYandex.png")
            sleep(randomSo(4,7)*100)
        end
    end
    while isImage("closeTabYandex.png") do
        sleep(randomSo(4,7)*100)
        clickImage("closeTabYandex.png")
        sleep(randomSo(20,30)*100)
    end
    while not isImage("caiDatYandex.png") do
        sleep(randomSo(4,7)*100)
        if isImage("baChamYandex.png") then
            clickImage("baChamYandex.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("timKiemYandex.png") then
            sleep(randomSo(4,7)*100)
            tap(673, 1286)
            sleep(randomSo(10,15)*100)
        elseif isImage("closeTabYandex.png") then
            clickImage("closeTabYandex.png")
            sleep(randomSo(4,7)*100)
        end
    end
    while isImage("caiDatYandex.png") do
        sleep(randomSo(4,7)*100)
        clickImage("caiDatYandex.png")
        sleep(randomSo(10,20)*100)
    end
    while not isImage("clearDataYandex.png") do
        sleep(randomSo(5,7)*100)
        moveTo(376,  638,376,  364)
        sleep(randomSo(25,35)*100)
    end
    clickImage("clearDataYandex.png")
    sleep(randomSo(10,20)*100)
    while not isImage("yesXoaYandex.png") do
        sleep(randomSo(4,7)*100)
        if isImage("clearDataYandex.png") then
            clickImage("clearDataYandex.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("clearYandex.png") then
            clickImage("clearYandex.png")
            sleep(randomSo(30,40)*100)
        end
    end
    clickImage("yesXoaYandex.png")
    sleep(randomSo(50,60)*100)
    while not isImage("clearYandex.png") do
        sleep(randomSo(4,7)*100)
        if isImage("yesXoaYandex.png") then
            clickImage("yesXoaYandex.png")
            sleep(randomSo(50,60)*100)
        end
    end
    vuotApp()
    sleep(1500)
    toast("Xong 1 mail")
    sleep(3000)
    toast("Bắt đầu lại")
    RandomApp()
end

function Edge()
    if readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt") then
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        if #sl_ok == 10 then
            writeFile("OK.txt","","w")
            alert("Đã xong 10 mail")
            at.stop()
        else
            sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
            if #sl_xit == 5 then
                writeFile("Xit.txt","","w")
                alert("Đã xịt 5 lần liên tục, nghỉ mai reg")
                at.stop()
            end
        end
    else
        writeFile("OK.txt","","w")
        sleep(500)
        writeFile("Xit.txt","","w")
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
    end
    toast("Đã reg: "..#sl_ok..", đã xịt: "..#sl_xit.." liên tục")
    sleep(2000)
    ChangeIPOBC()
    appRun(id_Edge);
    app = "Edge"
    sleep(randomSo(20,30)*100)
    while not isImage("timKiemEdge.png") do
        sleep(randomSo(3,5)*100)
        if isImage("timKiem_Edge.png") then
            break
        end
    end
    if isImage("timKiemEdge.png") then
        clickImage("timKiemEdge.png")
        sleep(randomSo(10,20)*100)
    elseif isImage("timKiem_Edge.png") then
        clickImage("timKiem_Edge.png")
        sleep(randomSo(10,20)*100)
    end
    rLink = randomSo(1,2)
    if rLink == 1 then
        sleep(randomSo(10,20)*100)
        inputKey("google.com/gmail/about")
        sleep(randomSo(4,7)*100)
    else
        sleep(randomSo(10,20)*100)
        inputKey("gmail.com")
        sleep(randomSo(4,7)*100)
    end
    sleep(randomSo(4,7)*100)
    tap(656,1286)
    sleep(randomSo(10,15)*100)
    while not isImage("taiGmail.png") do
        sleep(randomSo(4,7)*100)
        if isImage("taiGmail2.png") or isImage("taoTaiKhoanBrowser.png") or isImage("taoTaiKhoanBrowser2.png") then
            break
        end
        if isImage("hoanTatEdge.png") then
            clickImage("hoanTatEdge.png")
            sleep(1000)
        end
    end
    sleep(randomSo(10,15)*100)
    if isImage("taiGmail.png") then
        clickImage("taiGmail.png")
        sleep(randomSo(10,15)*100)
    elseif isImage("taiGmail2.png") then
        clickImage("taiGmail2.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("hoNew.png") do
        sleep(randomSo(4,7)*100)
        if isImage("taiGmail.png") then
            clickImage("taiGmail.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("taiGmail2.png") then
            clickImage("taiGmail2.png")
            sleep(randomSo(10,15)*100)
        end
        if isImage("taoTaiKhoanBrowser.png") then 
            clickImage("taoTaiKhoanBrowser.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("taoTaiKhoanBrowser2.png") then 
            clickImage("taoTaiKhoanBrowser2.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("CaNhanToiBrowser.png") then
            clickImage("CaNhanToiBrowser.png")
            sleep(randomSo(10,15)*100)
        end
        if isImage("hoanTatEdge.png") then
            clickImage("hoanTatEdge.png")
            sleep(1000)
        end
    end
    RegGmail2()
    RegGmailgiaidoan2()
    while not isImage("mailKPxanh.png") do
        sleep(randomSo(4,7)*100)
        if isImage("verrySDTGG.png") then
            writeLineFile("Xit.txt","1","a")
            sleep(randomSo(5,7)*100)
            ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
            get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
            time = json.decode(get)["datetime"]
            get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
            goto xoadataEdge
        end
    end
    if isImage("mailKPxanh.png") then
        urlImage = "/private/var/mobile/Library/AutoTouch/Scripts/images/mailKPxanh.png"
        result = findImage(urlImage,1,0.99,nil,false)
        tap(result[1][1]+(randomSo(10,30)*10),(result[1][2]+(randomSo(3,5)*10)))
        sleep(randomSo(10,20)*100)
    end
    mailRecovery = Recovery()
    inputKey(mailRecovery)
    sleep(randomSo(4,7)*100)
    writeLineFile("OK.txt","1","a")
    sleep(1000)
    writeFile("Xit.txt","","w")
    ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
    get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
    time = json.decode(get)["datetime"]
    get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?email="..email.."@gmail.com".."&pass="..pass.."&recovery="..mailRecovery.."&tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
    while not isImage("tiepTheoXanhTrang.png") do
        sleep(100)
    end
    sleep(randomSo(4,7)*100)
    clickImage("tiepTheoXanhTrang.png")
    sleep(randomSo(10,15)*100)
    while not isImage("soDT_BoQua.png") do
        sleep(100)
    end
    while isImage("soDT_BoQua.png") do
        sleep(randomSo(5,15)*100)
        clickImage("boQuaXanhTrang.png")
        sleep(randomSo(10,20)*100)
    end
    while not isImage("tiepTheoTen.png") do
        sleep(100)
        if isImage("tieptheoNew2.png") then
            break
        end
    end
    if isImage("tiepTheoTen.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tiepTheoTen.png")
        sleep(randomSo(10,30)*100)
    elseif isImage("tieptheoNew2.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tieptheoNew2.png")
        sleep(randomSo(10,30)*100)
    end
    while not isImage("ThanhCong.png") do
        sleep(randomSo(4,7)*100)
    end
    while not isImage("toiDongYGG.png") do
        sleep(randomSo(4,7)*100)
        moveTo(356,854,356,362)
        sleep(1500)
    end
    while isImage("toiDongYGG.png") do
        clickImage("toiDongYGG.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("okGmailGG.png") do
        sleep(randomSo(4,7)*100)
        if (isImage("TaiUngDung.png") or isImage("openTheApp.png") or isImage("moUngDung.png") or isImage("BTVietGG.png") or isImage("XongMail.png") or isImage("loi502.png") or isImage("loi400.png")) then
            break
        end
    end
    sleep(randomSo(10,15)*100)
    rCho = randomSo(8,14)
    for i =1,rCho do
        sleep(randomSo(60,80)*100)
        if (isImage("TaiUngDung.png") or isImage("okGmailGG.png")) then
            sleep(randomSo(4,7)*100)
            moveTo(344, 1001,348,  528)
            sleep(2500)
            if isImage("KhongQuanTam.png") then
                clickImage("KhongQuanTam.png")
                sleep(randomSo(10,15)*100)
            end
        end
        toast("chờ tý",5)
    end
    ::xoadataEdge::
    sleep(randomSo(4,7)*100)
    sleep(randomSo(10,15)*100)
    while not isImage("timKiemEdge.png") do
        sleep(randomSo(4,7)*100)
        if isImage("tabEdge.png") then
            clickImage("tabEdge.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("dongTatCaEdge.png") then
            clickImage("dongTatCaEdge.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("dongDoEdge.png") then
            clickImage("dongDoEdge.png")
            sleep(randomSo(4,7)*100)   
        end
    end
    if isImage("timKiemEdge.png") then
        sleep(randomSo(4,7)*100)
        tap(374, 1286)
        sleep(randomSo(20,30)*100)
    end
    while not isImage("xoaNgay_2_Edge.png") do
        sleep(randomSo(4,7)*100)
        if isImage("timKiemEdge.png") then
            sleep(randomSo(4,7)*100)
            tap(374, 1286)
            sleep(randomSo(20,30)*100)
        elseif isImage("caiDatEdge.png") then
            clickImage("caiDatEdge.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("quyenRiengTuEdge.png") then
            clickImage("quyenRiengTuEdge.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("xoaDlWebEdge.png") then
            clickImage("xoaDlWebEdge.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("xoaNgayEdge.png") then
            clickImage("xoaNgayEdge.png")
            sleep(randomSo(4,7)*100)
        end
    end
    while isImage("xoaNgay_2_Edge.png") do
        sleep(randomSo(4,7)*100)
        clickImage("xoaNgay_2_Edge.png")
        sleep(randomSo(40,50)*100)
    end
    vuotApp()
    sleep(1500)
    toast("Xong 1 mail")
    sleep(3000)
    toast("Bắt đầu lại")
    RandomApp()
end

function Chrome()
    if readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt") then
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        if #sl_ok == 10 then
            writeFile("OK.txt","","w")
            alert("Đã xong 10 mail")
            at.stop()
        else
            sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
            if #sl_xit == 5 then
                writeFile("Xit.txt","","w")
                alert("Đã xịt 5 lần liên tục, nghỉ mai reg")
                at.stop()
            end
        end
    else
        writeFile("OK.txt","","w")
        sleep(500)
        writeFile("Xit.txt","","w")
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
    end
    toast("Đã reg: "..#sl_ok..", đã xịt: "..#sl_xit.." liên tục")
    sleep(2000)
    ChangeIPOBC()
    appRun(id_Chrome);
    app = "Chrome"
    sleep(randomSo(20,30)*100)
    while not isImage("timKiemChrome.png") do
        sleep(randomSo(3,5)*100)
        if isImage("xong_Chrome.png") then
            clickImage("xong_Chrome.png")
            sleep(randomSo(10,20)*100)
        end
    end
    sleep(randomSo(4,7)*100)
    clickImage("timKiemChrome.png")
    sleep(randomSo(10,20)*100)
    sleep(randomSo(7,10)*100)
    inputKey("gmailabout")
    sleep(randomSo(4,7)*100)
    tap(656,1286)
    sleep(randomSo(10,15)*100)
    RegGmail1()
    RegGmailgiaidoan2()
    while not isImage("mailKPxanh.png") do
        sleep(randomSo(4,7)*100)
        if isImage("verrySDTGG.png") then
            writeLineFile("Xit.txt","1","a")
            sleep(randomSo(5,7)*100)
            ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
            get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
            time = json.decode(get)["datetime"]
            get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
            RandomApp()
        end
    end
    if isImage("mailKPxanh.png") then
        urlImage = "/private/var/mobile/Library/AutoTouch/Scripts/images/mailKPxanh.png"
        result = findImage(urlImage,1,0.99,nil,false)
        tap(result[1][1]+(randomSo(10,30)*10),(result[1][2]+(randomSo(3,5)*10)))
        sleep(randomSo(10,20)*100)
    end
    mailRecovery = Recovery()
    inputKey(mailRecovery)
    sleep(randomSo(4,7)*100)
    writeLineFile("OK.txt","1","a")
    sleep(1000)
    writeFile("Xit.txt","","w")
    ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
    get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
    time = json.decode(get)["datetime"]
    get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?email="..email.."@gmail.com".."&pass="..pass.."&recovery="..mailRecovery.."&tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
    while not isImage("tiepTheoXanhTrang.png") do
        sleep(100)
    end
    sleep(randomSo(4,7)*100)
    clickImage("tiepTheoXanhTrang.png")
    sleep(randomSo(10,15)*100)
    while not isImage("soDT_BoQua.png") do
        sleep(100)
    end
    while isImage("soDT_BoQua.png") do
        sleep(randomSo(5,15)*100)
        clickImage("boQuaXanhTrang.png")
        sleep(randomSo(10,20)*100)
    end
    while not isImage("tiepTheoTen.png") do
        sleep(100)
        if isImage("tieptheoNew2.png") then
            break
        end
    end
    if isImage("tiepTheoTen.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tiepTheoTen.png")
        sleep(randomSo(10,30)*100)
    elseif isImage("tieptheoNew2.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tieptheoNew2.png")
        sleep(randomSo(10,30)*100)
    end
    while not isImage("ThanhCong.png") do
        sleep(randomSo(4,7)*100)
    end
    while not isImage("toiDongYGG.png") do
        sleep(randomSo(4,7)*100)
        moveTo(356,854,356,362)
        sleep(1500)
    end
    while isImage("toiDongYGG.png") do
        clickImage("toiDongYGG.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("okGmailGG.png") do
        sleep(randomSo(4,7)*100)
        if (isImage("TaiUngDung.png") or isImage("openTheApp.png") or isImage("moUngDung.png") or isImage("BTVietGG.png") or isImage("XongMail.png") or isImage("loi502.png") or isImage("loi400.png")) then
            break
        end
    end
    sleep(randomSo(10,15)*100)
    rCho = randomSo(8,14)
    for i =1,rCho do
        sleep(randomSo(60,80)*100)
        if (isImage("TaiUngDung.png") or isImage("okGmailGG.png")) then
            sleep(randomSo(4,7)*100)
            moveTo(344, 1001,348,  528)
            sleep(2500)
            if isImage("KhongQuanTam.png") then
                clickImage("KhongQuanTam.png")
                sleep(randomSo(10,15)*100)
            end
        end
        toast("chờ tý",5)
    end
    ::xoadataChrome::
    sleep(randomSo(4,7)*100)
    sleep(randomSo(10,15)*100)
    while not isImage("closeXongChrome.png") do
        if isImage("tabChrome.png") then
            clickImage("tabChrome.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("tabChrome2.PNG") then
            clickImage("tabChrome2.PNG")
            sleep(randomSo(4,7)*100)
        elseif isImage("closeTabChrome.png") then
            clickImage("closeTabChrome.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("closeTabChrome2.PNG") then
            clickImage("closeTabChrome2.PNG")
            sleep(randomSo(4,7)*100)
        end
        sleep(1000)
    end
    sleep(randomSo(4,7)*100)
    tap(374, 1291)
    sleep(2000)
    while not isImage("xoaDLweb_3_Chrome.png") do
        if isImage("xoaDLweb_3_Chrome.png") then
            clickImage("xoaDLweb_3_Chrome.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("menuChrome.png") then
            clickImage("menuChrome.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("menuChrome2.PNG") then
            clickImage("menuChrome2.PNG")
            sleep(randomSo(4,7)*100)
        elseif isImage("nhatKyChrome.png") then
            clickImage("nhatKyChrome.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("xoaDLwebChrome.png") then
            clickImage("xoaDLwebChrome.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("xoaDLweb_2_Chrome.png") then
            clickImage("xoaDLweb_2_Chrome.png")
            sleep(randomSo(1,2)*100)
        end
        sleep(1000)
    end
    sleep(1000)
    clickImage("xoaDLweb_3_Chrome.png")
    sleep(10000)
    vuotApp()
    sleep(1500)
    toast("Xong 1 mail")
    sleep(3000)
    toast("Bắt đầu lại")
    RandomApp()
end

function Bolt()
    if readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt") then
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        if #sl_ok == 10 then
            writeFile("OK.txt","","w")
            alert("Đã xong 10 mail")
            at.stop()
        else
            sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
            if #sl_xit == 5 then
                writeFile("Xit.txt","","w")
                alert("Đã xịt 5 lần liên tục, nghỉ mai reg")
                at.stop()
            end
        end
    else
        writeFile("OK.txt","","w")
        sleep(500)
        writeFile("Xit.txt","","w")
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
    end
    toast("Đã reg: "..#sl_ok..", đã xịt: "..#sl_xit.." liên tục")
    sleep(2000)
    ChangeIPOBC()
    appRun(id_Bolt);
    app = "Bolt"
    sleep(randomSo(20,30)*100)
    while not isImage("searchBolt.png") do
        sleep(randomSo(3,5)*100)
    end
    clickImage("searchBolt.png")
    sleep(randomSo(10,20)*100)
    inputKey("gmailabout")
    sleep(randomSo(4,7)*100)
    tap(656,1286)
    sleep(randomSo(10,15)*100)
    while not isImage("about.png") do
        sleep(randomSo(4,7)*100)
        if isImage("about2.png") or isImage("about3.png") or isImage("about4.png") or isImage("taiGmail.png") or isImage("taiGmail2.png")then
            break
        end
    end
    if isImage("about.png") then
        clickImage("about.png")
        sleep(randomSo(7,10)*100)
    elseif isImage("about2.png") then
        clickImage("about2.png")
        sleep(randomSo(7,10)*100)
    elseif isImage("about3.png") then
        clickImage("about3.png")
        sleep(randomSo(7,10)*100)
    elseif isImage("about4.png") then
        clickImage("about4.png")
        sleep(randomSo(7,10)*100)
    end
    sleep(randomSo(7,10)*100)
    while not isImage("taiGmail.png") do
        sleep(randomSo(4,7)*100)
        if isImage("about.png") then
            clickImage("about.png")
            sleep(randomSo(7,10)*100)
        elseif isImage("about2.png") then
            clickImage("about2.png")
            sleep(randomSo(7,10)*100)
        elseif isImage("about3.png") then
            clickImage("about3.png")
            sleep(randomSo(7,10)*100)
        elseif isImage("about4.png") then
            clickImage("about4.png")
            sleep(randomSo(7,10)*100)
        elseif isImage("taiGmail2.png") then
            break
        end
        if isImage("okGoIt.png") then
            clickImage("okGoIt.png")
            sleep(randomSo(7,10)*100)
        end
    end
    sleep(randomSo(10,15)*100)
    if isImage("taiGmail.png") then
        clickImage("taiGmail.png")
        sleep(randomSo(10,15)*100)
    elseif isImage("taiGmail2.png") then
        clickImage("taiGmail2.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("hoNew.png") do
        sleep(randomSo(4,7)*100)
        if isImage("taiGmail.png") then
            clickImage("taiGmail.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("taiGmail2.png") then
            clickImage("taiGmail2.png")
            sleep(randomSo(10,15)*100)
        end
    end
    RegGmail2()
    RegGmailgiaidoan2()
    while not isImage("mailKPxanh.png") do
        sleep(randomSo(4,7)*100)
        if isImage("verrySDTGG.png") then
            writeLineFile("Xit.txt","1","a")
            sleep(500)
            ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
            get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
            time = json.decode(get)["datetime"]
            get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
            goto xoadataBolt
        end
    end
    if isImage("mailKPxanh.png") then
        urlImage = "/private/var/mobile/Library/AutoTouch/Scripts/images/mailKPxanh.png"
        result = findImage(urlImage,1,0.99,nil,false)
        tap(result[1][1]+(randomSo(10,30)*10),(result[1][2]+(randomSo(3,5)*10)))
        sleep(randomSo(10,20)*100)
    end
    mailRecovery = Recovery()
    inputKey(mailRecovery)
    sleep(randomSo(4,7)*100)
    writeLineFile("OK.txt","1","a")
    sleep(1000)
    writeFile("Xit.txt","","w")
    ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
    get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
    time = json.decode(get)["datetime"]
    get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?email="..email.."@gmail.com".."&pass="..pass.."&recovery="..mailRecovery.."&tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
    while not isImage("tiepTheoXanhTrang.png") do
        sleep(100)
    end
    sleep(randomSo(4,7)*100)
    clickImage("tiepTheoXanhTrang.png")
    sleep(randomSo(10,15)*100)
    while not isImage("soDT_BoQua.png") do
        sleep(100)
    end
    while isImage("soDT_BoQua.png") do
        sleep(randomSo(5,15)*100)
        clickImage("boQuaXanhTrang.png")
        sleep(randomSo(10,20)*100)
    end
    while not isImage("tiepTheoTen.png") do
        sleep(100)
        if isImage("tieptheoNew2.png") then
            break
        end
    end
    if isImage("tiepTheoTen.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tiepTheoTen.png")
        sleep(randomSo(10,30)*100)
    elseif isImage("tieptheoNew2.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tieptheoNew2.png")
        sleep(randomSo(10,30)*100)
    end
    while not isImage("ThanhCong.png") do
        sleep(randomSo(4,7)*100)
    end
    while not isImage("toiDongYGG.png") do
        sleep(randomSo(4,7)*100)
        moveTo(356,854,356,362)
        sleep(1500)
    end
    while isImage("toiDongYGG.png") do
        clickImage("toiDongYGG.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("okGmailGG.png") do
        sleep(randomSo(4,7)*100)
        if (isImage("TaiUngDung.png") or isImage("openTheApp.png") or isImage("moUngDung.png") or isImage("BTVietGG.png") or isImage("XongMail.png") or isImage("loi502.png") or isImage("loi400.png")) then
            break
        end
    end
    sleep(randomSo(10,15)*100)
    rCho = randomSo(8,14)
    for i =1,rCho do
        sleep(randomSo(60,80)*100)
        if (isImage("TaiUngDung.png") or isImage("okGmailGG.png")) then
            sleep(randomSo(4,7)*100)
            moveTo(344, 1001,348,  528)
            sleep(2500)
            if isImage("KhongQuanTam.png") then
                clickImage("KhongQuanTam.png")
                sleep(randomSo(10,15)*100)
            end
        end
        toast("chờ tý",5)
    end
    ::xoadataBolt::
    sleep(randomSo(4,7)*100)
    sleep(randomSo(10,15)*100)
    while not isImage("closeAllBolt.png") do
        sleep(randomSo(4,7)*100)
        if isImage("tabBolt.png") then
            clickImage("tabBolt.png")
            sleep(randomSo(4,7)*100)
        end
    end
    while isImage("closeAllBolt.png") do
        clickImage("closeAllBolt.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("ClearDoBolt.png") do
        sleep(randomSo(2,4)*100)
        if isImage("menuBolt.png") then
            clickImage("menuBolt.png")
            sleep(randomSo(3,5)*100)
        elseif isImage("clearHistoryBolt.png") then
            clickImage("clearHistoryBolt.png")
            sleep(randomSo(4,7)*100)
        end
    end
    while isImage("ClearDoBolt.png") do
        clickImage("ClearDoBolt.png")
        sleep(randomSo(10,20)*100)
    end
    sleep(randomSo(10,20)*100)
    vuotApp()
    sleep(1500)
    toast("Xong 1 mail")
    sleep(3000)
    toast("Bắt đầu lại")
    RandomApp()
end

function Aloha()
    if readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt") then
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        if #sl_ok == 10 then
            writeFile("OK.txt","","w")
            alert("Đã xong 10 mail")
            at.stop()
        else
            sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
            if #sl_xit == 5 then
                writeFile("Xit.txt","","w")
                alert("Đã xịt 5 lần liên tục, nghỉ mai reg")
                at.stop()
            end
        end
    else
        writeFile("OK.txt","","w")
        sleep(500)
        writeFile("Xit.txt","","w")
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
    end
    toast("Đã reg: "..#sl_ok..", đã xịt: "..#sl_xit.." liên tục")
    sleep(2000)
    ChangeIPOBC()
    appRun(id_Aloha);
    app = "Aloha"
    sleep(randomSo(20,30)*100)
    while not isImage("nhapAloha.png") do
        sleep(randomSo(3,5)*100)
    end
    clickImage("nhapAloha.png")
    sleep(randomSo(10,20)*100)
    inputKey("mail.google.com")
    sleep(randomSo(4,7)*100)
    tap(656,1286)
    sleep(randomSo(10,15)*100)
    while not isImage("taiGmail.png") do
        sleep(randomSo(4,7)*100)
        if (isImage("okGmailGG.png") or isImage("TaiUngDung.png") or isImage("BTVietGG.png") or isImage("XongMail.png") or isImage("loi502.png") or isImage("loi400.png")) then
            sleep(randomSo(4,7)*100)
            while not isImage("caiDat_Aloha.png") do
                sleep(randomSo(5,7)*100)
                tap(372,1289)
                sleep(randomSo(10,15)*100)
        
            end
            while isImage("caiDat_Aloha.png") do
                sleep(randomSo(5,7)*100)
                clickImage("caiDat_Aloha.png")
                sleep(randomSo(10,15)*100)
            end
            while not isImage("baoMat_Aloha.png") do
                sleep(randomSo(5,7)*100)
                moveTo(376,  638,376,  364)
                sleep(randomSo(20,30)*100)
            end
            clickImage("baoMat_Aloha.png")
            sleep(randomSo(10,15)*100)
            while not isImage("xoaTatCaDo_Aloha.png") do
                sleep(randomSo(5,7)*100)
                if isImage("baoMat_Aloha.png") then
                    clickImage("baoMat_Aloha.png")
                    sleep(randomSo(7,10)*100)
                elseif isImage("xoaTatCaDen_Aloha.png") then
                    clickImage("xoaTatCaDen_Aloha.png")
                    sleep(randomSo(7,10)*100)
                end
            end
            while isImage("xoaTatCaDo_Aloha.png") do
                sleep(randomSo(5,7)*100)
                clickImage("xoaTatCaDo_Aloha.png")
                sleep(randomSo(40,50)*100)
            end
            while not isImage("baoMat_Aloha.png") do
                sleep(randomSo(5,7)*100)
                if isImage("xoaTatCaDen_Aloha.png") then
                    tap(43,133)
                    sleep(randomSo(7,10)*100)
                end
            end
            while isImage("baoMat_Aloha.png") do 
                tap(55,133)
                sleep(randomSo(7,10)*100)
            end
        end
        if isImage("taoTaiKhoanBrowser2.png") then 
            break
        elseif isImage("loiAloha.png") then
            tap(347,92)
            sleep(randomSo(10,20)*100)
            rLink = randomSo(1,2)
            if rLink == 1 then
                sleep(randomSo(10,20)*100)
                inputKey("google.com/gmail/about")
                sleep(randomSo(4,7)*100)
            else
                sleep(randomSo(10,20)*100)
                inputKey("gmailabout")
                sleep(randomSo(4,7)*100)
            end
            sleep(randomSo(4,7)*100)
            tap(656,1286)
            sleep(randomSo(10,15)*100)
        elseif isImage("taiGmail2.png") then
            break
        elseif isImage("taoTaiKhoanBrowser.png") then 
            break
        end
    end
    sleep(randomSo(10,15)*100)
    if isImage("taiGmail.png") then
        clickImage("taiGmail.png")
        sleep(randomSo(10,15)*100)
    elseif isImage("taiGmail2.png") then
        clickImage("taiGmail2.png")
        sleep(randomSo(10,15)*100)
    elseif isImage("taoTaiKhoanBrowser2.png") then 
        clickImage("taoTaiKhoanBrowser2.png")
        sleep(randomSo(10,15)*100)
    elseif isImage("taoTaiKhoanBrowser.png") then 
        clickImage("taoTaiKhoanBrowser.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("hoNew.png") do
        sleep(randomSo(4,7)*100)
        if isImage("taiGmail.png") then
            clickImage("taiGmail.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("taoTaiKhoanBrowser.png") then 
            clickImage("taoTaiKhoanBrowser.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("taoTaiKhoanBrowser2.png") then 
            clickImage("taoTaiKhoanBrowser2.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("CaNhanToiBrowser.png") then
            clickImage("CaNhanToiBrowser.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("taiGmail2.png") then
            clickImage("taiGmail2.png")
            sleep(randomSo(10,15)*100)
        end
    end
    RegGmail2()
    RegGmailgiaidoan2()
    while not isImage("mailKPxanh.png") do
        sleep(randomSo(4,7)*100)
        if isImage("verrySDTGG.png") then
            writeLineFile("Xit.txt","1","a")
            sleep(500)
            ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
            get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
            time = json.decode(get)["datetime"]
            get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
            goto xoadataAloha
        end
    end
    if isImage("mailKPxanh.png") then
        urlImage = "/private/var/mobile/Library/AutoTouch/Scripts/images/mailKPxanh.png"
        result = findImage(urlImage,1,0.99,nil,false)
        tap(result[1][1]+(randomSo(10,30)*10),(result[1][2]+(randomSo(3,5)*10)))
        sleep(randomSo(10,20)*100)
    end
    mailRecovery = Recovery()
    inputKey(mailRecovery)
    sleep(randomSo(4,7)*100)
    writeLineFile("OK.txt","1","a")
    sleep(1000)
    writeFile("Xit.txt","","w")
    ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
    get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
    time = json.decode(get)["datetime"]
    get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?email="..email.."@gmail.com".."&pass="..pass.."&recovery="..mailRecovery.."&tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
    while not isImage("tiepTheoXanhTrang.png") do
        sleep(100)
    end
    sleep(randomSo(4,7)*100)
    clickImage("tiepTheoXanhTrang.png")
    sleep(randomSo(10,15)*100)
    while not isImage("soDT_BoQua.png") do
        sleep(100)
    end
    while isImage("soDT_BoQua.png") do
        sleep(randomSo(5,15)*100)
        clickImage("boQuaXanhTrang.png")
        sleep(randomSo(10,20)*100)
    end
    while not isImage("tiepTheoTen.png") do
        sleep(100)
        if isImage("tieptheoNew2.png") then
            break
        end
    end
    if isImage("tiepTheoTen.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tiepTheoTen.png")
        sleep(randomSo(10,30)*100)
    elseif isImage("tieptheoNew2.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tieptheoNew2.png")
        sleep(randomSo(10,30)*100)
    end
    while not isImage("ThanhCong.png") do
        sleep(randomSo(4,7)*100)
    end
    while not isImage("toiDongYGG.png") do
        sleep(randomSo(4,7)*100)
        moveTo(356,854,356,362)
        sleep(1500)
    end
    while isImage("toiDongYGG.png") do
        clickImage("toiDongYGG.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("okGmailGG.png") do
        sleep(randomSo(4,7)*100)
        if (isImage("TaiUngDung.png") or isImage("openTheApp.png") or isImage("moUngDung.png") or isImage("BTVietGG.png") or isImage("XongMail.png") or isImage("loi502.png") or isImage("loi400.png")) then
            break
        end
    end
    sleep(randomSo(10,15)*100)
    rCho = randomSo(8,14)
    for i =1,rCho do
        sleep(randomSo(60,80)*100)
        if (isImage("TaiUngDung.png") or isImage("okGmailGG.png")) then
            sleep(randomSo(4,7)*100)
            moveTo(344, 1001,348,  528)
            sleep(2500)
            if isImage("KhongQuanTam.png") then
                clickImage("KhongQuanTam.png")
                sleep(randomSo(10,15)*100)
            end
        end
        toast("chờ tý",5)
    end
    ::xoadataAloha::
    sleep(randomSo(5,7)*100)
    sleep(randomSo(10,15)*100)
    while not isImage("dongTatCaTrang_Aloha.png") do
        sleep(randomSo(5,7)*100)
        if isImage("dongTatCaTab_Aloha.png") then
            clickImage("dongTatCaTab_Aloha.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("tab_Aloha.png") then
            clickImage("tab_Aloha.png")
            sleep(randomSo(10,15)*100)
        end
    end
    clickImage("dongTatCaTrang_Aloha.png")
    sleep(randomSo(20,30)*100)
    while not isImage("caiDat_Aloha.png") do
        sleep(randomSo(5,7)*100)
        if isImage("nhapAloha.png") then
            sleep(randomSo(5,7)*100)
            tap(372,1289)
            sleep(randomSo(10,15)*100)
        elseif isImage("dongTatCaTrang_Aloha.png") then
            clickImage("dongTatCaTrang_Aloha.png")
            sleep(randomSo(10,15)*100)
        end
    end
    while isImage("caiDat_Aloha.png") do
        sleep(randomSo(5,7)*100)
        clickImage("caiDat_Aloha.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("baoMat_Aloha.png") do
        sleep(randomSo(5,7)*100)
        moveTo(376,  638,376,  364)
        sleep(randomSo(20,30)*100)
    end
    clickImage("baoMat_Aloha.png")
    sleep(randomSo(10,15)*100)
    while not isImage("xoaTatCaDo_Aloha.png") do
        sleep(randomSo(5,7)*100)
        if isImage("baoMat_Aloha.png") then
            clickImage("baoMat_Aloha.png")
            sleep(randomSo(7,10)*100)
        elseif isImage("xoaTatCaDen_Aloha.png") then
            clickImage("xoaTatCaDen_Aloha.png")
            sleep(randomSo(7,10)*100)
        end
    end
    while isImage("xoaTatCaDo_Aloha.png") do
        sleep(randomSo(5,7)*100)
        clickImage("xoaTatCaDo_Aloha.png")
        sleep(randomSo(40,50)*100)
    end    
    vuotApp()
    sleep(1500)
    toast("Xong 1 mail")
    sleep(3000)
    toast("Bắt đầu lại")
    RandomApp()
end

function Ping()
    if readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt") then
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        if #sl_ok == 10 then
            writeFile("OK.txt","","w")
            alert("Đã xong 10 mail")
            at.stop()
        else
            sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
            if #sl_xit == 5 then
                writeFile("Xit.txt","","w")
                alert("Đã xịt 5 lần liên tục, nghỉ mai reg")
                at.stop()
            end
        end
    else
        writeFile("OK.txt","","w")
        sleep(500)
        writeFile("Xit.txt","","w")
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
    end
    toast("Đã reg: "..#sl_ok..", đã xịt: "..#sl_xit.." liên tục")
    sleep(2000)
    ChangeIPOBC()
    appRun(id_Ping);
    app = "Ping"
    sleep(randomSo(20,30)*100)
    while not isImage("timKiemPing.png")  do
        sleep(randomSo(3,5)*100)
        if isImage("timKiem_2_Ping.png") then
            break
        end
    end
    if isImage("timKiem_2_Ping.png") then
        clickImage("timKiem_2_Ping.png")
        sleep(randomSo(15,20)*100)
    elseif isImage("timKiemPing.png") then
        clickImage("timKiemPing.png")
        sleep(randomSo(15,20)*100)
    end
    sleep(randomSo(10,20)*100)
    inputKey("google.com/gmail/about")
    sleep(randomSo(4,7)*100)
    tap(656,1286)
    sleep(randomSo(10,15)*100)
    while not isImage("taiGmail.png") do
        sleep(randomSo(4,7)*100)
        if isImage("aboutPing.png") then
            clickImage("aboutPing.png")
            sleep(randomSo(20,30)*100)
        elseif isImage("mailPing.png") then
            clickImage("mailPing.png")
            sleep(randomSo(20,30)*100)
        elseif isImage("taiGmail2.png") then
            break
        elseif isImage("taoTaiKhoanBrowser.png") then 
            break
        elseif isImage("taoTaiKhoanBrowser2.png") then 
            break
        end
    end
    sleep(randomSo(10,15)*100)
    if isImage("taiGmail.png") then
        clickImage("taiGmail.png")
        sleep(randomSo(10,15)*100)
    elseif isImage("taiGmail2.png") then
        clickImage("taiGmail2.png")
        sleep(randomSo(10,15)*100)
    elseif isImage("taoTaiKhoanBrowser.png") then 
        clickImage("taoTaiKhoanBrowser.png")
        sleep(randomSo(10,15)*100)
    elseif isImage("taoTaiKhoanBrowser2.png") then 
        clickImage("taoTaiKhoanBrowser2.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("hoNew.png") do
        sleep(randomSo(4,7)*100)
        if isImage("taiGmail.png") then
            clickImage("taiGmail.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("taoTaiKhoanBrowser.png") then 
            clickImage("taoTaiKhoanBrowser.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("taoTaiKhoanBrowser2.png") then 
            clickImage("taoTaiKhoanBrowser2.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("CaNhanToiBrowser.png") then
            clickImage("CaNhanToiBrowser.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("taiGmail2.png") then
            clickImage("taiGmail2.png")
            sleep(randomSo(10,15)*100)
        end
    end
    RegGmail2()
    RegGmailgiaidoan2()
    while not isImage("mailKPxanh.png") do
        sleep(randomSo(4,7)*100)
        if isImage("verrySDTGG.png") then
            writeLineFile("Xit.txt","1","a")
            sleep(500)
            ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
            get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
            time = json.decode(get)["datetime"]
            get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
            goto xoadataPing
        end
    end
    if isImage("mailKPxanh.png") then
        urlImage = "/private/var/mobile/Library/AutoTouch/Scripts/images/mailKPxanh.png"
        result = findImage(urlImage,1,0.99,nil,false)
        tap(result[1][1]+(randomSo(10,30)*10),(result[1][2]+(randomSo(3,5)*10)))
        sleep(randomSo(10,20)*100)
    end
    mailRecovery = Recovery()
    inputKey(mailRecovery)
    sleep(randomSo(4,7)*100)
    writeLineFile("OK.txt","1","a")
    sleep(1000)
    writeFile("Xit.txt","","w")
    ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
    get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
    time = json.decode(get)["datetime"]
    get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?email="..email.."@gmail.com".."&pass="..pass.."&recovery="..mailRecovery.."&tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
    while not isImage("tiepTheoXanhTrang.png") do
        sleep(100)
    end
    sleep(randomSo(4,7)*100)
    clickImage("tiepTheoXanhTrang.png")
    sleep(randomSo(10,15)*100)
    while not isImage("soDT_BoQua.png") do
        sleep(100)
    end
    while isImage("soDT_BoQua.png") do
        sleep(randomSo(5,15)*100)
        clickImage("boQuaXanhTrang.png")
        sleep(randomSo(10,20)*100)
    end
    while not isImage("tiepTheoTen.png") do
        sleep(100)
        if isImage("tieptheoNew2.png") then
            break
        end
    end
    if isImage("tiepTheoTen.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tiepTheoTen.png")
        sleep(randomSo(10,30)*100)
    elseif isImage("tieptheoNew2.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tieptheoNew2.png")
        sleep(randomSo(10,30)*100)
    end
    while not isImage("ThanhCong.png") do
        sleep(randomSo(4,7)*100)
    end
    while not isImage("toiDongYGG.png") do
        sleep(randomSo(4,7)*100)
        moveTo(356,854,356,362)
        sleep(1500)
    end
    while isImage("toiDongYGG.png") do
        clickImage("toiDongYGG.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("okGmailGG.png") do
        sleep(randomSo(4,7)*100)
        if (isImage("TaiUngDung.png") or isImage("openTheApp.png") or isImage("moUngDung.png") or isImage("BTVietGG.png") or isImage("XongMail.png") or isImage("loi502.png") or isImage("loi400.png")) then
            break
        end
    end
    sleep(randomSo(10,15)*100)
    rCho = randomSo(8,14)
    for i =1,rCho do
        sleep(randomSo(60,80)*100)
        if (isImage("TaiUngDung.png") or isImage("okGmailGG.png")) then
            sleep(randomSo(4,7)*100)
            moveTo(344, 1001,348,  528)
            sleep(2500)
            if isImage("KhongQuanTam.png") then
                clickImage("KhongQuanTam.png")
                sleep(randomSo(10,15)*100)
            end
        end
        toast("chờ tý",5)
    end
    ::xoadataPing::
    sleep(randomSo(4,7)*100)
    sleep(randomSo(10,15)*100)
    while not isImage("xoaHetTabPing.png") do
        sleep(randomSo(4,7)*100)
        if isImage("closeTabPing.png") then
            clickImage("closeTabPing.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("close2ping.png") then
            clickImage("close2ping.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("tabPing.png") then
            clickImage("tabPing.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("tab_Ping.png") then
            clickImage("tab_Ping.png")
            sleep(randomSo(4,7)*100)
        end
    end
    while isImage("xoaHetTabPing.png") do
        sleep(randomSo(3,5)*100)
        tap(675, 1280)
        sleep(randomSo(4,7)*100)
    end
    while not isImage("xoaDLXanhPing.png") do
        sleep(randomSo(10,15)*100)
        if isImage("caiDatPing.png") then
            clickImage("caiDatPing.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("xoaHetTabPing.png") then
            sleep(randomSo(3,5)*100)
            tap(675, 1280)
            sleep(randomSo(4,7)*100)
        elseif isImage("quyenRiengTuPing.png") then
            clickImage("quyenRiengTuPing.png")
            sleep(randomSo(3,5)*100)
        elseif isImage("xoaDLungDungPing.png") then
            clickImage("xoaDLungDungPing.png")
            sleep(randomSo(4,7)*100)
        end
    end
    if isImage("xoaDLXanhPing.png") then
        sleep(randomSo(3,5)*100)
        tap(693,  220)
        sleep(randomSo(4,7)*100)
        tap(693,  354)
        sleep(randomSo(4,7)*100)
        tap(698,  533)
        sleep(randomSo(4,7)*100)
    end
    while not isImage("xoaDaChonPing.png") do
        sleep(randomSo(10,15)*100)
        if isImage("xoaDLXanhPing.png") then
            sleep(randomSo(3,5)*100)
            tap(693,  220)
            sleep(randomSo(4,7)*100)
            tap(693,  354)
            sleep(randomSo(4,7)*100)
            tap(698,  533)
            sleep(randomSo(4,7)*100)
        end
    end
    clickImage("xoaDaChonPing.png")
    sleep(randomSo(4,7)*100)
    while not isImage("xoaTaiKhoanPing.png") do
        sleep(randomSo(10,15)*100)
        if isImage("xoaDaChonPing.png") then
            clickImage("xoaDaChonPing.png")
            sleep(randomSo(4,7)*100)
        end
    end
    vuotApp()
    sleep(1500)
    toast("Xong 1 mail")
    sleep(3000)
    toast("Bắt đầu lại")
    RandomApp()
end

function Diigo()
    if readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt") then
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        if #sl_ok == 10 then
            writeFile("OK.txt","","w")
            alert("Đã xong 10 mail")
            at.stop()
        else
            sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
            if #sl_xit == 5 then
                writeFile("Xit.txt","","w")
                alert("Đã xịt 5 lần liên tục, nghỉ mai reg")
                at.stop()
            end
        end
    else
        writeFile("OK.txt","","w")
        sleep(500)
        writeFile("Xit.txt","","w")
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
    end
    toast("Đã reg: "..#sl_ok..", đã xịt: "..#sl_xit.." liên tục")
    sleep(2000)
    ChangeIPOBC()
    appRun(id_Diigo);
    app = "Diigo"
    sleep(randomSo(10,20)*100)
    while not isImage("timKiemDiigo.png") do
        sleep(randomSo(3,5)*100)
    end
    clickImage("timKiemDiigo.png")
    sleep(randomSo(10,20)*100)
    inputKey("gmailabout")
    sleep(randomSo(4,7)*100)
    tap(656,1286)
    sleep(randomSo(10,15)*100)
    RegGmail1()
    RegGmailgiaidoan2()
    while not isImage("mailKPxanh.png") do
        sleep(randomSo(4,7)*100)
        if isImage("verrySDTGG.png") then
            writeLineFile("Xit.txt","1","a")
            sleep(randomSo(5,7)*100)
            ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
            get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
            time = json.decode(get)["datetime"]
            get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
            goto xoadataDiigo
        end
    end
    if isImage("mailKPxanh.png") then
        urlImage = "/private/var/mobile/Library/AutoTouch/Scripts/images/mailKPxanh.png"
        result = findImage(urlImage,1,0.99,nil,false)
        tap(result[1][1]+(randomSo(10,30)*10),(result[1][2]+(randomSo(3,5)*10)))
        sleep(randomSo(10,20)*100)
    end
    mailRecovery = Recovery()
    inputKey(mailRecovery)
    sleep(randomSo(4,7)*100)
    writeLineFile("OK.txt","1","a")
    sleep(1000)
    writeFile("Xit.txt","","w")
    ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
    get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
    time = json.decode(get)["datetime"]
    get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?email="..email.."@gmail.com".."&pass="..pass.."&recovery="..mailRecovery.."&tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
    while not isImage("tiepTheoXanhTrang.png") do
        sleep(100)
    end
    sleep(randomSo(4,7)*100)
    clickImage("tiepTheoXanhTrang.png")
    sleep(randomSo(10,15)*100)
    while not isImage("soDT_BoQua.png") do
        sleep(100)
    end
    while isImage("soDT_BoQua.png") do
        sleep(randomSo(5,15)*100)
        clickImage("boQuaXanhTrang.png")
        sleep(randomSo(10,20)*100)
    end
    while not isImage("tiepTheoTen.png") do
        sleep(100)
        if isImage("tieptheoNew2.png") then
            break
        end
    end
    if isImage("tiepTheoTen.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tiepTheoTen.png")
        sleep(randomSo(10,30)*100)
    elseif isImage("tieptheoNew2.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tieptheoNew2.png")
        sleep(randomSo(10,30)*100)
    end
    while not isImage("ThanhCong.png") do
        sleep(randomSo(4,7)*100)
    end
    while not isImage("toiDongYGG.png") do
        sleep(randomSo(4,7)*100)
        moveTo(356,854,356,362)
        sleep(1500)
    end
    while isImage("toiDongYGG.png") do
        clickImage("toiDongYGG.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("okGmailGG.png") do
        sleep(randomSo(4,7)*100)
        if (isImage("TaiUngDung.png") or isImage("openTheApp.png") or isImage("moUngDung.png") or isImage("BTVietGG.png") or isImage("XongMail.png") or isImage("loi502.png") or isImage("loi400.png")) then
            break
        end
    end
    sleep(randomSo(10,15)*100)
    rCho = randomSo(8,14)
    for i =1,rCho do
        sleep(randomSo(60,80)*100)
        if (isImage("TaiUngDung.png") or isImage("okGmailGG.png")) then
            sleep(randomSo(4,7)*100)
            moveTo(344, 1001,348,  528)
            sleep(2500)
            if isImage("KhongQuanTam.png") then
                clickImage("KhongQuanTam.png")
                sleep(randomSo(10,15)*100)
            end
        end
        toast("chờ tý",5)
    end
    ::xoadataDiigo::
    sleep(randomSo(4,7)*100)
    sleep(randomSo(10,15)*100)
    while not isImage("timKiemDiigo.png") do
        sleep(randomSo(4,7)*100)
        if isImage("HomeDiigo.png") then
            clickImage("HomeDiigo.png")
            sleep(randomSo(4,7)*100)  
        end
    end
    while not isImage("xoaDLDuyetDiigo2.png") do
        sleep(randomSo(2,4)*100)
        if isImage("menuDiigo.png") then
            clickImage("menuDiigo.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("xoaDLDuyetDiigo2.png") then
            clickImage("xoaDLDuyetDiigo2.png")
            sleep(randomSo(1,2)*100)
        elseif isImage("xoaDLDuyetDiigo.png") then
            clickImage("xoaDLDuyetDiigo.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("xoaDLwebChrome.png") then
            clickImage("xoaDLwebChrome.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("lichSuDiigo.png") then
            clickImage("lichSuDiigo.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("menuChrome.png") then
            clickImage("menuChrome.png")
            sleep(randomSo(4,7)*100)
        end
    end
    clickImage("xoaDLDuyetDiigo2.png")
    sleep(randomSo(1,2)*100)
    while not isImage("dangXoaDiigo.png") do
        sleep(randomSo(1,2)*100)
        if isImage("xoaDLDuyetDiigo2.png") then
            clickImage("xoaDLDuyetDiigo2.png")
            sleep(randomSo(1,2)*100)
        elseif isImage("xoaDLDuyetDiigo.png") then
            clickImage("xoaDLDuyetDiigo.png")
            sleep(randomSo(1,2)*100)
        end
    end
    while isImage("dangXoaDiigo.png") do
        toast("Chờ Xóa",2)
        sleep(randomSo(20,40)*100)
    end
    sleep(randomSo(10,20)*100)
    vuotApp()
    sleep(1500)
    toast("Xong 1 mail")
    sleep(3000)
    toast("Bắt đầu lại")
    RandomApp()
end

function Ghost()
    if readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt") then
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        if #sl_ok == 10 then
            writeFile("OK.txt","","w")
            alert("Đã xong 10 mail")
            at.stop()
        else
            sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
            if #sl_xit == 5 then
                writeFile("Xit.txt","","w")
                alert("Đã xịt 5 lần liên tục, nghỉ mai reg")
                at.stop()
            end
        end
    else
        writeFile("OK.txt","","w")
        sleep(500)
        writeFile("Xit.txt","","w")
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
    end
    toast("Đã reg: "..#sl_ok..", đã xịt: "..#sl_xit.." liên tục")
    sleep(2000)
    ChangeIPOBC()
    appRun(id_Ghost);
    app = "Ghost"
    sleep(randomSo(20,30)*100)
    while not isImage("searchGhost.png") do
        sleep(randomSo(3,5)*100)
        if (isImage("okGmailGG.png") or isImage("TaiUngDung.png") or isImage("BTVietGG.png") or isImage("XongMail.png") or isImage("loi502.png") or isImage("loi400.png")) then
            sleep(randomSo(4,7)*100)
            while not isImage("setting_Ghost.png") do
                sleep(randomSo(4,7)*100)
                tap(376, 1290)
                sleep(randomSo(10,15)*100)
            end
            while not isImage("webData_Ghost.png") do
                sleep(randomSo(2,4)*100)
                if isImage("setting_Ghost.png") then
                    clickImage("setting_Ghost.png")
                    sleep(randomSo(10,15)*100)
                elseif isImage("dataManage_Ghost.png") then
                    clickImage("dataManage_Ghost.png")
                    sleep(randomSo(10,15)*100)
                end
            end
            while not isImage("clearData_Ghost.png") do
                sleep(randomSo(5,7)*100)
                moveTo(376,  638,376,  364)
                sleep(randomSo(20,30)*100)
            end
            while not isImage("okClear_Ghost.png") do
                sleep(randomSo(2,4)*100)
                if isImage("clearData_Ghost.png") then
                    clickImage("clearData_Ghost.png")
                    sleep(randomSo(10,15)*100)
                end
            end
            while isImage("okClear_Ghost.png") do
                sleep(randomSo(2,4)*100)
                clickImage("okClear_Ghost.png")
                sleep(randomSo(50,60)*100)
            end
            while not isImage("dataManage_Ghost.png") do
                sleep(randomSo(5,7)*100)
                if isImage("clearData_Ghost.png") then
                    tap(99,137)
                    sleep(randomSo(7,10)*100)
                end
            end
            while isImage("dataManage_Ghost.png") do 
                tap(675,138)
                sleep(randomSo(7,10)*100)
            end
            break
        end
    end
    if isImage("searchGhost.png") then
        clickImage("searchGhost.png")
        sleep(randomSo(40,50)*100)
        inputKey("mail.google.com")
        sleep(randomSo(4,7)*100)
        tap(656,1286)
        sleep(randomSo(10,15)*100)
    end
    while not isImage("taiGmail.png") do
        sleep(randomSo(4,7)*100)
        if (isImage("okGmailGG.png") or isImage("TaiUngDung.png") or isImage("BTVietGG.png") or isImage("XongMail.png") or isImage("loi502.png") or isImage("loi400.png")) then
            sleep(randomSo(4,7)*100)
            while not isImage("setting_Ghost.png") do
                sleep(randomSo(4,7)*100)
                tap(376, 1290)
                sleep(randomSo(10,15)*100)
            end
            while not isImage("webData_Ghost.png") do
                sleep(randomSo(2,4)*100)
                if isImage("setting_Ghost.png") then
                    clickImage("setting_Ghost.png")
                    sleep(randomSo(10,15)*100)
                elseif isImage("dataManage_Ghost.png") then
                    clickImage("dataManage_Ghost.png")
                    sleep(randomSo(10,15)*100)
                end
            end
            while not isImage("clearData_Ghost.png") do
                sleep(randomSo(5,7)*100)
                moveTo(376,  638,376,  364)
                sleep(randomSo(20,30)*100)
            end
            while not isImage("okClear_Ghost.png") do
                sleep(randomSo(2,4)*100)
                if isImage("clearData_Ghost.png") then
                    clickImage("clearData_Ghost.png")
                    sleep(randomSo(10,15)*100)
                end
            end
            while isImage("okClear_Ghost.png") do
                sleep(randomSo(2,4)*100)
                clickImage("okClear_Ghost.png")
                sleep(randomSo(50,60)*100)
            end
            while not isImage("dataManage_Ghost.png") do
                sleep(randomSo(5,7)*100)
                if isImage("clearData_Ghost.png") then
                    tap(99,137)
                    sleep(randomSo(7,10)*100)
                end
            end
            while isImage("dataManage_Ghost.png") do 
                tap(675,138)
                sleep(randomSo(7,10)*100)
            end
        end
        if isImage("searchGhost.png") then
            clickImage("searchGhost.png")
            sleep(randomSo(40,50)*100)
            inputKey("mail.google.com")
            sleep(randomSo(4,7)*100)
            tap(656,1286)
            sleep(randomSo(10,15)*100)
        end
        if isImage("taoTaiKhoanBrowser2.png") or isImage("taiGmail2.png") or isImage("taoTaiKhoanBrowser.png") then 
            break
        end
    end
    sleep(randomSo(10,15)*100)
    if isImage("taiGmail.png") then
        clickImage("taiGmail.png")
        sleep(randomSo(10,15)*100)
    elseif isImage("taiGmail2.png") then
        clickImage("taiGmail2.png")
        sleep(randomSo(10,15)*100)
    elseif isImage("taoTaiKhoanBrowser.png") then 
        clickImage("taoTaiKhoanBrowser.png")
        sleep(randomSo(10,15)*100)
    elseif isImage("taoTaiKhoanBrowser2.png") then 
        clickImage("taoTaiKhoanBrowser2.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("hoNew.png") do
        sleep(randomSo(4,7)*100)
        if isImage("taiGmail.png") then
            clickImage("taiGmail.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("taoTaiKhoanBrowser.png") then 
            clickImage("taoTaiKhoanBrowser.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("taoTaiKhoanBrowser2.png") then 
            clickImage("taoTaiKhoanBrowser2.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("CaNhanToiBrowser.png") then
            clickImage("CaNhanToiBrowser.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("taiGmail2.png") then
            clickImage("taiGmail2.png")
            sleep(randomSo(10,15)*100)
        end
    end
    RegGmail2()
    RegGmailgiaidoan2()
    while not isImage("mailKPxanh.png") do
        sleep(randomSo(4,7)*100)
        if isImage("verrySDTGG.png") then
            writeLineFile("Xit.txt","1","a")
            sleep(randomSo(5,7)*100)
            ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
            get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
            time = json.decode(get)["datetime"]
            get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
            goto xoadataGhost
        end
    end
    if isImage("mailKPxanh.png") then
        urlImage = "/private/var/mobile/Library/AutoTouch/Scripts/images/mailKPxanh.png"
        result = findImage(urlImage,1,0.99,nil,false)
        tap(result[1][1]+(randomSo(10,30)*10),(result[1][2]+(randomSo(3,5)*10)))
        sleep(randomSo(10,20)*100)
    end
    mailRecovery = Recovery()
    inputKey(mailRecovery)
    sleep(randomSo(4,7)*100)
    writeLineFile("OK.txt","1","a")
    sleep(1000)
    writeFile("Xit.txt","","w")
    ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
    get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
    time = json.decode(get)["datetime"]
    get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?email="..email.."@gmail.com".."&pass="..pass.."&recovery="..mailRecovery.."&tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
    while not isImage("tiepTheoXanhTrang.png") do
        sleep(100)
    end
    sleep(randomSo(4,7)*100)
    clickImage("tiepTheoXanhTrang.png")
    sleep(randomSo(10,15)*100)
    while not isImage("soDT_BoQua.png") do
        sleep(100)
    end
    while isImage("soDT_BoQua.png") do
        sleep(randomSo(5,15)*100)
        clickImage("boQuaXanhTrang.png")
        sleep(randomSo(10,20)*100)
    end
    while not isImage("tiepTheoTen.png") do
        sleep(100)
        if isImage("tieptheoNew2.png") then
            break
        end
    end
    if isImage("tiepTheoTen.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tiepTheoTen.png")
        sleep(randomSo(10,30)*100)
    elseif isImage("tieptheoNew2.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tieptheoNew2.png")
        sleep(randomSo(10,30)*100)
    end
    while not isImage("ThanhCong.png") do
        sleep(randomSo(4,7)*100)
    end
    while not isImage("toiDongYGG.png") do
        sleep(randomSo(4,7)*100)
        moveTo(356,854,356,362)
        sleep(1500)
    end
    while isImage("toiDongYGG.png") do
        clickImage("toiDongYGG.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("okGmailGG.png") do
        sleep(randomSo(4,7)*100)
        if (isImage("TaiUngDung.png") or isImage("openTheApp.png") or isImage("moUngDung.png") or isImage("BTVietGG.png") or isImage("XongMail.png") or isImage("loi502.png") or isImage("loi400.png")) then
            break
        end
    end
    sleep(randomSo(10,15)*100)
    rCho = randomSo(8,14)
    for i =1,rCho do
        sleep(randomSo(60,80)*100)
        if (isImage("TaiUngDung.png") or isImage("okGmailGG.png")) then
            sleep(randomSo(4,7)*100)
            moveTo(344, 1001,348,  528)
            sleep(2500)
            if isImage("KhongQuanTam.png") then
                clickImage("KhongQuanTam.png")
                sleep(randomSo(10,15)*100)
            end
        end
        toast("chờ tý",5)
    end
    ::xoadataGhost::
    sleep(randomSo(4,7)*100)
    sleep(randomSo(10,15)*100)
    while not isImage("clearAllBrowserGhost.png") do
        sleep(randomSo(4,7)*100)
        tap(376, 1290)
        sleep(randomSo(10,15)*100)
    end
    clickImage("clearAllBrowserGhost.png")
    sleep(randomSo(10,15)*100)
    while not isImage("deleteNowGhost.png") do
        sleep(randomSo(2,4)*100)
        if isImage("clearAllBrowserGhost.png") then
            clickImage("clearAllBrowserGhost.png")
            sleep(randomSo(10,15)*100)
        end
    end
    clickImage("deleteNowGhost.png")
    sleep(randomSo(10,15)*100)
    while not isImage("searchGhost.png") do
        sleep(randomSo(4,7)*100)
        if isImage("deleteNowGhost.png") then
            clickImage("deleteNowGhost.png")
            sleep(randomSo(10,15)*100)
        end
    end
    sleep(randomSo(10,20)*100)
    while not isImage("setting_Ghost.png") do
        sleep(randomSo(4,7)*100)
        if isImage("searchGhost.png") then
            tap(376, 1290)
            sleep(randomSo(10,15)*100)
        end
    end
    while not isImage("webData_Ghost.png") do
        sleep(randomSo(2,4)*100)
        if isImage("setting_Ghost.png") then
            clickImage("setting_Ghost.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("dataManage_Ghost.png") then
            clickImage("dataManage_Ghost.png")
            sleep(randomSo(10,15)*100)
        end
    end
    while not isImage("clearData_Ghost.png") do
        sleep(randomSo(5,7)*100)
        moveTo(376,  638,376,  364)
        sleep(randomSo(20,30)*100)
    end
    while not isImage("okClear_Ghost.png") do
        sleep(randomSo(2,4)*100)
        if isImage("clearData_Ghost.png") then
            clickImage("clearData_Ghost.png")
            sleep(randomSo(10,15)*100)
        end
    end
    while isImage("okClear_Ghost.png") do
        sleep(randomSo(2,4)*100)
        clickImage("okClear_Ghost.png")
        sleep(randomSo(30,40)*100)
    end
    sleep(randomSo(30,40)*100)
    vuotApp()
    sleep(1500)
    toast("Xong 1 mail")
    sleep(3000)
    toast("Bắt đầu lại")
    RandomApp()
end

function Ecosia()
    if readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt") then
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        if #sl_ok == 10 then
            writeFile("OK.txt","","w")
            alert("Đã xong 10 mail")
            at.stop()
        else
            sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
            if #sl_xit == 5 then
                writeFile("Xit.txt","","w")
                alert("Đã xịt 5 lần liên tục, nghỉ mai reg")
                at.stop()
            end
        end
    else
        writeFile("OK.txt","","w")
        sleep(500)
        writeFile("Xit.txt","","w")
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
    end
    toast("Đã reg: "..#sl_ok..", đã xịt: "..#sl_xit.." liên tục")
    sleep(2000)
    ChangeIPOBC()
    appRun(id_Ecosia);
    app = "Ecosia"
    sleep(randomSo(10,20)*100)
    while not isImage("timKiemEcosia.png") do
        sleep(randomSo(3,5)*100)
    end
    clickImage("timKiemEcosia.png")
    sleep(randomSo(30,40)*100)
    rLink = randomSo(1,2)
    if rLink == 1 then
        sleep(randomSo(10,20)*100)
        inputKey("google.com/gmail/about")
        sleep(randomSo(4,7)*100)
    else
        sleep(randomSo(10,20)*100)
        inputKey("gmail.com")
        sleep(randomSo(4,7)*100)
    end
    sleep(randomSo(4,7)*100)
    tap(656,1286)
    sleep(randomSo(10,15)*100)
    while not isImage("taiGmail.png") do
        sleep(randomSo(4,7)*100)
        if isImage("taiGmail2.png") or isImage("taoTaiKhoanBrowser.png") or isImage("taoTaiKhoanBrowser2.png") then
            break
        end
        if isImage("xongBanPhimLam.png") then
            clickImage("xongBanPhimLam.png")
            sleep(randomSo(15,20)*100)
        end
    end
    sleep(randomSo(10,15)*100)
    if isImage("taiGmail.png") then
        clickImage("taiGmail.png")
        sleep(randomSo(10,15)*100)
    elseif isImage("taiGmail2.png") then
        clickImage("taiGmail2.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("hoNew.png") do
        sleep(randomSo(4,7)*100)
        if isImage("taiGmail.png") then
            clickImage("taiGmail.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("taiGmail2.png") then
            clickImage("taiGmail2.png")
            sleep(randomSo(10,15)*100)
        end
        if isImage("taoTaiKhoanBrowser.png") then 
            clickImage("taoTaiKhoanBrowser.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("taoTaiKhoanBrowser2.png") then 
            clickImage("taoTaiKhoanBrowser2.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("CaNhanToiBrowser.png") then
            clickImage("CaNhanToiBrowser.png")
            sleep(randomSo(10,15)*100)
        end
    end
    RegGmail2()
    RegGmailgiaidoan22()
    while not isImage("mailKPxanh.png") do
        sleep(randomSo(4,7)*100)
        if isImage("verrySDTGG.png") then
            writeLineFile("Xit.txt","1","a")
            sleep(randomSo(5,7)*100)
            ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
            get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
            time = json.decode(get)["datetime"]
            get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
            goto xoadataEcosia
        end
    end
    if isImage("mailKPxanh.png") then
        urlImage = "/private/var/mobile/Library/AutoTouch/Scripts/images/mailKPxanh.png"
        result = findImage(urlImage,1,0.99,nil,false)
        tap(result[1][1]+(randomSo(10,30)*10),(result[1][2]+(randomSo(3,5)*10)))
        sleep(randomSo(10,20)*100)
    end
    mailRecovery = Recovery()
    inputKey(mailRecovery)
    sleep(randomSo(4,7)*100)
    writeLineFile("OK.txt","1","a")
    sleep(1000)
    writeFile("Xit.txt","","w")
    ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
    get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
    time = json.decode(get)["datetime"]
    get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?email="..email.."@gmail.com".."&pass="..pass.."&recovery="..mailRecovery.."&tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
    while not isImage("tiepTheoXanhTrang.png") do
        sleep(100)
    end
    sleep(randomSo(4,7)*100)
    clickImage("tiepTheoXanhTrang.png")
    sleep(randomSo(10,15)*100)
    while not isImage("soDT_BoQua.png") do
        sleep(100)
    end
    while isImage("soDT_BoQua.png") do
        sleep(randomSo(5,15)*100)
        clickImage("boQuaXanhTrang.png")
        sleep(randomSo(10,20)*100)
    end
    while not isImage("tiepTheoTen.png") do
        sleep(100)
        if isImage("tieptheoNew2.png") then
            break
        end
    end
    if isImage("tiepTheoTen.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tiepTheoTen.png")
        sleep(randomSo(10,30)*100)
    elseif isImage("tieptheoNew2.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tieptheoNew2.png")
        sleep(randomSo(10,30)*100)
    end
    while not isImage("ThanhCong.png") do
        sleep(randomSo(4,7)*100)
    end
    while not isImage("toiDongYGG.png") do
        sleep(randomSo(4,7)*100)
        moveTo(356,854,356,362)
        sleep(1500)
    end
    while isImage("toiDongYGG.png") do
        clickImage("toiDongYGG.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("okGmailGG.png") do
        sleep(randomSo(4,7)*100)
        if (isImage("TaiUngDung.png") or isImage("openTheApp.png") or isImage("moUngDung.png") or isImage("BTVietGG.png") or isImage("XongMail.png") or isImage("loi502.png") or isImage("loi400.png")) then
            break
        end
    end
    sleep(randomSo(10,15)*100)
    rCho = randomSo(8,14)
    for i =1,rCho do
        sleep(randomSo(60,80)*100)
        if (isImage("TaiUngDung.png") or isImage("okGmailGG.png")) then
            sleep(randomSo(4,7)*100)
            moveTo(344, 1001,348,  528)
            sleep(2500)
            if isImage("KhongQuanTam.png") then
                clickImage("KhongQuanTam.png")
                sleep(randomSo(10,15)*100)
            end
        end
        toast("chờ tý",5)
    end
    ::xoadataEcosia::
    sleep(randomSo(4,7)*100)
    sleep(randomSo(10,15)*100)
    while not isImage("dongTatCaEcosia.png") do
        sleep(randomSo(4,7)*100)
        if isImage("tabEcosia.png") then
            clickImage("tabEcosia.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("closeAllEcosia.png") then
            clickImage("closeAllEcosia.png")
            sleep(randomSo(10,15)*100)
        end
    end
    clickImage("dongTatCaEcosia.png")
    sleep(randomSo(4,7)*100)
    while not isImage("menuEcosida.png") do
        sleep(randomSo(2,4)*100)
        if isImage("dongTatCaEcosia.png") then
            clickImage("dongTatCaEcosia.png")
            sleep(randomSo(10,15)*100)
        end
    end
    clickImage("menuEcosida.png")
    sleep(randomSo(4,7)*100)
    while not isImage("caiDatEcosia.png") do
        sleep(randomSo(4,7)*100)
        if isImage("menuEcosida.png") then
            clickImage("menuEcosida.png")
            sleep(randomSo(10,15)*100)
        end
    end
    while isImage("caiDatEcosia.png") do
        sleep(randomSo(2,4)*100)
        clickImage("caiDatEcosia.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("quanLyDuLieuEcosia.png") do
        sleep(randomSo(5,7)*100)
        moveTo(376,  638,376,  364)
        sleep(randomSo(20,30)*100)
    end
    clickImage("quanLyDuLieuEcosia.png")
    sleep(randomSo(10,15)*100)
    while not isImage("xoaDuLieuDenEcosia.png") do
        sleep(randomSo(4,7)*100)
        if isImage("quanLyDuLieuEcosia.png") then
            clickImage("quanLyDuLieuEcosia.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("xoaDuLieuDoEcosia.png") then
            clickImage("xoaDuLieuDoEcosia.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("okXoaEcosia.png") then
            clickImage("okXoaEcosia.png")
            sleep(randomSo(10,15)*100)
        end
    end
    sleep(randomSo(10,15)*100)
    vuotApp()
    sleep(1500)
    toast("Xong 1 mail")
    sleep(3000)
    toast("Bắt đầu lại")
    RandomApp()
end

function Crypto()
    if readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt") then
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        if #sl_ok == 10 then
            writeFile("OK.txt","","w")
            alert("Đã xong 10 mail")
            at.stop()
        else
            sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
            if #sl_xit == 5 then
                writeFile("Xit.txt","","w")
                alert("Đã xịt 5 lần liên tục, nghỉ mai reg")
                at.stop()
            end
        end
    else
        writeFile("OK.txt","","w")
        sleep(500)
        writeFile("Xit.txt","","w")
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
    end
    toast("Đã reg: "..#sl_ok..", đã xịt: "..#sl_xit.." liên tục")
    sleep(2000)
    ChangeIPOBC()
    appRun(id_Cypto);
    app = "Cypto"
    while not isImage("searchCypto.png") do
        sleep(randomSo(3,5)*100)
    end
    clickImage("searchCypto.png")
    sleep(randomSo(10,20)*100)
    sleep(randomSo(7,10)*100)
    inputKey("gmailabout")
    sleep(randomSo(4,7)*100)
    tap(656,1286)
    sleep(randomSo(10,15)*100)
    RegGmail1()
    RegGmailgiaidoan2()
    while not isImage("mailKPxanh.png") do
        sleep(randomSo(4,7)*100)
        if isImage("verrySDTGG.png") then
            writeLineFile("Xit.txt","1","a")
            sleep(randomSo(5,7)*100)
            ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
            get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
            time = json.decode(get)["datetime"]
            get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
            goto xoadataCrypto
        end
    end
    if isImage("mailKPxanh.png") then
        urlImage = "/private/var/mobile/Library/AutoTouch/Scripts/images/mailKPxanh.png"
        result = findImage(urlImage,1,0.99,nil,false)
        tap(result[1][1]+(randomSo(10,30)*10),(result[1][2]+(randomSo(3,5)*10)))
        sleep(randomSo(10,20)*100)
    end
    mailRecovery = Recovery()
    inputKey(mailRecovery)
    sleep(randomSo(4,7)*100)
    writeLineFile("OK.txt","1","a")
    sleep(1000)
    writeFile("Xit.txt","","w")
    ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
    get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
    time = json.decode(get)["datetime"]
    get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?email="..email.."@gmail.com".."&pass="..pass.."&recovery="..mailRecovery.."&tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
    while not isImage("tiepTheoXanhTrang.png") do
        sleep(100)
    end
    sleep(randomSo(4,7)*100)
    clickImage("tiepTheoXanhTrang.png")
    sleep(randomSo(10,15)*100)
    while not isImage("soDT_BoQua.png") do
        sleep(100)
    end
    while isImage("soDT_BoQua.png") do
        sleep(randomSo(5,15)*100)
        clickImage("boQuaXanhTrang.png")
        sleep(randomSo(10,20)*100)
    end
    while not isImage("tiepTheoTen.png") do
        sleep(100)
        if isImage("tieptheoNew2.png") then
            break
        end
    end
    if isImage("tiepTheoTen.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tiepTheoTen.png")
        sleep(randomSo(10,30)*100)
    elseif isImage("tieptheoNew2.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tieptheoNew2.png")
        sleep(randomSo(10,30)*100)
    end
    while not isImage("ThanhCong.png") do
        sleep(randomSo(4,7)*100)
    end
    while not isImage("toiDongYGG.png") do
        sleep(randomSo(4,7)*100)
        moveTo(356,854,356,362)
        sleep(1500)
    end
    while isImage("toiDongYGG.png") do
        clickImage("toiDongYGG.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("okGmailGG.png") do
        sleep(randomSo(4,7)*100)
        if (isImage("TaiUngDung.png") or isImage("openTheApp.png") or isImage("moUngDung.png") or isImage("BTVietGG.png") or isImage("XongMail.png") or isImage("loi502.png") or isImage("loi400.png")) then
            break
        end
    end
    sleep(randomSo(10,15)*100)
    rCho = randomSo(8,14)
    for i =1,rCho do
        sleep(randomSo(60,80)*100)
        if (isImage("TaiUngDung.png") or isImage("okGmailGG.png")) then
            sleep(randomSo(4,7)*100)
            moveTo(344, 1001,348,  528)
            sleep(2500)
            if isImage("KhongQuanTam.png") then
                clickImage("KhongQuanTam.png")
                sleep(randomSo(10,15)*100)
            end
        end
        toast("chờ tý",5)
    end
    ::xoadataCrypto::
    sleep(randomSo(4,7)*100)
    sleep(randomSo(10,15)*100)
    while not isImage("closeAllCrypto.png") do
        sleep(randomSo(4,7)*100)
        if isImage("tabCrypto.png") then
            clickImage("tabCrypto.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("closeAllTabCrypto.png") then
            clickImage("closeAllTabCrypto.png")
            sleep(randomSo(10,15)*100)
        end
    end
    while isImage("closeAllCrypto.png") do
        clickImage("closeAllCrypto.png")
        sleep(randomSo(4,7)*100)
    end
    while not isImage("clearDenCrypto.png") do
        sleep(randomSo(2,4)*100)
        if isImage("doneTabCrypto.png") then
            clickImage("doneTabCrypto.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("clearBrowserCrypto.png") then
            clickImage("clearBrowserCrypto.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("settingCrypto.png") then
            clickImage("settingCrypto.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("browserSettingCrypto.png") then
            clickImage("browserSettingCrypto.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("menuCrypto.png") then
            clickImage("menuCrypto.png")
            sleep(randomSo(4,7)*100)
        end
    end
    if isImage("clearDenCrypto.png") then
        sleep(randomSo(2,4)*100)
        tap(183,  275)
        sleep(randomSo(4,7)*100)
        tap(179,  406)
        sleep(randomSo(4,7)*100)
        tap(191,  535)
        sleep(randomSo(4,7)*100)
        tap(163,  669)
        sleep(randomSo(4,7)*100)
        tap(182,  799)
        sleep(randomSo(4,7)*100)
    end
    while not isImage("clearXanhCrypto.png") do
        sleep(randomSo(4,7)*100)
        if isImage("clearDenCrypto.png") then
            sleep(randomSo(2,4)*100)
            tap(183,  275)
            sleep(randomSo(4,7)*100)
            tap(179,  406)
            sleep(randomSo(4,7)*100)
            tap(191,  535)
            sleep(randomSo(4,7)*100)
            tap(163,  669)
            sleep(randomSo(4,7)*100)
            tap(182,  799)
            sleep(randomSo(4,7)*100)
        end
    end
    clickImage("clearXanhCrypto.png")
    sleep(randomSo(1,2)*100)
    while not isImage("clearXongCrypto.png") do
        sleep(randomSo(1,2)*100)
        if isImage("clearXanhCrypto.png") then
            clickImage("clearXanhCrypto.png")
            sleep(randomSo(1,2)*100)
        end
    end
    sleep(randomSo(10,15)*100)
    vuotApp()
    sleep(1500)
    toast("Xong 1 mail")
    sleep(3000)
    toast("Bắt đầu lại")
    RandomApp()
end

function Maxthon()
    if readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt") then
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        if #sl_ok == 10 then
            writeFile("OK.txt","","w")
            alert("Đã xong 10 mail")
            at.stop()
        else
            sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
            if #sl_xit == 5 then
                writeFile("Xit.txt","","w")
                alert("Đã xịt 5 lần liên tục, nghỉ mai reg")
                at.stop()
            end
        end
    else
        writeFile("OK.txt","","w")
        sleep(500)
        writeFile("Xit.txt","","w")
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
    end
    toast("Đã reg: "..#sl_ok..", đã xịt: "..#sl_xit.." liên tục")
    sleep(2000)
    ChangeIPOBC()
    appRun(id_Maxthon);
    app = "Maxthon"
    sleep(randomSo(20,30)*100)
    while not isImage("searchMaxThon.png") do
        sleep(randomSo(3,5)*100)
        if isImage("tab2Maxthon.png") then
            while not isImage("closeAllMaxthon.png") do
                sleep(randomSo(4,7)*100)
                if isImage("tab2Maxthon.png") then
                    clickImage("tab2Maxthon.png")
                    sleep(randomSo(10,15)*100)
                end
            end
            while isImage("closeAllMaxthon.png") do
                clickImage("closeAllMaxthon.png")
                sleep(randomSo(4,7)*100)
            end
        end
    end
    clickImage("searchMaxThon.png")
    sleep(randomSo(30,40)*100)
    inputKey("mail.google.com")
    sleep(randomSo(4,7)*100)
    tap(656,1286)
    sleep(randomSo(10,15)*100)
    while not isImage("taiGmail.png") do
        sleep(randomSo(4,7)*100)
        if isImage("taiGmail2.png") or isImage("taoTaiKhoanBrowser.png") or isImage("taoTaiKhoanBrowser2.png") then
            break
        end
        if isImage("xongBanPhimLam.png") then
            clickImage("xongBanPhimLam.png")
            sleep(randomSo(15,20)*100)
        end
    end
    sleep(randomSo(10,15)*100)
    if isImage("taiGmail.png") then
        clickImage("taiGmail.png")
        sleep(randomSo(10,15)*100)
    elseif isImage("taiGmail2.png") then
        clickImage("taiGmail2.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("hoNew.png") do
        sleep(randomSo(4,7)*100)
        if isImage("taiGmail.png") then
            clickImage("taiGmail.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("taiGmail2.png") then
            clickImage("taiGmail2.png")
            sleep(randomSo(10,15)*100)
        end
        if isImage("taoTaiKhoanBrowser.png") then 
            clickImage("taoTaiKhoanBrowser.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("taoTaiKhoanBrowser2.png") then 
            clickImage("taoTaiKhoanBrowser2.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("CaNhanToiBrowser.png") then
            clickImage("CaNhanToiBrowser.png")
            sleep(randomSo(10,15)*100)
        end
    end
    RegGmail2()
    RegGmailgiaidoan2()
    while not isImage("mailKPxanh.png") do
        sleep(randomSo(4,7)*100)
        if isImage("verrySDTGG.png") then
            writeLineFile("Xit.txt","1","a")
            sleep(randomSo(5,7)*100)
            ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
            get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
            time = json.decode(get)["datetime"]
            get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
            goto xoadataMaxthon
        end
    end
    if isImage("mailKPxanh.png") then
        urlImage = "/private/var/mobile/Library/AutoTouch/Scripts/images/mailKPxanh.png"
        result = findImage(urlImage,1,0.99,nil,false)
        tap(result[1][1]+(randomSo(10,30)*10),(result[1][2]+(randomSo(3,5)*10)))
        sleep(randomSo(10,20)*100)
    end
    mailRecovery = Recovery()
    inputKey(mailRecovery)
    sleep(randomSo(4,7)*100)
    writeLineFile("OK.txt","1","a")
    sleep(1000)
    writeFile("Xit.txt","","w")
    ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
    get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
    time = json.decode(get)["datetime"]
    get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?email="..email.."@gmail.com".."&pass="..pass.."&recovery="..mailRecovery.."&tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
    while not isImage("tiepTheoXanhTrang.png") do
        sleep(100)
    end
    sleep(randomSo(4,7)*100)
    clickImage("tiepTheoXanhTrang.png")
    sleep(randomSo(10,15)*100)
    while not isImage("soDT_BoQua.png") do
        sleep(100)
    end
    while isImage("soDT_BoQua.png") do
        sleep(randomSo(5,15)*100)
        clickImage("boQuaXanhTrang.png")
        sleep(randomSo(10,20)*100)
    end
    while not isImage("tiepTheoTen.png") do
        sleep(100)
        if isImage("tieptheoNew2.png") then
            break
        end
    end
    if isImage("tiepTheoTen.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tiepTheoTen.png")
        sleep(randomSo(10,30)*100)
    elseif isImage("tieptheoNew2.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tieptheoNew2.png")
        sleep(randomSo(10,30)*100)
    end
    while not isImage("ThanhCong.png") do
        sleep(randomSo(4,7)*100)
    end
    while not isImage("toiDongYGG.png") do
        sleep(randomSo(4,7)*100)
        moveTo(356,854,356,362)
        sleep(1500)
    end
    while isImage("toiDongYGG.png") do
        clickImage("toiDongYGG.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("okGmailGG.png") do
        sleep(randomSo(4,7)*100)
        if (isImage("TaiUngDung.png") or isImage("openTheApp.png") or isImage("moUngDung.png") or isImage("BTVietGG.png") or isImage("XongMail.png") or isImage("loi502.png") or isImage("loi400.png")) then
            break
        end
    end
    sleep(randomSo(10,15)*100)
    rCho = randomSo(8,14)
    for i =1,rCho do
        sleep(randomSo(60,80)*100)
        if (isImage("TaiUngDung.png") or isImage("okGmailGG.png")) then
            sleep(randomSo(4,7)*100)
            moveTo(344, 1001,348,  528)
            sleep(2500)
            if isImage("KhongQuanTam.png") then
                clickImage("KhongQuanTam.png")
                sleep(randomSo(10,15)*100)
            end
        end
        toast("chờ tý",5)
    end
    ::xoadataMaxthon::
    sleep(randomSo(4,7)*100)
    sleep(randomSo(10,15)*100)
    while not isImage("closeAllMaxthon.png") do
        sleep(randomSo(4,7)*100)
        if isImage("tabMaxthon.png") then
            clickImage("tabMaxthon.png")
            sleep(randomSo(10,15)*100)

        end
    end
    while isImage("closeAllMaxthon.png") do
        clickImage("closeAllMaxthon.png")
        sleep(randomSo(4,7)*100)
    end
    while not isImage("clearDataDoMaxthon.png") do
        sleep(randomSo(2,4)*100)
        if isImage("searchMaxThon.png") then
            sleep(randomSo(2,4)*100)
            tap(54,   99)
            sleep(randomSo(4,7)*100)
        elseif isImage("caiDatMaxthon.png") then
            clickImage("caiDatMaxthon.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("clearDataMathon.png") then
            clickImage("clearDataMathon.png")
            sleep(randomSo(4,7)*100)
        end
    end
    if isImage("clearDataDoMaxthon.png") then
        sleep(randomSo(2,4)*100)
        tap(703,  189)
        sleep(randomSo(4,7)*100)
        tap(703,  300)
        sleep(randomSo(4,7)*100)
        tap(699,  409)
        sleep(randomSo(4,7)*100)
        tap(703,  510)
        sleep(randomSo(4,7)*100)
    end
    while not isImage("okXoaMaxthon.png") do
        sleep(randomSo(4,7)*100)
        if isImage("clearDataDoMaxthon.png") then
            clickImage("clearDataDoMaxthon.png")
            sleep(randomSo(1,2)*100)
        end
    end
    clickImage("okXoaMaxthon.png")
    sleep(randomSo(1,2)*100)
    while not isImage("clearXongMaxthon.png") do
        sleep(randomSo(1,2)*100)
        if isImage("okXoaMaxthon.png") then
            clickImage("okXoaMaxthon.png")
            sleep(randomSo(1,2)*100)
        end
    end
    sleep(randomSo(10,15)*100)
    vuotApp()
    sleep(1500)
    toast("Xong 1 mail")
    sleep(3000)
    toast("Bắt đầu lại")
    RandomApp()
end

function Ocean()
    if readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt") then
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        if #sl_ok == 10 then
            writeFile("OK.txt","","w")
            alert("Đã xong 10 mail")
            at.stop()
        else
            sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
            if #sl_xit == 5 then
                writeFile("Xit.txt","","w")
                alert("Đã xịt 5 lần liên tục, nghỉ mai reg")
                at.stop()
            end
        end
    else
        writeFile("OK.txt","","w")
        sleep(500)
        writeFile("Xit.txt","","w")
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
    end
    toast("Đã reg: "..#sl_ok..", đã xịt: "..#sl_xit.." liên tục")
    sleep(2000)
    ChangeIPOBC()
    appRun(id_Ocean);
    app = "Ocean"
    for i = 1,10 do
        sleep(randomSo(3,5)*100)
        if isImage("diDenCaiDat_Ocean.png") then
            sleep(randomSo(4,7)*100)
            tap(666,143)
            sleep(randomSo(10,15)*100)
            break
        end
    end
    if isImage("diDenCaiDat_Ocean.png") then
        sleep(randomSo(4,7)*100)
        tap(666,143)
        sleep(randomSo(10,15)*100)
    end
    while not isImage("timkiemOcean.png") do
        sleep(randomSo(3,5)*100)
        if isImage("timKiem2Ocean.png") then
            break
        end
    end
    if isImage("timkiemOcean.png") then
        clickImage("timkiemOcean.png")
        sleep(randomSo(10,20)*100)
    elseif isImage("timKiem2Ocean.png") then
        clickImage("timKiem2Ocean.png")
        sleep(randomSo(10,20)*100)
    end
    sleep(randomSo(30,40)*100)
    inputKey("gmailabout")
    sleep(randomSo(4,7)*100)
    tap(656,1286)
    sleep(randomSo(10,15)*100)
    RegGmail1()
    RegGmailgiaidoan2()
    while not isImage("mailKPxanh.png") do
        sleep(randomSo(4,7)*100)
        if isImage("verrySDTGG.png") then
            writeLineFile("Xit.txt","1","a")
            sleep(500)
            ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
            get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
            time = json.decode(get)["datetime"]
            get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
            goto xoadataOcean
        end
    end
    if isImage("mailKPxanh.png") then
        urlImage = "/private/var/mobile/Library/AutoTouch/Scripts/images/mailKPxanh.png"
        result = findImage(urlImage,1,0.99,nil,false)
        tap(result[1][1]+(randomSo(10,30)*10),(result[1][2]+(randomSo(3,5)*10)))
        sleep(randomSo(10,20)*100)
    end
    mailRecovery = Recovery()
    inputKey(mailRecovery)
    sleep(randomSo(4,7)*100)
    writeLineFile("OK.txt","1","a")
    sleep(1000)
    writeFile("Xit.txt","","w")
    ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
    get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
    time = json.decode(get)["datetime"]
    get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?email="..email.."@gmail.com".."&pass="..pass.."&recovery="..mailRecovery.."&tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
    while not isImage("tiepTheoXanhTrang.png") do
        sleep(100)
    end
    sleep(randomSo(4,7)*100)
    clickImage("tiepTheoXanhTrang.png")
    sleep(randomSo(10,15)*100)
    while not isImage("soDT_BoQua.png") do
        sleep(100)
    end
    while isImage("soDT_BoQua.png") do
        sleep(randomSo(5,15)*100)
        clickImage("boQuaXanhTrang.png")
        sleep(randomSo(10,20)*100)
    end
    while not isImage("tiepTheoTen.png") do
        sleep(100)
        if isImage("tieptheoNew2.png") then
            break
        end
    end
    if isImage("tiepTheoTen.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tiepTheoTen.png")
        sleep(randomSo(10,30)*100)
    elseif isImage("tieptheoNew2.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tieptheoNew2.png")
        sleep(randomSo(10,30)*100)
    end
    while not isImage("ThanhCong.png") do
        sleep(randomSo(4,7)*100)
    end
    while not isImage("toiDongYGG.png") do
        sleep(randomSo(4,7)*100)
        moveTo(356,854,356,362)
        sleep(1500)
    end
    while isImage("toiDongYGG.png") do
        clickImage("toiDongYGG.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("okGmailGG.png") do
        sleep(randomSo(4,7)*100)
        if (isImage("TaiUngDung.png") or isImage("openTheApp.png") or isImage("moUngDung.png") or isImage("BTVietGG.png") or isImage("XongMail.png") or isImage("loi502.png") or isImage("loi400.png")) then
            break
        end
    end
    sleep(randomSo(10,15)*100)
    rCho = randomSo(8,14)
    for i =1,rCho do
        sleep(randomSo(60,80)*100)
        if (isImage("TaiUngDung.png") or isImage("okGmailGG.png")) then
            sleep(randomSo(4,7)*100)
            moveTo(344, 1001,348,  528)
            sleep(2500)
            if isImage("KhongQuanTam.png") then
                clickImage("KhongQuanTam.png")
                sleep(randomSo(10,15)*100)
            end
        end
        toast("chờ tý",5)
    end
    ::xoadataOcean::
    sleep(randomSo(4,7)*100)
    sleep(randomSo(10,15)*100)
    while not isImage("closeTabOcean.png") do
        sleep(randomSo(4,7)*100)
        if isImage("tabOcean.png") then
            clickImage("tabOcean.png")
            sleep(randomSo(10,15)*100)
        end
    end
    while isImage("closeTabOcean.png") do
        clickImage("closeTabOcean.png")
        sleep(randomSo(4,7)*100)
    end
    while not isImage("timKiem2Ocean.png") do
        sleep(randomSo(2,4)*100)
        if isImage("closeTabOcean.png") then
            clickImage("closeTabOcean.png")
            sleep(randomSo(4,7)*100)
        end
    end
    while not isImage("caiDatOcean.png") do
        sleep(randomSo(2,4)*100)
        if isImage("menuOcean.png") then
            clickImage("menuOcean.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("timKiem2Ocean.png") then
            tap(36,   92)
            sleep(randomSo(4,7)*100)
        end
    end
    while isImage("caiDatOcean.png") do
        clickImage("caiDatOcean.png")
        sleep(randomSo(4,7)*100)
    end
    while not isImage("quanLyDL_Ocean.png") do
        sleep(randomSo(5,7)*100)
        moveTo(376,  638,376,  364)
        sleep(randomSo(20,30)*100)
    end
    clickImage("quanLyDL_Ocean.png")
    sleep(randomSo(4,7)*100)
    while not isImage("xoaDLDen_Ocean.png") do
        sleep(randomSo(4,7)*100)
        if isImage("quanLyDL_Ocean.png") then
            clickImage("quanLyDL_Ocean.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("xoaDLDo_Ocean.png") then
            clickImage("xoaDLDo_Ocean.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("okXoa_Ocean.png") then
            clickImage("okXoa_Ocean.png")
            sleep(randomSo(15,25)*100)
        end
    end
    sleep(randomSo(10,15)*100)
    vuotApp()
    sleep(1500)
    toast("Xong 1 mail")
    sleep(3000)
    toast("Bắt đầu lại")
    RandomApp()
end

function Puma()
    if readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt") then
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        if #sl_ok == 10 then
            writeFile("OK.txt","","w")
            alert("Đã xong 10 mail")
            at.stop()
        else
            sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
            if #sl_xit == 5 then
                writeFile("Xit.txt","","w")
                alert("Đã xịt 5 lần liên tục, nghỉ mai reg")
                at.stop()
            end
        end
    else
        writeFile("OK.txt","","w")
        sleep(500)
        writeFile("Xit.txt","","w")
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
    end
    toast("Đã reg: "..#sl_ok..", đã xịt: "..#sl_xit.." liên tục")
    sleep(2000)
    ChangeIPOBC()
    appRun(id_Puma);
    app = "Puma"
    sleep(randomSo(10,15)*100)
    while not isImage("daClickTimKiem_Puma.png") do
        sleep(randomSo(4,7)*100)
        if isImage("timKiemPuma.png") then
            clickImage("timKiemPuma.png")
            sleep(randomSo(15,20)*100)
        end
    end
    sleep(randomSo(30,40)*100)
    inputKey("mail.google.com")
    sleep(randomSo(4,7)*100)
    tap(656,1286)
    sleep(randomSo(10,15)*100)
    while not isImage("taiGmail.png") do
        sleep(randomSo(4,7)*100)
        if isImage("taiGmail2.png") or isImage("taoTaiKhoanBrowser.png") or isImage("taoTaiKhoanBrowser2.png") then
            break
        end
        if isImage("xongBanPhimLam.png") then
            clickImage("xongBanPhimLam.png")
            sleep(randomSo(15,20)*100)
        end
    end
    sleep(randomSo(10,15)*100)
    if isImage("taiGmail.png") then
        clickImage("taiGmail.png")
        sleep(randomSo(10,15)*100)
    elseif isImage("taiGmail2.png") then
        clickImage("taiGmail2.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("hoNew.png") do
        sleep(randomSo(4,7)*100)
        if isImage("taiGmail.png") then
            clickImage("taiGmail.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("taiGmail2.png") then
            clickImage("taiGmail2.png")
            sleep(randomSo(10,15)*100)
        end
        if isImage("taoTaiKhoanBrowser.png") then 
            clickImage("taoTaiKhoanBrowser.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("taoTaiKhoanBrowser2.png") then 
            clickImage("taoTaiKhoanBrowser2.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("CaNhanToiBrowser.png") then
            clickImage("CaNhanToiBrowser.png")
            sleep(randomSo(10,15)*100)
        end
    end
    RegGmail2()
    RegGmailgiaidoan2()
    while not isImage("mailKPxanh.png") do
        sleep(randomSo(4,7)*100)
        if isImage("verrySDTGG.png") then
            writeLineFile("Xit.txt","1","a")
            sleep(randomSo(5,7)*100)
            ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
            get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
            time = json.decode(get)["datetime"]
            get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
            goto xoadataPuma
        end
    end
    if isImage("mailKPxanh.png") then
        urlImage = "/private/var/mobile/Library/AutoTouch/Scripts/images/mailKPxanh.png"
        result = findImage(urlImage,1,0.99,nil,false)
        tap(result[1][1]+(randomSo(10,30)*10),(result[1][2]+(randomSo(3,5)*10)))
        sleep(randomSo(10,20)*100)
    end
    mailRecovery = Recovery()
    inputKey(mailRecovery)
    sleep(randomSo(4,7)*100)
    writeLineFile("OK.txt","1","a")
    sleep(1000)
    writeFile("Xit.txt","","w")
    ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
    get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
    time = json.decode(get)["datetime"]
    get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?email="..email.."@gmail.com".."&pass="..pass.."&recovery="..mailRecovery.."&tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
    while not isImage("tiepTheoXanhTrang.png") do
        sleep(100)
    end
    sleep(randomSo(4,7)*100)
    clickImage("tiepTheoXanhTrang.png")
    sleep(randomSo(10,15)*100)
    while not isImage("soDT_BoQua.png") do
        sleep(100)
    end
    while isImage("soDT_BoQua.png") do
        sleep(randomSo(5,15)*100)
        clickImage("boQuaXanhTrang.png")
        sleep(randomSo(10,20)*100)
    end
    while not isImage("tiepTheoTen.png") do
        sleep(100)
        if isImage("tieptheoNew2.png") then
            break
        end
    end
    if isImage("tiepTheoTen.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tiepTheoTen.png")
        sleep(randomSo(10,30)*100)
    elseif isImage("tieptheoNew2.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tieptheoNew2.png")
        sleep(randomSo(10,30)*100)
    end
    while not isImage("ThanhCong.png") do
        sleep(randomSo(4,7)*100)
    end
    while not isImage("toiDongYGG.png") do
        sleep(randomSo(4,7)*100)
        moveTo(356,854,356,362)
        sleep(1500)
    end
    while isImage("toiDongYGG.png") do
        clickImage("toiDongYGG.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("okGmailGG.png") do
        sleep(randomSo(4,7)*100)
        if (isImage("TaiUngDung.png") or isImage("openTheApp.png") or isImage("moUngDung.png") or isImage("BTVietGG.png") or isImage("XongMail.png") or isImage("loi502.png") or isImage("loi400.png")) then
            break
        end
    end
    sleep(randomSo(10,15)*100)
    rCho = randomSo(8,14)
    for i =1,rCho do
        sleep(randomSo(60,80)*100)
        if (isImage("TaiUngDung.png") or isImage("okGmailGG.png")) then
            sleep(randomSo(4,7)*100)
            moveTo(344, 1001,348,  528)
            sleep(2500)
            if isImage("KhongQuanTam.png") then
                clickImage("KhongQuanTam.png")
                sleep(randomSo(10,15)*100)
            end
        end
        toast("chờ tý",5)
    end
    ::xoadataPuma::
    sleep(randomSo(4,7)*100)
    sleep(randomSo(10,15)*100)
    while not isImage("HomePuma.png") do
        sleep(randomSo(4,7)*100)
    end
    clickImage("HomePuma.png")
    sleep(randomSo(4,7)*100)
    while not isImage("menuPuma.png") do
        sleep(randomSo(2,4)*100)
        if isImage("HomePuma.png") then
            clickImage("HomePuma.png")
            sleep(randomSo(4,7)*100)
        end
    end
    clickImage("menuPuma.png")
    sleep(randomSo(4,7)*100)
    while not isImage("caiDatPuma.png") do
        sleep(randomSo(2,4)*100)
        if isImage("menuPuma.png") then
            clickImage("menuPuma.png")
            sleep(randomSo(4,7)*100)

        end
    end
    while isImage("caiDatPuma.png") do
        clickImage("caiDatPuma.png")
        sleep(randomSo(4,7)*100)
    end
    while not isImage("quanLyDuLieu_Puma.png") do
        sleep(randomSo(5,7)*100)
        moveTo(376,  638,376,  364)
        sleep(randomSo(20,30)*100)
    end
    clickImage("quanLyDuLieu_Puma.png")
    sleep(randomSo(4,7)*100)
    while not isImage("xoaDLDen_Puma.png") do
        sleep(randomSo(4,7)*100)
        if isImage("quanLyDuLieu_Puma.png") then
            clickImage("quanLyDuLieu_Puma.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("xoaDuLieuDo_Puma.png") then
            clickImage("xoaDuLieuDo_Puma.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("okXoa_Puma.png") then
            clickImage("okXoa_Puma.png")
            sleep(randomSo(20,30)*100)
        end
    end
    sleep(randomSo(10,15)*100)
    vuotApp()
    sleep(1500)
    toast("Xong 1 mail")
    sleep(3000)
    toast("Bắt đầu lại")
    RandomApp()
end

function Pure()
    if readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt") then
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        if #sl_ok == 10 then
            writeFile("OK.txt","","w")
            alert("Đã xong 10 mail")
            at.stop()
        else
            sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
            if #sl_xit == 5 then
                writeFile("Xit.txt","","w")
                alert("Đã xịt 5 lần liên tục, nghỉ mai reg")
                at.stop()
            end
        end
    else
        writeFile("OK.txt","","w")
        sleep(500)
        writeFile("Xit.txt","","w")
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
    end
    toast("Đã reg: "..#sl_ok..", đã xịt: "..#sl_xit.." liên tục")
    sleep(2000)
    ChangeIPOBC()
    appRun(id_Pure);
    app = "Pure"
    sleep(randomSo(20,30)*100)
    while not isImage("searchPure.png") do
        sleep(randomSo(3,5)*100)
    end
    sleep(randomSo(20,30)*100)
    clickImage("searchPure.png")
    sleep(randomSo(30,40)*100)
    inputKey("gmailabout")
    sleep(randomSo(4,7)*100)
    tap(656,1286)
    sleep(randomSo(10,15)*100)
    RegGmail1()
    RegGmailgiaidoan2()
    while not isImage("mailKPxanh.png") do
        sleep(randomSo(4,7)*100)
        if isImage("verrySDTGG.png") then
            writeLineFile("Xit.txt","1","a")
            sleep(randomSo(5,7)*100)
            ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
            get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
            time = json.decode(get)["datetime"]
            get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
            goto xoadataPure
        end
    end
    if isImage("mailKPxanh.png") then
        urlImage = "/private/var/mobile/Library/AutoTouch/Scripts/images/mailKPxanh.png"
        result = findImage(urlImage,1,0.99,nil,false)
        tap(result[1][1]+(randomSo(10,30)*10),(result[1][2]+(randomSo(3,5)*10)))
        sleep(randomSo(10,20)*100)
    end
    mailRecovery = Recovery()
    inputKey(mailRecovery)
    sleep(randomSo(4,7)*100)
    writeLineFile("OK.txt","1","a")
    sleep(1000)
    writeFile("Xit.txt","","w")
    ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
    get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
    time = json.decode(get)["datetime"]
    get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?email="..email.."@gmail.com".."&pass="..pass.."&recovery="..mailRecovery.."&tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
    while not isImage("tiepTheoXanhTrang.png") do
        sleep(100)
    end
    sleep(randomSo(4,7)*100)
    clickImage("tiepTheoXanhTrang.png")
    sleep(randomSo(10,15)*100)
    while not isImage("soDT_BoQua.png") do
        sleep(100)
    end
    while isImage("soDT_BoQua.png") do
        sleep(randomSo(5,15)*100)
        clickImage("boQuaXanhTrang.png")
        sleep(randomSo(10,20)*100)
    end
    while not isImage("tiepTheoTen.png") do
        sleep(100)
        if isImage("tieptheoNew2.png") then
            break
        end
    end
    if isImage("tiepTheoTen.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tiepTheoTen.png")
        sleep(randomSo(10,30)*100)
    elseif isImage("tieptheoNew2.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tieptheoNew2.png")
        sleep(randomSo(10,30)*100)
    end
    while not isImage("ThanhCong.png") do
        sleep(randomSo(4,7)*100)
    end
    while not isImage("toiDongYGG.png") do
        sleep(randomSo(4,7)*100)
        moveTo(356,854,356,362)
        sleep(1500)
    end
    while isImage("toiDongYGG.png") do
        clickImage("toiDongYGG.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("okGmailGG.png") do
        sleep(randomSo(4,7)*100)
        if (isImage("TaiUngDung.png") or isImage("openTheApp.png") or isImage("moUngDung.png") or isImage("BTVietGG.png") or isImage("XongMail.png") or isImage("loi502.png") or isImage("loi400.png")) then
            break
        end
    end
    sleep(randomSo(10,15)*100)
    rCho = randomSo(8,14)
    for i =1,rCho do
        sleep(randomSo(60,80)*100)
        if (isImage("TaiUngDung.png") or isImage("okGmailGG.png")) then
            sleep(randomSo(4,7)*100)
            moveTo(344, 1001,348,  528)
            sleep(2500)
            if isImage("KhongQuanTam.png") then
                clickImage("KhongQuanTam.png")
                sleep(randomSo(10,15)*100)
            end
        end
        toast("chờ tý",5)
    end
    ::xoadataPure::
    sleep(randomSo(5,7)*100)
    sleep(randomSo(10,15)*100)
    vuotApp()
    sleep(randomSo(20,30)*100)
    appRun(id_Pure)
    while not isImage("private_Pure.png") do
        sleep(randomSo(4,7)*100)
        if isImage("tab_Pure.png") then
            clickImage("tab_Pure.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("ok_Pure.png") then
            clickImage("ok_Pure.png")
            sleep(randomSo(4,7)*100)
        end
    end
    if isImage("private_Pure.png") then
        sleep(randomSo(4,7)*100)
        tap(669,  239)
        sleep(randomSo(10,15)*100)
    end
    while not isImage("caiDat_Pure.png") do
        sleep(randomSo(2,4)*100)
        if isImage("private_Pure.png") then
            sleep(randomSo(4,7)*100)
            tap(669,  239)
            sleep(randomSo(10,15)*100)
        end
    end
    while isImage("caiDat_Pure.png") do
        clickImage("caiDat_Pure.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("clearData_Pure.png") do
        sleep(randomSo(5,7)*100)
        moveTo(376,  638,376,  364)
        sleep(randomSo(20,30)*100)
    end
    clickImage("clearData_Pure.png")
    sleep(randomSo(10,15)*100)
    while not isImage("clearDen_Pure.png") do
        sleep(randomSo(5,7)*100)
        if isImage("clearData_Pure.png") then
            clickImage("clearData_Pure.png")
            sleep(randomSo(10,15)*100)
        end
    end
    if isImage("clearDen_Pure.png") then
        sleep(randomSo(4,7)*100)
        tap(96,  419)
        sleep(randomSo(4,7)*100)
        tap(105,  508)
        sleep(randomSo(4,7)*100)
        tap(108,  638)
        sleep(randomSo(4,7)*100)
        tap(134,  770)
        sleep(randomSo(4,7)*100)
    end
    while not isImage("allTime_Pure.png") do
        sleep(randomSo(5,7)*100)
        moveTo(376,  638,376,  364)
        sleep(randomSo(20,30)*100)
    end
    clickImage("allTime_Pure.png")
    sleep(randomSo(4,7)*100)
    while not isImage("clearXanh_Pure.png") do
        sleep(randomSo(4,7)*100)
        if isImage("allTime_Pure.png") then
            clickImage("allTime_Pure.png")
            sleep(randomSo(4,7)*100)
        end
    end
    clickImage("allTime_Pure.png")
    sleep(randomSo(10,15)*100)
    while not isImage("xoaXong_Pure.png") do
        sleep(randomSo(4,7)*100)
        if isImage("clearXanh_Pure.png") then
            clickImage("clearXanh_Pure.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("yesXoa_Pure.png") then
            clickImage("yesXoa_Pure.png")
            sleep(randomSo(10,15)*100)
        end
    end
    sleep(randomSo(10,15)*100)
    vuotApp()
    sleep(1500)
    toast("Xong 1 mail")
    sleep(3000)
    toast("Bắt đầu lại")
    RandomApp()
end

function Webbrowser()
    if readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt") then
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        if #sl_ok == 10 then
            writeFile("OK.txt","","w")
            alert("Đã xong 10 mail")
            at.stop()
        else
            sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
            if #sl_xit == 5 then
                writeFile("Xit.txt","","w")
                alert("Đã xịt 5 lần liên tục, nghỉ mai reg")
                at.stop()
            end
        end
    else
        writeFile("OK.txt","","w")
        sleep(500)
        writeFile("Xit.txt","","w")
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
    end
    toast("Đã reg: "..#sl_ok..", đã xịt: "..#sl_xit.." liên tục")
    sleep(2000)
    ChangeIPOBC()
    appRun(id_Webbrowser);
    app = "Webbrowser"
    while not isImage("searchWebbrowser.png") do
        sleep(randomSo(3,5)*100)
        if isImage("searchGGWebbrowser.png") then
            break
        end
    end
    sleep(randomSo(30,50)*100)
    while not isImage("searchWebbrowser.png") do
        sleep(randomSo(3,5)*100)
        if isImage("searchGGWebbrowser.png") then
            break
        end
    end
    if isImage("searchGGWebbrowser.png") then
        clickImage("searchGGWebbrowser.png")
        sleep(randomSo(20,30)*100)
    elseif isImage("searchWebbrowser.png") then
        clickImage("searchWebbrowser.png")
        sleep(randomSo(20,30)*100)
    end
    sleep(randomSo(7,10)*100)
    inputKey("gmailabout")
    sleep(randomSo(4,7)*100)
    tap(656,1286)
    sleep(randomSo(10,15)*100)
    RegGmail1()
    RegGmailgiaidoan2()
    while not isImage("mailKPxanh.png") do
        sleep(randomSo(4,7)*100)
        if isImage("verrySDTGG.png") then
            writeLineFile("Xit.txt","1","a")
            sleep(500)
            ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
            get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
            time = json.decode(get)["datetime"]
            get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
            goto xoadataWebbrowser
        end
    end
    if isImage("mailKPxanh.png") then
        urlImage = "/private/var/mobile/Library/AutoTouch/Scripts/images/mailKPxanh.png"
        result = findImage(urlImage,1,0.99,nil,false)
        tap(result[1][1]+(randomSo(10,30)*10),(result[1][2]+(randomSo(3,5)*10)))
        sleep(randomSo(10,20)*100)
    end
    mailRecovery = Recovery()
    inputKey(mailRecovery)
    sleep(randomSo(4,7)*100)
    writeLineFile("OK.txt","1","a")
    sleep(1000)
    writeFile("Xit.txt","","w")
    ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
    get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
    time = json.decode(get)["datetime"]
    get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?email="..email.."@gmail.com".."&pass="..pass.."&recovery="..mailRecovery.."&tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
    while not isImage("tiepTheoXanhTrang.png") do
        sleep(100)
    end
    sleep(randomSo(4,7)*100)
    clickImage("tiepTheoXanhTrang.png")
    sleep(randomSo(10,15)*100)
    while not isImage("soDT_BoQua.png") do
        sleep(100)
    end
    while isImage("soDT_BoQua.png") do
        sleep(randomSo(5,15)*100)
        clickImage("boQuaXanhTrang.png")
        sleep(randomSo(10,20)*100)
    end
    while not isImage("tiepTheoTen.png") do
        sleep(100)
        if isImage("tieptheoNew2.png") then
            break
        end
    end
    if isImage("tiepTheoTen.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tiepTheoTen.png")
        sleep(randomSo(10,30)*100)
    elseif isImage("tieptheoNew2.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tieptheoNew2.png")
        sleep(randomSo(10,30)*100)
    end
    while not isImage("ThanhCong.png") do
        sleep(randomSo(4,7)*100)
    end
    while not isImage("toiDongYGG.png") do
        sleep(randomSo(4,7)*100)
        moveTo(356,854,356,362)
        sleep(1500)
    end
    while isImage("toiDongYGG.png") do
        clickImage("toiDongYGG.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("okGmailGG.png") do
        sleep(randomSo(4,7)*100)
        if (isImage("TaiUngDung.png") or isImage("openTheApp.png") or isImage("moUngDung.png") or isImage("BTVietGG.png") or isImage("XongMail.png") or isImage("loi502.png") or isImage("loi400.png")) then
            break
        end
    end
    sleep(randomSo(10,15)*100)
    rCho = randomSo(8,14)
    for i =1,rCho do
        sleep(randomSo(60,80)*100)
        if (isImage("TaiUngDung.png") or isImage("okGmailGG.png")) then
            sleep(randomSo(4,7)*100)
            moveTo(344, 1001,348,  528)
            sleep(2500)
            if isImage("KhongQuanTam.png") then
                clickImage("KhongQuanTam.png")
                sleep(randomSo(10,15)*100)
            end
        end
        toast("chờ tý",5)
    end
    ::xoadataWebbrowser::
    sleep(randomSo(4,7)*100)
    sleep(randomSo(10,15)*100)
    while not isImage("Home_Webbrowser.png") do
        sleep(randomSo(4,7)*100)
    end
    clickImage("Home_Webbrowser.png")
    sleep(randomSo(4,7)*100)
    while not isImage("menu_Webbrowser.png") do
        sleep(randomSo(2,4)*100)
        if isImage("Home_Webbrowser.png") then
            clickImage("Home_Webbrowser.png")
            sleep(randomSo(4,7)*100)
        end
    end
    clickImage("menu_Webbrowser.png")
    sleep(randomSo(10,15)*100)
    while not isImage("clearCaches_Webbrowser.png") do
        sleep(randomSo(2,4)*100)
        if isImage("menu_Webbrowser.png") then
            clickImage("menu_Webbrowser.png")
            sleep(randomSo(10,15)*100)
        end
    end
    while isImage("clearCaches_Webbrowser.png") do
        clickImage("clearCaches_Webbrowser.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("clearHistoryDo_Webbrowser.png") do
        sleep(randomSo(5,7)*100)
        if isImage("menu_Webbrowser.png") then
            clickImage("menu_Webbrowser.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("History_Webbrowser.png") then
            clickImage("History_Webbrowser.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("HistoryXanh_Webbrowser.png") then
            clickImage("HistoryXanh_Webbrowser.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("clearHistory_Webbrowser.png") then
            clickImage("clearHistory_Webbrowser.png")
            sleep(randomSo(10,15)*100)
        end
    end
    clickImage("clearHistoryDo_Webbrowser.png")
    sleep(randomSo(20,30)*100)
    while not isImage("clearDen_Webbrowser.png") do
        sleep(randomSo(5,7)*100)
        if isImage("clearHistoryDo_Webbrowser.png") then
            clickImage("clearHistoryDo_Webbrowser.png")
            sleep(randomSo(20,30)*100)
        end
    end
    vuotApp()
    sleep(1500)
    toast("Xong 1 mail")
    sleep(3000)
    toast("Bắt đầu lại")
    RandomApp()
end

function CocCoc()
    if readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt") then
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        if #sl_ok == 10 then
            writeFile("OK.txt","","w")
            alert("Đã xong 10 mail")
            at.stop()
        else
            sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
            if #sl_xit == 5 then
                writeFile("Xit.txt","","w")
                alert("Đã xịt 5 lần liên tục, nghỉ mai reg")
                at.stop()
            end
        end
    else
        writeFile("OK.txt","","w")
        sleep(500)
        writeFile("Xit.txt","","w")
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
    end
    toast("Đã reg: "..#sl_ok..", đã xịt: "..#sl_xit.." liên tục")
    sleep(2000)
    ChangeIPOBC()
    appRun(id_Coccoc)
    app = "Coccoc"
    sleep(randomSo(20,30)*100)
    while not isImage("timKiemCocCoc.png") do
        sleep(randomSo(3,5)*100)
    end
    sleep(randomSo(4,7)*100)
    clickImage("timKiemCocCoc.png")
    sleep(randomSo(10,20)*100)
    inputKey("gmail.com")
    sleep(randomSo(4,7)*100)
    tap(656,1286)
    sleep(randomSo(10,15)*100)
    while not isImage("hoNew.png") do
        sleep(randomSo(4,7)*100)
        if isImage("taoTaiKhoanBrowser.png") then 
            clickImage("taoTaiKhoanBrowser.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("taoTaiKhoanBrowser2.png") then 
            clickImage("taoTaiKhoanBrowser2.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("CaNhanToiBrowser.png") then
            clickImage("CaNhanToiBrowser.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("xongBanPhim_CocCoc.png") then
            clickImage("xongBanPhim_CocCoc.png")
            sleep(randomSo(10,15)*100)
        end
    end
    RegGmail2()
    RegGmailgiaidoan2()
    while not isImage("mailKPxanh.png") do
        sleep(randomSo(4,7)*100)
        if isImage("verrySDTGG.png") then
            writeLineFile("Xit.txt","1","a")
            sleep(randomSo(5,7)*100)
            ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
            get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
            time = json.decode(get)["datetime"]
            get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
            goto xoadataCoccoc
        end
    end
    if isImage("mailKPxanh.png") then
        urlImage = "/private/var/mobile/Library/AutoTouch/Scripts/images/mailKPxanh.png"
        result = findImage(urlImage,1,0.99,nil,false)
        tap(result[1][1]+(randomSo(10,30)*10),(result[1][2]+(randomSo(3,5)*10)))
        sleep(randomSo(10,20)*100)
    end
    mailRecovery = Recovery()
    inputKey(mailRecovery)
    sleep(randomSo(4,7)*100)
    writeLineFile("OK.txt","1","a")
    sleep(1000)
    writeFile("Xit.txt","","w")
    ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
    get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
    time = json.decode(get)["datetime"]
    get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?email="..email.."@gmail.com".."&pass="..pass.."&recovery="..mailRecovery.."&tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
    while not isImage("tiepTheoXanhTrang.png") do
        sleep(100)
    end
    sleep(randomSo(4,7)*100)
    clickImage("tiepTheoXanhTrang.png")
    sleep(randomSo(10,15)*100)
    while not isImage("soDT_BoQua.png") do
        sleep(100)
    end
    while isImage("soDT_BoQua.png") do
        sleep(randomSo(5,15)*100)
        clickImage("boQuaXanhTrang.png")
        sleep(randomSo(10,20)*100)
    end
    while not isImage("tiepTheoTen.png") do
        sleep(100)
        if isImage("tieptheoNew2.png") then
            break
        end
    end
    if isImage("tiepTheoTen.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tiepTheoTen.png")
        sleep(randomSo(10,30)*100)
    elseif isImage("tieptheoNew2.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tieptheoNew2.png")
        sleep(randomSo(10,30)*100)
    end
    while not isImage("ThanhCong.png") do
        sleep(randomSo(4,7)*100)
    end
    while not isImage("toiDongYGG.png") do
        sleep(randomSo(4,7)*100)
        moveTo(356,854,356,362)
        sleep(1500)
    end
    while isImage("toiDongYGG.png") do
        clickImage("toiDongYGG.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("okGmailGG.png") do
        sleep(randomSo(4,7)*100)
        if (isImage("TaiUngDung.png") or isImage("openTheApp.png") or isImage("moUngDung.png") or isImage("BTVietGG.png") or isImage("XongMail.png") or isImage("loi502.png") or isImage("loi400.png")) then
            break
        end
    end
    sleep(randomSo(10,15)*100)
    rCho = randomSo(8,14)
    for i =1,rCho do
        sleep(randomSo(60,80)*100)
        if (isImage("TaiUngDung.png") or isImage("okGmailGG.png")) then
            sleep(randomSo(4,7)*100)
            moveTo(344, 1001,348,  528)
            sleep(2500)
            if isImage("KhongQuanTam.png") then
                clickImage("KhongQuanTam.png")
                sleep(randomSo(10,15)*100)
            end
        end
        toast("chờ tý",5)
    end
    ::xoadataCoccoc::
    sleep(randomSo(4,7)*100)
    sleep(randomSo(10,15)*100)
    while not isImage("closeTabChrome2.PNG") do
        sleep(randomSo(4,7)*100)
        if isImage("tab_CocCoc.png") then
            clickImage("tab_CocCoc.png")
            sleep(randomSo(4,7)*100)
        end
    end
    while isImage("closeTabChrome2.PNG") do
        clickImage("closeTabChrome2.PNG")
        sleep(randomSo(4,7)*100)
    end
    while not isImage("xoaDLWeb2_CocCoc.png") do
        sleep(randomSo(2,4)*100)
        if isImage("XoaLichSu_CocCoc.png") then
            clickImage("XoaLichSu_CocCoc.png")
            sleep(randomSo(1,2)*100)
        elseif isImage("xoaDlWeb_CocCoc.png") then
            clickImage("xoaDlWeb_CocCoc.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("menu_CocCoc.PNG") then
            clickImage("menu_CocCoc.PNG")
            sleep(randomSo(4,7)*100)
        end
    end
    clickImage("xoaDLWeb2_CocCoc.png")
    sleep(randomSo(3,5)*100)
    while not isImage("dangXoa_CocCoc.png") do
        sleep(randomSo(1,2)*100)
        if isImage("xoaDlWeb_CocCoc.png") then
            clickImage("xoaDlWeb_CocCoc.png")
            sleep(randomSo(1,2)*100)
        elseif isImage("xoaDLWeb2_CocCoc.png") then
            clickImage("xoaDLWeb2_CocCoc.png")
            sleep(randomSo(1,2)*100)
        end
    end
    while isImage("dangXoa_CocCoc.png") do
        toast("Chờ Xóa",2)
        sleep(randomSo(20,40)*100)
    end
    sleep(randomSo(10,20)*100)
    vuotApp()
    sleep(1500)
    toast("Xong 1 mail")
    sleep(3000)
    toast("Bắt đầu lại")
    RandomApp()
end

function CryptoTab()
    if readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt") then
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        if #sl_ok == 10 then
            writeFile("OK.txt","","w")
            alert("Đã xong 10 mail")
            at.stop()
        else
            sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
            if #sl_xit == 5 then
                writeFile("Xit.txt","","w")
                alert("Đã xịt 5 lần liên tục, nghỉ mai reg")
                at.stop()
            end
        end
    else
        writeFile("OK.txt","","w")
        sleep(500)
        writeFile("Xit.txt","","w")
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
    end
    toast("Đã reg: "..#sl_ok..", đã xịt: "..#sl_xit.." liên tục")
    sleep(2000)
    ChangeIPOBC()
    appRun(id_CrytoTab)
    app = "CrytoTab"
    sleep(randomSo(20,30)*100)
    while not isImage("timKiem_CryptoTab.png") do
        sleep(randomSo(3,5)*100)
    end
    sleep(randomSo(4,7)*100)
    clickImage("timKiem_CryptoTab.png")
    sleep(randomSo(10,20)*100)
    inputKey("gmail.com")
    sleep(randomSo(4,7)*100)
    tap(656,1286)
    sleep(randomSo(10,15)*100)
    while not isImage("taiGmail.png") do
        sleep(randomSo(4,7)*100)
        if isImage("taiGmail2.png") or isImage("taoTaiKhoanBrowser.png") or isImage("taoTaiKhoanBrowser2.png") then
            break
        end
        if isImage("xongBanPhimLam.png") then
            clickImage("xongBanPhimLam.png")
            sleep(randomSo(15,20)*100)
        end
    end
    sleep(randomSo(10,15)*100)
    if isImage("taiGmail.png") then
        clickImage("taiGmail.png")
        sleep(randomSo(10,15)*100)
    elseif isImage("taiGmail2.png") then
        clickImage("taiGmail2.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("hoNew.png") do
        sleep(randomSo(4,7)*100)
        if isImage("taiGmail.png") then
            clickImage("taiGmail.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("taiGmail2.png") then
            clickImage("taiGmail2.png")
            sleep(randomSo(10,15)*100)
        end
        if isImage("taoTaiKhoanBrowser.png") then 
            clickImage("taoTaiKhoanBrowser.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("taoTaiKhoanBrowser2.png") then 
            clickImage("taoTaiKhoanBrowser2.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("CaNhanToiBrowser.png") then
            clickImage("CaNhanToiBrowser.png")
            sleep(randomSo(10,15)*100)
        end
    end
    RegGmail2()
    RegGmailgiaidoan2()
    while not isImage("mailKPxanh.png") do
        sleep(randomSo(4,7)*100)
        if isImage("verrySDTGG.png") then
            writeLineFile("Xit.txt","1","a")
            sleep(randomSo(5,7)*100)
            ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
            get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
            time = json.decode(get)["datetime"]
            get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
            goto xoadataCryptotab
        end
    end
    if isImage("mailKPxanh.png") then
        urlImage = "/private/var/mobile/Library/AutoTouch/Scripts/images/mailKPxanh.png"
        result = findImage(urlImage,1,0.99,nil,false)
        tap(result[1][1]+(randomSo(10,30)*10),(result[1][2]+(randomSo(3,5)*10)))
        sleep(randomSo(10,20)*100)
    end
    mailRecovery = Recovery()
    inputKey(mailRecovery)
    sleep(randomSo(4,7)*100)
    writeLineFile("OK.txt","1","a")
    sleep(1000)
    writeFile("Xit.txt","","w")
    ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
    get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
    time = json.decode(get)["datetime"]
    get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?email="..email.."@gmail.com".."&pass="..pass.."&recovery="..mailRecovery.."&tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
    while not isImage("tiepTheoXanhTrang.png") do
        sleep(100)
    end
    sleep(randomSo(4,7)*100)
    clickImage("tiepTheoXanhTrang.png")
    sleep(randomSo(10,15)*100)
    while not isImage("soDT_BoQua.png") do
        sleep(100)
    end
    while isImage("soDT_BoQua.png") do
        sleep(randomSo(5,15)*100)
        clickImage("boQuaXanhTrang.png")
        sleep(randomSo(10,20)*100)
    end
    while not isImage("tiepTheoTen.png") do
        sleep(100)
        if isImage("tieptheoNew2.png") then
            break
        end
    end
    if isImage("tiepTheoTen.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tiepTheoTen.png")
        sleep(randomSo(10,30)*100)
    elseif isImage("tieptheoNew2.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tieptheoNew2.png")
        sleep(randomSo(10,30)*100)
    end
    while not isImage("ThanhCong.png") do
        sleep(randomSo(4,7)*100)
    end
    while not isImage("toiDongYGG.png") do
        sleep(randomSo(4,7)*100)
        moveTo(356,854,356,362)
        sleep(1500)
    end
    while isImage("toiDongYGG.png") do
        clickImage("toiDongYGG.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("okGmailGG.png") do
        sleep(randomSo(4,7)*100)
        if (isImage("TaiUngDung.png") or isImage("openTheApp.png") or isImage("moUngDung.png") or isImage("BTVietGG.png") or isImage("XongMail.png") or isImage("loi502.png") or isImage("loi400.png")) then
            break
        end
    end
    sleep(randomSo(10,15)*100)
    rCho = randomSo(8,14)
    for i =1,rCho do
        sleep(randomSo(60,80)*100)
        if (isImage("TaiUngDung.png") or isImage("okGmailGG.png")) then
            sleep(randomSo(4,7)*100)
            moveTo(344, 1001,348,  528)
            sleep(2500)
            if isImage("KhongQuanTam.png") then
                clickImage("KhongQuanTam.png")
                sleep(randomSo(10,15)*100)
            end
        end
        toast("chờ tý",5)
    end
    ::xoadataCryptotab::
    sleep(randomSo(10,15)*100)
    sleep(randomSo(10,15)*100)
    while not isImage("dongTatCa_CryptoTab.png") do
        sleep(randomSo(4,7)*100)
        if isImage("tab_CryptoTab.png") then
            clickImage("tab_CryptoTab.png")
            sleep(randomSo(4,7)*100)
        end
    end
    while isImage("dongTatCa_CryptoTab.png") do
        clickImage("dongTatCa_CryptoTab.png")
        sleep(randomSo(4,7)*100)
    end
    while not isImage("KhongCoTab_CryptoTab.png") do
        sleep(randomSo(4,7)*100)
        if isImage("dongTatCa_CryptoTab.png") then
            clickImage("dongTatCa_CryptoTab.png")
            sleep(randomSo(4,7)*100)
        end
    end
    if isImage("KhongCoTab_CryptoTab.png") then
        sleep(randomSo(4,7)*100)
        tap(374,1290)
        sleep(randomSo(8,10)*100)
    end
    while not isImage("xoaDLTrinhDuyet2_Cryptotab.png") do
        sleep(randomSo(2,4)*100)
        if isImage("Menu_Cyptotab.png") then
            clickImage("Menu_Cyptotab.png")
            sleep(randomSo(1,2)*100)
        elseif isImage("lichSu_CryptoTab.png") then
            clickImage("lichSu_CryptoTab.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("xoaDuLieu_CryptoTab.png") then
            clickImage("xoaDuLieu_CryptoTab.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("xoaDLWeb_CrytoTab.png") then
            clickImage("xoaDLWeb_CrytoTab.png")
            sleep(randomSo(4,7)*100)
        end
        if isImage("KhongCoTab_CryptoTab.png") then
            sleep(randomSo(4,7)*100)
            tap(374,1290)
            sleep(randomSo(8,10)*100)
        end
    end
    clickImage("xoaDLTrinhDuyet2_Cryptotab.png")
    sleep(randomSo(3,5)*100)
    while not isImage("dangxoa_CryptoTab.png") do
        sleep(randomSo(1,2)*100)
        if isImage("xoaDuLieu_CryptoTab.png") then
            clickImage("xoaDuLieu_CryptoTab.png")
            sleep(randomSo(1,2)*100)
        elseif isImage("xoaDLTrinhDuyet2_Cryptotab.png") then
            clickImage("xoaDLTrinhDuyet2_Cryptotab.png")
            sleep(randomSo(1,2)*100)
        end
    end
    while isImage("dangxoa_CryptoTab.png") do
        toast("Chờ Xóa",2)
        sleep(randomSo(20,40)*100)
    end
    sleep(randomSo(10,20)*100)
    vuotApp()
    sleep(1500)
    toast("Xong 1 mail")
    sleep(3000)
    toast("Bắt đầu lại")
    RandomApp()
end

function Dolphin()
    if readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt") then
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        if #sl_ok == 10 then
            writeFile("OK.txt","","w")
            alert("Đã xong 10 mail")
            at.stop()
        else
            sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
            if #sl_xit == 5 then
                writeFile("Xit.txt","","w")
                alert("Đã xịt 5 lần liên tục, nghỉ mai reg")
                at.stop()
            end
        end
    else
        writeFile("OK.txt","","w")
        sleep(500)
        writeFile("Xit.txt","","w")
        sl_ok = readFile("/private/var/mobile/Library/AutoTouch/Scripts/OK.txt")
        sl_xit = readFile("/private/var/mobile/Library/AutoTouch/Scripts/Xit.txt")
    end
    toast("Đã reg: "..#sl_ok..", đã xịt: "..#sl_xit.." liên tục")
    sleep(2000)
    ChangeIPOBC()
    appRun(id_Dolphin)
    app = "Dolphin"
    sleep(randomSo(20,30)*100)
    while not isImage("Search_Dolphin.png") do
        sleep(randomSo(3,5)*100)
    end
    sleep(randomSo(4,7)*100)
    clickImage("Search_Dolphin.png")
    sleep(randomSo(10,20)*100)
    rVao = randomSo(1,3)
    if rVao == 1 then
        inputText("gmail.com")
        sleep(randomSo(4,7)*100)
    elseif rVao == 2 then
        inputText("google.com/gmail/about")
        sleep(randomSo(4,7)*100)
    else
        inputText("mail.google.com")
        sleep(randomSo(4,7)*100)
    end
    sleep(randomSo(4,7)*100)
    tap(656,1286)
    sleep(randomSo(10,15)*100)
    while not isImage("taiGmail.png") do
        sleep(randomSo(4,7)*100)
        if isImage("taiGmail2.png") or isImage("taoTaiKhoanBrowser.png") or isImage("taoTaiKhoanBrowser2.png") then
            break
        end
        if isImage("xongBanPhimLam.png") then
            clickImage("xongBanPhimLam.png")
            sleep(randomSo(15,20)*100)
        end
    end
    sleep(randomSo(10,15)*100)
    if isImage("taiGmail.png") then
        clickImage("taiGmail.png")
        sleep(randomSo(10,15)*100)
    elseif isImage("taiGmail2.png") then
        clickImage("taiGmail2.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("hoNew.png") do
        sleep(randomSo(4,7)*100)
        if isImage("taiGmail.png") then
            clickImage("taiGmail.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("taiGmail2.png") then
            clickImage("taiGmail2.png")
            sleep(randomSo(10,15)*100)
        end
        if isImage("taoTaiKhoanBrowser.png") then 
            clickImage("taoTaiKhoanBrowser.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("taoTaiKhoanBrowser2.png") then 
            clickImage("taoTaiKhoanBrowser2.png")
            sleep(randomSo(10,15)*100)
        elseif isImage("CaNhanToiBrowser.png") then
            clickImage("CaNhanToiBrowser.png")
            sleep(randomSo(10,15)*100)
        end
    end
    RegGmail2()
    RegGmailgiaidoan2()
    while not isImage("mailKPxanh.png") do
        sleep(randomSo(4,7)*100)
        if isImage("verrySDTGG.png") then
            writeLineFile("Xit.txt","1","a")
            ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
            get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
            time = json.decode(get)["datetime"]
            get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
            sleep(1000)
            goto xoadataDolphin
        end
    end
    if isImage("mailKPxanh.png") then
        urlImage = "/private/var/mobile/Library/AutoTouch/Scripts/images/mailKPxanh.png"
        result = findImage(urlImage,1,0.99,nil,false)
        tap(result[1][1]+(randomSo(10,30)*10),(result[1][2]+(randomSo(3,5)*10)))
        sleep(randomSo(10,20)*100)
    end
    mailRecovery = Recovery()
    inputKey(mailRecovery)
    sleep(randomSo(4,7)*100)
    writeLineFile("OK.txt","1","a")
    sleep(1000)
    writeFile("Xit.txt","","w")
    ip = HTTPSGET("http://v4v6.ipv6-test.com/api/myip.php")
    get = HTTPSGET("http://worldtimeapi.org/api/timezone/Asia/Bangkok")
    time = json.decode(get)["datetime"]
    get = HTTPSGET("https://script.google.com/macros/s/AKfycbzbJb83oUZpYGBRYhO-MENCcelVtCkLfKG4XFv6E2s3M80J789jZQ5BemoiiK4fBiw/exec?email="..email.."@gmail.com".."&pass="..pass.."&recovery="..mailRecovery.."&tenMay="..May.."&App="..app.."&IP="..ip.."&Time="..time)
    while not isImage("tiepTheoXanhTrang.png") do
        sleep(100)
    end
    sleep(randomSo(4,7)*100)
    clickImage("tiepTheoXanhTrang.png")
    sleep(randomSo(10,15)*100)
    while not isImage("soDT_BoQua.png") do
        sleep(100)
    end
    while isImage("soDT_BoQua.png") do
        sleep(randomSo(5,15)*100)
        clickImage("boQuaXanhTrang.png")
        sleep(randomSo(10,20)*100)
    end
    while not isImage("tiepTheoTen.png") do
        sleep(100)
        if isImage("tieptheoNew2.png") then
            break
        end
    end
    if isImage("tiepTheoTen.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tiepTheoTen.png")
        sleep(randomSo(10,30)*100)
    elseif isImage("tieptheoNew2.png") then
        sleep(randomSo(5,15)*100)
        clickImage("tieptheoNew2.png")
        sleep(randomSo(10,30)*100)
    end
    while not isImage("ThanhCong.png") do
        sleep(randomSo(4,7)*100)
    end
    while not isImage("toiDongYGG.png") do
        sleep(randomSo(4,7)*100)
        moveTo(356,854,356,362)
        sleep(1500)
    end
    while isImage("toiDongYGG.png") do
        clickImage("toiDongYGG.png")
        sleep(randomSo(10,15)*100)
    end
    while not isImage("okGmailGG.png") do
        sleep(randomSo(4,7)*100)
        if (isImage("TaiUngDung.png") or isImage("openTheApp.png") or isImage("moUngDung.png") or isImage("BTVietGG.png") or isImage("XongMail.png") or isImage("loi502.png") or isImage("loi400.png")) then
            break
        end
    end
    sleep(randomSo(10,15)*100)
    rCho = randomSo(8,14)
    for i =1,rCho do
        sleep(randomSo(60,80)*100)
        if (isImage("TaiUngDung.png") or isImage("okGmailGG.png")) then
            sleep(randomSo(4,7)*100)
            moveTo(344, 1001,348,  528)
            sleep(2500)
            if isImage("KhongQuanTam.png") then
                clickImage("KhongQuanTam.png")
                sleep(randomSo(10,15)*100)
            end
        end
        toast("chờ tý",5)
    end
    sleep(randomSo(10,15)*100)
    sleep(randomSo(10,15)*100)
    ::xoadataDolphin::
    while not isImage("closeTab_Dolphin.png") do
        sleep(randomSo(4,7)*100)
        if isImage("tab_Dolphin.png") then
            clickImage("tab_Dolphin.png")
            sleep(randomSo(4,7)*100)
        end
    end
    while isImage("closeTab_Dolphin.png") do
        clickImage("closeTab_Dolphin.png")
        sleep(randomSo(4,7)*100)
    end
    while not isImage("clearData_Dolphin.png") do
        sleep(randomSo(2,4)*100)
        if isImage("selectAll_Dolphin.png") then
            clickImage("selectAll_Dolphin.png")
            sleep(randomSo(1,2)*100)
        elseif isImage("cleatData_Dolphin.png") then
            clickImage("cleatData_Dolphin.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("caiDat_Dolphin.png") then
            clickImage("caiDat_Dolphin.png")
            sleep(randomSo(4,7)*100)
        elseif isImage("btCaHeo_Dolphin.png") then
            clickImage("btCaHeo_Dolphin.png")
            sleep(randomSo(4,7)*100)
        end
    end
    clickImage("clearData_Dolphin.png")
    sleep(randomSo(3,5)*100)
    while not isImage("clearSuccess_Dophin.png") do
        sleep(randomSo(1,2)*100)
        if isImage("clearData_Dolphin.png") then
            clickImage("clearData_Dolphin.png")
            sleep(randomSo(1,2)*100)
        elseif isImage("cancel_Dolphin.png") then
            clickImage("cancel_Dolphin.png")
            sleep(randomSo(1,2)*100)
        end
    end
    sleep(randomSo(10,20)*100)
    vuotApp()
    sleep(1500)
    toast("Xong 1 mail")
    sleep(3000)
    toast("Bắt đầu lại")
    RandomApp()
end

RandomApp()