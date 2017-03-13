## Format
### Textformatierung
Für die Formatierung des Textes kann die normale Markdown-Notation genutzt werden.
### Text-Hinweise
Zusätzlich lassen sich hinweise im Text hervorheben. Hierfür können html-Tags verwendet werden, die dann je nach class-Attribut zum Beispiel als Positiver-Hinweis, Bemerkung oder Warnung angezeigt werden.

<aside class="success">
Gut!
</aside>

```html
<aside class="success">
Gut!
</aside>
```

<aside class="notice">
Dies ist eine Bemerkung.
</aside>

```html
<aside class="notice">
Dies ist eine Bemerkung.
</aside>
```

<aside class="warning">
Die ist eine Warnung.
</aside>

```html
<aside class="warning">
Dies ist eine Warnung.
</aside>
```

### Code-Formatierung und -Hinweise
Wie in Markdown üblich lassen sich Code-Blöcke schreiben, welche unter Angabe des Sprache beim rendern ebenfalls hervorgehoben werden.
Um diese Code-Blöcke ordnen und kommentieren zu können kann man Markdown-Kommentare verwenden. Diese Kommentare sind jedoch für alle Programmiersprachen gleich.

> Dieser Kommentar taucht bei allein Programmiersprachen auf.

```markdown
> Hier kann man was zum Code dazu schreiben.
\`\`\`markdown
#Slate
## Beispiel
So würde eine Markdown-Beispiel in das Markdown-Dokument eingefügt werden.
\`\`\`
```
