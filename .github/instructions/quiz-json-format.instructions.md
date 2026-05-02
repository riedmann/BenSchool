---
description: "Use when generating, editing, or validating quiz JSON files for the superkahoot project. Enforces the Quiz/Question schema, correct-answer shuffling, and Markdown code formatting inside question text."
applyTo: "**/*.json"
---

# Quiz JSON Format

All quiz JSON files must conform to the following TypeScript interfaces.

## Schema

### Quiz (root object)

```json
{
  "id": "string — unique quiz ID",
  "title": "string",
  "description": "string — supports Markdown (optional)",
  "difficulty": "easy | medium | hard (optional)",
  "category": "string (optional)",
  "creatorId": "string (optional)",
  "creatorEmail": "string (optional)",
  "creatorDisplayName": "string (optional)",
  "createdAt": "ISO 8601 date string (optional)",
  "updatedAt": "ISO 8601 date string (optional)",
  "questions": [ /* array of Question objects */ ]
}
```

### Standard question

```json
{
  "id": "string",
  "type": "standard",
  "question": "string",
  "options": [
    { "text": "string", "image": "URL or base64 (optional)" }
  ],
  "correctAnswers": [0],
  "timeLimit": 30
}
```

- `options` — array of `{ "text": "..." }` objects (add `"image"` only when needed)
- `correctAnswers` — array of **0-based indices** into `options`
- `timeLimit` — seconds (optional)

### True/False question

```json
{
  "id": "string",
  "type": "true-false",
  "question": "string",
  "correctAnswer": true,
  "timeLimit": 20
}
```

- `correctAnswer` — JSON boolean (`true` or `false`, no quotes)

## Rules

### 1. Valid JSON — double-quote everything
All keys and string values use double quotes. No trailing commas, no comments.

### 2. Shuffle correct answer positions
When generating standard questions, vary which index holds the correct answer across the quiz. Do **not** default to index `0` or `1` for every question.

**Bad** (always index 0):
```json
"options": [
  { "text": "The correct answer" },
  { "text": "Wrong A" },
  { "text": "Wrong B" }
],
"correctAnswers": [0]
```

**Good** (correct answer placed at different positions):
```json
"options": [
  { "text": "Wrong A" },
  { "text": "Wrong B" },
  { "text": "The correct answer" },
  { "text": "Wrong C" }
],
"correctAnswers": [2]
```

### 3. Code snippets in question text — use Markdown fenced blocks
When a question references code, embed it as a fenced Markdown code block inside the `"question"` string, using `\n` for newlines. The `description` field at the quiz level also supports Markdown.

The opening fence **must include the language tag** (`typescript`, `javascript`, etc.) for syntax highlighting to work:

```json
"question": "Consider this TypeScript code:\n\n```typescript\nconst x: number = 5;\n```\n\nWhat is the type of `x`?"
```

A fence without a language tag (` ``` ` with no tag) will not render with syntax highlighting.

For UML class diagrams, use the `plantuml` language tag:

```json
"question": "Consider this class diagram:\n\n```plantuml\n@startuml\nclass Animal {\n  +speak(): string\n}\nclass Dog extends Animal\n@enduml\n```\n\nWhat relationship does the diagram show?"
```

### 4. IDs
- Quiz `id`: descriptive slug, e.g. `"quiz-ts-oop-001"`
- Question `id`: sequential, e.g. `"q1"`, `"q2"`, …

### 5. No extra fields
Do not add fields not present in the schema. Only include optional fields (`image`, `timeLimit`, `description`, etc.) when they carry meaningful content.
