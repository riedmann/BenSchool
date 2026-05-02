---
description: "General project structure and conventions for the SchuleBen learning materials project"
applyTo: "subject/**"
---

# SchuleBen Projekt - Lernmaterialien Struktur

Dieses Projekt organisiert Bildungsinhalte für Schüler in einer strukturierten Weise.

## Ordnerstruktur

```
subject/
  └── [fachname]/              # z.B. biology1, physics1
      ├── *.md                 # Lerninhalt (extrahiert aus Bildern)
      ├── images/              # Hochgeladene Bilder
      ├── questions/           # Markdown-Fragen (alle Typen)
      │   └── *-fragen.md
      └── quiz/                # JSON-Quiz (nur MC und True/False)
          └── *-quiz.json
```

## Dateinamenskonventionen

- **Inhaltsdateien**: Beschreibende Namen mit Bindestrichen (z.B. `voegel-fortpflanzung.md`)
- **Fragendateien**: `[thema]-fragen.md` (z.B. `voegel-fortpflanzung-fragen.md`)
- **Quiz-Dateien**: `[thema]-quiz.json` (z.B. `voegel-fortpflanzung-quiz.json`)

## Fragetypen nach Format

### Markdown-Fragendateien (`questions/*.md`)

- Multiple Choice
- True/False
- **Essay/Offene Fragen** ✅

### JSON-Quiz-Dateien (`quiz/*.json`)

- Multiple Choice (`type: "standard"`)
- True/False (`type: "true-false"`)
- **Essay-Fragen NICHT erlaubt** ❌

## Bildverweise

Alle Bildverweise in Markdown-Dateien verwenden relative Pfade:

```markdown
![Beschreibung](images/[bildname].jpg)
```

## Wichtige Hinweise

- Erstelle neue Fachordner in `subject/` wenn nötig
- Verwende konsistente Dateinamen (lowercase, Bindestriche statt Leerzeichen)
- Bei der Arbeit mit Bildern: Merke dir den exakten Dateinamen für korrekte Verweise
