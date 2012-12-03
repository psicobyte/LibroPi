#!/usr/bin/perl

$Archivo='10000pi.txt';

open (ARCHIVO, "<$Archivo") || print "No está";

while (<ARCHIVO>) {
        chomp;
        $Texto.=$_;
}
close ARCHIVO;

$Texto=~ s/999999/los únicos seis dígitos seguidos, que resultan ser nada menos que seis nueves x/g;

# No hay ninguno de cinco, en realidad!
$Texto=~ s/00000/cinco ceros x/g;
$Texto=~ s/11111/cinco unos x/g;
$Texto=~ s/22222/cinco doses x/g;
$Texto=~ s/33333/cinco treses x/g;
$Texto=~ s/44444/cinco cuatros x/g;
$Texto=~ s/55555/cinco cincos x/g;
$Texto=~ s/66666/cinco seises x/g;
$Texto=~ s/77777/cinco sietes x/g;
$Texto=~ s/88888/cinco ochos x/g;
$Texto=~ s/99999/cinco nueves x/g;

# Reemplazamos por "cuatrro", paraluego buscar y modoficar a mano
$Texto=~ s/0000/cuatrro ceros x/g;
$Texto=~ s/1111/cuatrro unos x/g;
$Texto=~ s/2222/cuatrro doses x/g;
$Texto=~ s/3333/cuatrro treses x/g;
$Texto=~ s/4444/cuatrro cuatros x/g;
$Texto=~ s/5555/cuatrro cincos x/g;
$Texto=~ s/6666/cuatrro seises x/g;
$Texto=~ s/7777/cuatrro sietes x/g;
$Texto=~ s/8888/cuatrro ochos x/g;
$Texto=~ s/9999/cuatrro nueves x/g;

$Texto=~ s/000/tres ceros x/g;
$Texto=~ s/111/tres unos x/g;
$Texto=~ s/222/tres doses x/g;
$Texto=~ s/333/tres treses x/g;
$Texto=~ s/444/tres cuatros x/g;
$Texto=~ s/555/tres cincos x/g;
$Texto=~ s/666/tres seises x/g;
$Texto=~ s/777/tres sietes x/g;
$Texto=~ s/888/tres ochos x/g;
$Texto=~ s/999/tres nueves x/g;

$Texto=~ s/00/dos ceros x/g;
$Texto=~ s/11/dos unos x/g;
$Texto=~ s/22/dos doses x/g;
$Texto=~ s/33/dos treses x/g;
$Texto=~ s/44/dos cuatros x/g;
$Texto=~ s/55/dos cincos x/g;
$Texto=~ s/66/dos seises x/g;
$Texto=~ s/77/dos sietes x/g;
$Texto=~ s/88/dos ochos x/g;
$Texto=~ s/99/dos nueves x/g;

$Texto=~ s/0/un cero w/g;
$Texto=~ s/1/un uno w/g;
$Texto=~ s/2/un dos w/g;
$Texto=~ s/3/un tres w/g;
$Texto=~ s/4/un cuatro w/g;
$Texto=~ s/5/un cinco w/g;
$Texto=~ s/6/un seis w/g;
$Texto=~ s/7/un siete w/g;
$Texto=~ s/8/un ocho w/g;
$Texto=~ s/9/un nueve w/g;

#$Texto=~ s/ x/, /g;


@Lista= split / x/, $Texto;

@UnionesPlural= (" seguidos de "," y ",", después "," y, tras ellos, ",", tras estos "," tras los cuales hay "," y, a continuación , ",", ");

foreach $num (@Lista){

        $Aleat= int(rand 8);

        $Temporal.= $num . $UnionesPlural[$Aleat];

}

@Lista2= split / w/, $Temporal;
@UnionesSingular= (" seguido de "," y ",", después "," y, tras él, ",", tras este "," tras el cual hay "," y, a continuación , ",", ");

foreach $num (@Lista2){

        $Aleat= int(rand 8);

        $Definitivo.= $num . $UnionesSingular[$Aleat];

}


# Imprimimos el resultado
 print $Definitivo;
