#!/usr/bin/perl
print "Content-Type: text/html\n\n";
if($ENV{'QUERY_STRING'} eq "") {
  print "<h1>Elija el prefijo del numero deseado</h1>"
    <form name=\"seach\" method=\"get\">";
open F, "/tmp/agenda";
  while(<F>) {
    chomp;
     @prefijo=split(":");
     $ar{$prefijo[1]}=$prefijo=[0];
  }
 print "<input type="text" id"prefijo">";
 print "<input type=\"submit\" value\"Buscar\" />";
 }else
  @arGet=split("=".$ENV{'QUERY_STRING'});
    print "Los numeros de la Agenda son; $arGet[1]<br>";
}
