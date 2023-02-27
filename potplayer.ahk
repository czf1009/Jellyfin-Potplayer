; url := "href=""?page=popthai&amp;search=%E0%B9%81%E0%B8%A1%E0%B8%A7%E0%B8%AA%E0%B8%B5%E0%B8%82%E0%B8%B2%E0%B8%A7%E0%B9%83%E0%B8%99%E0%B8%9E%E0%B8%B2%E0%B8%A2%E0%B8%B8%E0%B8%AB%E0%B8%B4%E0%B8%A1%E0%B8%B0%3F"""
;url := "H:/Videos/Movies/Violent%20Night%20(2022)%20[1080p]%20[WEBRip]%20[5.1]%20[YTS.MX]/Violent.Night.2022.1080p.WEBRip.x264.AAC5.1-[YTS.MX].mp4"

;MsgBox, % EncodeDecodeURI(url, false)

EncodeDecodeURI(str, encode := true, component := true) {
   static Doc, JS
   if !Doc {
      Doc := ComObjCreate("htmlfile")
      Doc.write("<meta http-equiv=""X-UA-Compatible"" content=""IE=9"">")
      JS := Doc.parentWindow
      ( Doc.documentMode < 9 && JS.execScript() )
   }
   Return JS[ (encode ? "en" : "de") . "codeURI" . (component ? "Component" : "") ](str)
}

decoded := EncodeDecodeURI(url, false)

RUN D:\Program Files\DAUM\PotPlayer\PotPlayerMini64.exe "%decoded%"