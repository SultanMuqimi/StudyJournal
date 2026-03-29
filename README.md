# Study Journal

A private daily log of everything I study and learn — concepts, code snippets, notes, and references I want to keep for the future.

## Structure

```
StudyJournal/
├── daily/              # One file per study day  (YYYY-MM-DD.md)
├── topics/             # Deep-dives organized by subject
│   ├── csharp/
│   ├── blazor/
│   ├── sql/
│   └── ...
├── templates/
│   └── daily_template.md
└── new_entry.ps1       # Quick-start script — creates & opens today's entry
```

## How to Use

**Start a new day:**
```powershell
./new_entry.ps1
```
This creates `daily/YYYY-MM-DD.md` from the template and opens it in VS Code.

**Add a topic deep-dive:**
Create a file under `topics/<subject>/topic-name.md` whenever you want to document a concept in detail beyond a single day's notes.

**Commit when done:**
```bash
git add .
git commit -m "Study: <what you learned today>"
git push
```

## Topics Covered
<!-- Update this list as you go -->
- [ ] C# / .NET
- [ ] Blazor
- [ ] SQL / Databases
- [ ] Git & GitHub
- [ ] Algorithms & Data Structures
