# idsAutoInstaller
this repository provides some bash scripts and config files to allow quick installation of IBM Informix Database Server

## Release change notes
[go to current release notes](/RELEASE_NOTES.md/)

## A short introduction of usage

Autor Yingding Wang 
Erstellt am 27.Juli.2010

das AutoInstaller2 
ist mit vorgelegten Konfigurationstemplat für IDS Develop Edition zum Test zweg.

das AutoInstaller3
ist angefertigt mit vorgelegten Konfiguraions- und Installationstemplat für LMU
Spezifisches IBM IDS 11.50 ein Instanz Datenbank Server.

das AutoInstaller4
ist angefertigt mit vorgelegten Konfiguraions- und Installationstemplat für LMU
Spezifisches IBM IDS 11.70 ein Instanz Datenbank Server.


Warnung: Dieser Installer ist nur für Linux System (b.z.w SLES 10/11) konzepiert.
Warnung: Editieren Sie auf keinem Fall diesen Installer im Windows
Warnung: Falls die berechtigung auf autoinstaller verloren gegangen seien. Die funktionstüchtige Autoinstaller sind noch auf dem OAT Server unter /SoftwareRepository zu erreichen. führen Sie scp -pr /SoftwareRepository/AutoInstaller<x> {Zielverzeichnis}
um die Sourcecode ans Zielverzeichnis mit funktionierenden Berechtigung für AutoInstaller zu kopieren.

Quick Start guide:

Kopieren Sie die idsAutoInstaller<X> in /tmp verzeichnis auf dem Linux Server

Führen Sie "lmu_ids_installer" als Root user/oder User mit Root berechtigung aus.


Professional Start guide:

Kopieren Sie die idsAutoInstaller<x> in /tmp Verzeichnis auf dem Linux Server

Führen Sie die
(Hinweis:
Sie können jeden einzelen Skript vor dem Ausführen nach Ihren Bedarf anpassen.
Die genaue Funktion und Details zu jeweiligen einzelnen Skripten finden Sie in Readme.txt im AutoInstallerverzeichnis.)
 
01_preconfigIDSDB.sh
02_install.sh
