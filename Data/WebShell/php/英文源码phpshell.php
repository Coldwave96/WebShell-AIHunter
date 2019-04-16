<?php
/*
**************************************************************
*                        PHP Shell                           *
**************************************************************
$Id: phpshell.php,v 1.11 2001/02/11 16:24:38 gimpster Exp $
An interactive PHP-page that will execute any command entered.
See the files README and INSTALL or http://www.gimpster.com  for
further information.
Copyright (C) 2000 Martin Geisler <gimpster@gimpster.com>
This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.
This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.
You can get a copy of the GNU General Public License from this address: http://www.gnu.org/copyleft/gpl.html#SEC1
You can also write to the Free Software Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/ ?>
<html>
<head>
<title>PHP Shell</title>
</head>
<body>
<h1>PHP Shell</h1>
<?php
/* First we check if there has been asked for a working directory. */
if (isset($work_dir)) {
/* A workdir has been asked for - we chdir to that dir. */
chdir($work_dir);
$work_dir = exec("pwd");
} else {
/* No work_dir - we chdir to $DOCUMENT_ROOT */
chdir($DOCUMENT_ROOT);
$work_dir = $DOCUMENT_ROOT;
}
?>
<form name="myform" action="<?php echo $PHP_SELF ?>" method="post">
<p>Current working directory: <b>
<?php
$work_dir_splitted = explode("/", substr($work_dir, 1));
echo "<a href=\"$PHP_SELF?work_dir=" . urlencode($url) . "/&command=" . urlencode($command) . "\">Root</a>/";
if ($work_dir_splitted[0] == "") {
$work_dir = "/";
/* Root directory. */
} else {
for ($i = 0; $i < count($work_dir_splitted); $i++) {
/*  echo "i = $i";*/
$url .= "/".$work_dir_splitted[$i];
echo "<a href=\"$PHP_SELF?work_dir=" . urlencode($url) . "&command=" . urlencode($command) . "\">$work_dir_splitted[$i]</a>/";
}
}
?></b></p>
<p>Choose new working directory:</p>
<select name="work_dir" onChange="this.form.submit()">
<?php 
/* Now we make a list of the directories. */
$dir_handle = opendir($work_dir);
/* Run through all the files and directories to find the dirs. */
while ($dir = readdir($dir_handle)) {
if (is_dir($dir)) {
if ($dir == ".") {
echo "<option value=\"$work_dir\" selected>Current Directory</option>\n";
} elseif ($dir == "..") {
/* We have found the parent dir. We must be carefull if the parent directory is the root directory (/). */
if (strlen($work_dir) == 1) {
/* work_dir is only 1 charecter - it can only be / */
} elseif (strrpos($work_dir, "/") == 0) {
/* The last / in work_dir were the first charecter. This means that we have a top-level directory eg. /bin or /home etc...*/
echo "<option value=\"/\">Parent Directory</option>\n";
} else {
/* We do a little bit of string-manipulation to find the parent directory... Trust me - it works :-) */
echo "<option value=\"". strrev(substr(strstr(strrev($work_dir), "/"), 1)) ."\">Parent Directory</option>\n";
}
} else {
if ($work_dir == "/") {
echo "<option value=\"$work_dir$dir\">$dir</option>\n";
} else {
echo "<option value=\"$work_dir/$dir\">$dir</option>\n";
}
}
}
}
closedir($dir_handle);
?>
</select>
<p>Command:</p>
<input type="text" name="command" size="60" <?php if ($command) { echo "value=\"$command\"";} ?> >
<input name="submit_btn" type="submit" value="Execute Command"></p>
<p>Enable <code>stderr</code>-trapping? <input type="checkbox" name="stderr"></p>
<p>Output:</p>
<textarea cols="80" rows="20" readonly>
<?php
if ($command) {
if ($stderr) {
system($command . " 1> /tmp/output.txt 2>&1; cat /tmp/output.txt; rm /tmp/output.txt");
} else {
system($command);
}
}
?>
</textarea>
</form>
<i>Copyright &copy; 2000, <a href="mailto:gimpster@gimpster.com">Martin Geisler</a>. Get the latest version at <a href="http://www.gimpster.com">www.gimpster.com</a>.</i>
</body>
</html>