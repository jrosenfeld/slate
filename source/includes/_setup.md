## Set-up
### Abhängigkeiten
Wie in der README, des Slate-Github-Repositores, beschrieben werden im Allgemeinen das folgende in der Entwicklungsumgebung vorrausgesetzt :

* Linux or OS X — Windows may work, but is unsupported.
* Ruby, version 2.2.5 or newer
* Bundler — If Ruby is already installed, but the bundle command doesn't work, just run gem install bundler in a terminal.

Bezüglich der Kompatibiltät könnte man vermuten, dass man mittels Cygwin Slate auch unter Windows nutzen könnte. Dies müsste allerdings noch getestet werden.
Zusätzlich muss darauf geachtet werden, dass andere Abhängigkeiten zu Ruby installiert sind wie z.B. ruby-dev.

### Projekt aufsetzen
Das Aufsetzten eines neuen Slate-Projekts ist relativ simple. Man benötigt lediglich den Inhalt des Git-Repositories und die installierten Abhängigkeiten. In dem Git-Repository befindet sich ein `source`-Ordner, der nach belieben geändert und erweitert werden kann. Der Inhalt dieses Ordners wird letztendlich nach HTML gerendert und veröffentlicht.

Es wird empfohlen, dass Git-Repository zu forken, damit man anschließend mittels des mitgelieferten deploy-Skriptes seine Dokumentation auf seinen eigenen Github-Pages veröffentlichen kann. Es ist jedoch auch möglich, mittels einem bundle-Befehl, die Dokumentation händisch zu rendern und an einem beliebigen Ort zu hosten. Dazu ist es nicht nötig das Repository zu forken. Ein deployment über jenkins von gitlab zu den github-pages wäre beispielsweise auch denkbar.
### Testen, Rendern, Veröffentlichen

#### Lokaler Testserver
Um ein Slate-Projekt lokal zu testen, kann man den mitgelieferten Testserver nutzen. Dieser wird mittels bundle-Befehl gestartet.


```shell
bundle exec middleman server
```

#### Rendern
Will man die Markdown-Dateien rendern, und als HTML selber veröffentlichen, gibt es einen weiteren bundle-Befehl.


```shell
bundle exec middleman build --clean
```

#### GhPages  
Das deploy-Skript rendert die Markdown ebenfalls und pusht die gerenderten HTML-Seiten in den ghpages-Branch des Repositories, mit dem man arbeitet.

```shell
./deploy.sh
```

### Konfiguration
Konfiguriert wird Slate über einen YAML-Bereich am Anfang der index.html.md, bei der es sich um die Markdown-Datei handelt, aus der die index.html gerendert wird.
Dabei ist es möglich einen Titel anzugeben, welcher für die header-Informationen der Seite genutzt wird. Des Weiteren können unterstütze Programmiersprachen und footer-Inhalte angegeben werden und eingestellt werden, welche Markdown-Dateien eingebunden werden sollen und ob es möglich sein soll die Dokumentation zu durchsuchen.

```markdown
---
title: API Reference

language_tabs:
  - shell
  - markdown

toc_footers:
  - <a href='http://nanocosmos.de'>nanocosmos GmbH</a>

includes:
  - setup
  - format

search: true
---
```
