<% 
'Code by safe3
On Error Resume Next

if request.querystring<>"" then call stophacker(request.querystring,"<.*=(&#\d+?;?)+?>|<.*data=data:text\/html.*>|\b(alert\(|confirm\(|expression\(|prompt\(|benchmark\s*?\(\d+?|sleep\s*?\([\d\.]+?\)|load_file\s*?\()|<[a-z]+?\b[^>]*?\bon([a-z]{4,})\s*?=|^\+\/v(8|9)|\b(and|or)\b.+?(=|>|<|\s+?[\w]+?\s+?\bin\b\s*?\(|\blike\b\s+?)|\/\*.+?\*\/|<\s*script\b|\bEXEC\b|UNION.+?SELECT|UPDATE.+?SET|INSERT\s+INTO.+?VALUES|(SELECT|DELETE).+?FROM|(CREATE|ALTER|DROP|TRUNCATE)\s+(TABLE|DATABASE)")
if Request.ServerVariables("HTTP_REFERER")<>"" then call test(Request.ServerVariables("HTTP_REFERER"),"'|\b(and|or)\b.+?(>|<|=|\bin\b|\blike\b)|/\*.+?\*/|<\s*script\b|\bEXEC\b|UNION.+?SELECT|UPDATE.+?SET|INSERT\s+INTO.+?VALUES|(SELECT|DELETE).+?FROM|(CREATE|ALTER|DROP|TRUNCATE)\s+(TABLE|DATABASE)")
if request.Cookies<>"" then call stophacker(request.Cookies,"\b(and|or)\b.{1,6}?(=|>|<|\bin\b|\blike\b)|/\*.+?\*/|<\s*script\b|\bEXEC\b|UNION.+?SELECT|UPDATE.+?SET|INSERT\s+INTO.+?VALUES|(SELECT|DELETE).+?FROM|(CREATE|ALTER|DROP|TRUNCATE)\s+(TABLE|DATABASE)") 
call stophacker(request.Form,"<[^>]+?style=[\w]+?:expression\(|\bonmouse(over|move)=\b|\b(alert|confirm|prompt)\b|^\+/v(8|9)|<[^>]*?=[^>]*?&#[^>]*?>|\b(and|or)\b.{1,6}?(=|>|<|\bin\b|\blike\b)|/\*.+?\*/|<\s*script\b|<\s*img\b|\bEXEC\b|UNION.+?SELECT|UPDATE.+?SET|INSERT\s+INTO.+?VALUES|(SELECT|DELETE).+?FROM|(CREATE|ALTER|DROP|TRUNCATE)\s+(TABLE|DATABASE)")

function test(values,re)
  dim regex
  set regex=new regexp
  regex.ignorecase = true
  regex.global = true
  regex.pattern = re
  if regex.test(values) then
                                IP=Request.ServerVariables("HTTP_X_FORWARDED_FOR")
                                If IP = "" Then 
                                  IP=Request.ServerVariables("REMOTE_ADDR")
                                end if
                                'slog("<br><br>操作IP: "&ip&"<br>操作时间: " & now() & "<br>操作页面："&Request.ServerVariables("URL")&"<br>提交方式: "&Request.ServerVariables("Request_Method")&"<br>提交参数: "&l_get&"<br>提交数据: "&l_get2)
    Response.Write("<div style='position:fixed;top:0px;width:100%;height:100%;background-color:white;color:green;font-weight:bold;border-bottom:5px solid #ffffff;'><br>您的提交带有不合法参数,谢谢合作!<br><br>了解更多请点击:<a href='http://www.tenghe.net'>腾和网络</a></div>")
    Response.end
   end if
   set regex = nothing
end function 


function stophacker(values,re)
 dim l_get, l_get2,n_get,regex,IP
 for each n_get in values
  for each l_get in values
   l_get2 = values(l_get)
   set regex = new regexp
   regex.ignorecase = true
   regex.global = true
   regex.pattern = re
   if regex.test(l_get2) then
                                IP=Request.ServerVariables("HTTP_X_FORWARDED_FOR")
                                If IP = "" Then 
                                  IP=Request.ServerVariables("REMOTE_ADDR")
                                end if
                                'slog("<br><br>操作IP: "&ip&"<br>操作时间: " & now() & "<br>操作页面："&Request.ServerVariables("URL")&"<br>提交方式: "&Request.ServerVariables("Request_Method")&"<br>提交参数: "&l_get&"<br>提交数据: "&l_get2)
    Response.Write("<div style='position:fixed;top:0px;width:100%;height:100%;background-color:white;color:green;font-weight:bold;border-bottom:5px solid #ffffff;'><br>您的提交带有不合法参数,谢谢合作!<br><br>了解更多请点击:<a href='http://www.tenghe.net'>腾和网络</a></div>")
    Response.end
   end if
   set regex = nothing
  next
 next
end function 

sub slog(logs)
        dim toppath,fs,Ts
        toppath = Server.Mappath("/log.htm")
                                Set fs = CreateObject("scripting.filesystemobject")
                                If Not Fs.FILEEXISTS(toppath) Then 
                                    Set Ts = fs.createtextfile(toppath, True)
                                    Ts.close
                                end if
                                    Set Ts= Fs.OpenTextFile(toppath,8)
                                    Ts.writeline (logs)
                                    Ts.Close
                                    Set Ts=nothing
                                    Set fs=nothing
end sub

%>