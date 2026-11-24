# Graph Report - antcbt  (2026-10-27)

## Corpus Check
- 130 files · ~536,492 words
- Verdict: corpus is large enough that graph structure adds value.
- Unclassified: 15 file(s) not represented in the graph (top: (none) 8, .xml 2, .otf 2)

## Summary
- 438 nodes · 606 edges · 128 communities (9 shown, 119 thin omitted)
- Extraction: 98% EXTRACTED · 2% INFERRED · 0% AMBIGUOUS · INFERRED: 12 edges (avg confidence: 0.83)
- Token cost: 0 input · 0 output

## Graph Freshness
- Built from commit: `05d057e2`
- Run `git rev-parse HEAD` and compare to check if the graph is stale.
- Run `graphify update .` after code changes (no API cost).

## Community Hubs (Navigation)
- Spreadsheet Excel Reader #1
- Spreadsheet Excel Reader #2
- Spreadsheet Excel Reader #3
- Global Helper Functions
- Documentation and Error Pages
- OLE Excel Parser #1
- OLE Excel Parser #2
- OLE Excel Parser #3
- CRUD Database Helpers
- Word Import Helpers
- Word Question Importer
- Composer Dependencies
- ACS Image Asset
- Student Dashboard Router
- Status Peserta

## God Nodes (most connected - your core abstractions)
1. `Spreadsheet_Excel_Reader` - 63 edges
2. `Spreadsheet_Excel_Reader` - 63 edges
3. `Spreadsheet_Excel_Reader` - 62 edges
4. `OLERead` - 6 edges
5. `OLERead` - 6 edges
6. `OLERead` - 6 edges
7. `penyebut()` - 4 edges
8. `selesaikanUjian()` - 4 edges
9. `rrmdir()` - 4 edges
10. `Computer-Based Exam Application (CBT)` - 4 edges

## Surprising Connections (you probably didn't know these)
- `config 404 Error Page` --semantically_similar_to--> `mod_user 404 Error Page`  [INFERRED] [semantically similar]
  config/index.html → x-panel/mod_user/index.html
- `CANDY 2.8 Release Credits` --conceptually_related_to--> `Computer-Based Exam Application (CBT)`  [AMBIGUOUS]
  x-panel/histori.txt → README.md
- `x-panel History (histori.txt)` --conceptually_related_to--> `antcbt (README)`  [INFERRED]
  x-panel/histori.txt → README.md
- `Candy PPDB 2020` --conceptually_related_to--> `Computer-Based Exam Application (CBT)`  [INFERRED]
  x-panel/mod_user/index.html → README.md
- `selesaikanUjian()` --calls--> `update()`  [INFERRED]
  config/functions.ujian.php → config/functions.crud.php

## Import Cycles
- None detected.

## Hyperedges (group relationships)
- **antcbt 404 Error Page Implementations** — config_index, config_index_404_error_page, config_index_http_errorpages, x_panel_mod_user_index, x_panel_mod_user_index_404_page, x_panel_mod_user_index_stisla [INFERRED 0.85]
- **Candy-Branded antcbt Application Identity** — readme_antcbt_computer_based_exam, x_panel_histori_candy_2_8, x_panel_mod_user_index_candy_ppdb_2020 [INFERRED 0.75]
- **PHP Hosting Deployment Requirements** — readme_hosting, readme_hosting_php_json_zip, readme_antcbt_computer_based_exam [INFERRED 0.80]

## Communities (128 total, 119 thin omitted)

### Community 4 - "Documentation and Error Pages"
Cohesion: 0.19
Nodes (10): config 404 Error Page, HttpErrorPages Template (AndiDittrich), antcbt (README), Computer-Based Exam Application (CBT), PHP JSON and ZIP Extension Requirement, x-panel History (histori.txt), CANDY 2.8 Release Credits, mod_user 404 Error Page (+2 more)

### Community 5 - "OLE Excel Parser #1"
Cohesion: 0.22
Nodes (4): array_comb(), GetInt4d(), gmgetdate(), OLERead

### Community 6 - "OLE Excel Parser #2"
Cohesion: 0.39
Nodes (4): array_comb(), GetInt4d(), gmgetdate(), OLERead

### Community 7 - "OLE Excel Parser #3"
Cohesion: 0.24
Nodes (4): array_comb(), GetInt4d(), gmgetdate(), OLERead

### Community 8 - "CRUD Database Helpers"
Cohesion: 0.24
Nodes (4): fetch(), select(), update(), selesaikanUjian()

### Community 9 - "Word Import Helpers"
Cohesion: 0.60
Nodes (3): rrmdir(), word_file_import(), xml_attribute()

### Community 11 - "Composer Dependencies"
Cohesion: 0.50
Nodes (3): require, phpoffice/phpspreadsheet, phpoffice/phpword

### Community 27 - "Student Dashboard Router"
Cohesion: 0.31
Nodes (8): akhiripelanggaran(), hitung(), selesai(), sinkronpelanggaran(), soalFont(), soalpertama(), tampilkanperingatan(), waktuhabis()

### Community 119 - "Status Peserta"
Cohesion: 0.48
Nodes (5): kirimAksiMassal(), muatStatus(), mulaiRefreshStatus(), perbaruiTombolMassal(), pulihkanCeklis()

## Ambiguous Edges - Review These
- `Computer-Based Exam Application (CBT)` → `CANDY 2.8 Release Credits`  [AMBIGUOUS]
  x-panel/histori.txt · relation: conceptually_related_to
- `config 404 Error Page` → `mod_user/index.html`  [AMBIGUOUS]
  config/index.html · relation: conceptually_related_to
- `acs.jpg (White Surface Texture Asset)` → `White Surface Texture`  [AMBIGUOUS]
  x-panel/acs.jpg · relation: rationale_for

## Knowledge Gaps
- **4 isolated node(s):** `HttpErrorPages Template (AndiDittrich)`, `Stisla Admin Template`, `acs.jpg (White Surface Texture Asset)`, `White Surface Texture`
  These have ≤1 connection - possible missing edges or undocumented components. (Counts symbols only; 178 node(s) total have ≤1 connection when file, concept and rationale nodes are included.)
- **119 thin communities (<3 nodes) omitted from report** — run `graphify query` to explore isolated nodes.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **Why does `Spreadsheet_Excel_Reader` connect `Spreadsheet Excel Reader #1` to `OLE Excel Parser #2`?**
  _High betweenness centrality (0.024) - this node is a cross-community bridge._
- **What connects `HttpErrorPages Template (AndiDittrich)`, `Stisla Admin Template`, `acs.jpg (White Surface Texture Asset)` to the rest of the system?**
  _4 weakly-connected nodes found - possible documentation gaps or missing edges._
- **Should `Spreadsheet Excel Reader #1` be split into smaller, more focused modules?**
  _Cohesion score 0.06875 - nodes in this community are weakly interconnected._
- **Why does `Spreadsheet_Excel_Reader` connect `Spreadsheet Excel Reader #2` to `OLE Excel Parser #3`?**
  _High betweenness centrality (0.023) - this node is a cross-community bridge._
- **Should `Spreadsheet Excel Reader #2` be split into smaller, more focused modules?**
  _Cohesion score 0.07570621468926554 - nodes in this community are weakly interconnected._

### Low-confidence Hints
_AMBIGUOUS edges — the extractor was unsure. Verify before acting on these._

- **What is the exact relationship between `Computer-Based Exam Application (CBT)` and `CANDY 2.8 Release Credits`?**
  _Edge tagged AMBIGUOUS (relation: conceptually_related_to) - confidence is low._
- **What is the exact relationship between `config 404 Error Page` and `mod_user/index.html`?**
  _Edge tagged AMBIGUOUS (relation: conceptually_related_to) - confidence is low._