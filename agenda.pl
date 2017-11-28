#!/usr/bin/perl
print "Content-Type: text/html\n\n";
if($ENV{'QUERY_STRING'} eq "") {
  print "<h1>Elija el prefijo del numero deseado</h1>";
  print "<form name=\"search\" method=\"get\">";
  print "<input type=\"text\" name=\"prefijo\">";
  print "<input type=\"submit\" value\"Buscar\" />";
}else {
  open F, "/tmp/agenda";
  while(<F>) {
    chomp;
     @prefijo=split(":");
     $ar{$prefijo[0]}=$prefijo[1];
  }
  @arGet=split("=",$ENV{'QUERY_STRING'});
  print "Los numeros de la Agenda son; $ar{$arGet[1]}<br>";
}
