# Graph Report - .  (2026-10-03)

## Corpus Check
- 131 files · ~110,163 words
- Verdict: corpus is large enough that graph structure adds value.

## Summary
- 400 nodes · 544 edges · 128 communities (123 shown, 5 thin omitted)
- Extraction: 99% EXTRACTED · 1% INFERRED · 1% AMBIGUOUS · INFERRED: 5 edges (avg confidence: 0.79)
- Token cost: 0 input · 0 output

## Community Hubs (Navigation)
- Spreadsheet Excel Reader #1
- Spreadsheet Excel Reader #2
- Spreadsheet Excel Reader #3
- Global Helper Functions
- Documentation and Error Pages
- OLE Excel Parser #1
- OLE Excel Parser #2
- OLE Excel Parser #3
- Word Import Helpers
- Composer Dependencies
- ACS Image Asset

## God Nodes (most connected - your core abstractions)
1. `Spreadsheet_Excel_Reader` - 63 edges
2. `Spreadsheet_Excel_Reader` - 63 edges
3. `Spreadsheet_Excel_Reader` - 62 edges
4. `OLERead` - 6 edges
5. `OLERead` - 6 edges
6. `OLERead` - 5 edges
7. `Computer-Based Exam Application (CBT)` - 4 edges
8. `config 404 Error Page` - 4 edges
9. `mod_user 404 Error Page` - 4 edges
10. `require` - 3 edges

## Surprising Connections (you probably didn't know these)
- `config 404 Error Page` --semantically_similar_to--> `mod_user 404 Error Page`  [INFERRED] [semantically similar]
  config/index.html → x-panel/mod_user/index.html
- `CANDY 2.8 Release Credits` --conceptually_related_to--> `Computer-Based Exam Application (CBT)`  [AMBIGUOUS]
  x-panel/histori.txt → README.md
- `x-panel History (histori.txt)` --conceptually_related_to--> `antcbt (README)`  [INFERRED]
  x-panel/histori.txt → README.md
- `PHP JSON and ZIP Extension Requirement` --conceptually_related_to--> `Computer-Based Exam Application (CBT)`  [INFERRED]
  README_HOSTING.TXT → README.md
- `Candy PPDB 2020` --conceptually_related_to--> `Computer-Based Exam Application (CBT)`  [INFERRED]
  x-panel/mod_user/index.html → README.md

## Import Cycles
- None detected.

## Hyperedges (group relationships)
- **antcbt 404 Error Page Implementations** — config_index, config_index_404_error_page, config_index_http_errorpages, x_panel_mod_user_index, x_panel_mod_user_index_404_page, x_panel_mod_user_index_stisla [INFERRED 0.85]
- **Candy-Branded antcbt Application Identity** — readme_antcbt_computer_based_exam, x_panel_histori_candy_2_8, x_panel_mod_user_index_candy_ppdb_2020 [INFERRED 0.75]
- **PHP Hosting Deployment Requirements** — readme_hosting, readme_hosting_php_json_zip, readme_antcbt_computer_based_exam [INFERRED 0.80]

## Communities (128 total, 5 thin omitted)

### Community 4 - "Documentation and Error Pages"
Cohesion: 0.19
Nodes (10): config 404 Error Page, HttpErrorPages Template (AndiDittrich), antcbt (README), Computer-Based Exam Application (CBT), PHP JSON and ZIP Extension Requirement, x-panel History (histori.txt), CANDY 2.8 Release Credits, mod_user 404 Error Page (+2 more)

### Community 5 - "OLE Excel Parser #1"
Cohesion: 0.26
Nodes (4): array_comb(), GetInt4d(), gmgetdate(), OLERead

### Community 6 - "OLE Excel Parser #2"
Cohesion: 0.29
Nodes (4): array_comb(), GetInt4d(), gmgetdate(), OLERead

### Community 7 - "OLE Excel Parser #3"
Cohesion: 0.33
Nodes (4): array_comb(), GetInt4d(), gmgetdate(), OLERead

### Community 9 - "Word Import Helpers"
Cohesion: 0.60
Nodes (3): rrmdir(), word_file_import(), xml_attribute()

### Community 10 - "Composer Dependencies"
Cohesion: 0.50
Nodes (3): require, phpoffice/phpspreadsheet, phpoffice/phpword

## Ambiguous Edges - Review These
- `Computer-Based Exam Application (CBT)` → `CANDY 2.8 Release Credits`  [AMBIGUOUS]
  x-panel/histori.txt · relation: conceptually_related_to
- `config 404 Error Page` → `mod_user/index.html`  [AMBIGUOUS]
  config/index.html · relation: conceptually_related_to
- `acs.jpg (White Surface Texture Asset)` → `White Surface Texture`  [AMBIGUOUS]
  x-panel/acs.jpg · relation: rationale_for

## Knowledge Gaps
- **6 isolated node(s):** `phpoffice/phpword`, `phpoffice/phpspreadsheet`, `HttpErrorPages Template (AndiDittrich)`, `Stisla Admin Template`, `acs.jpg (White Surface Texture Asset)` (+1 more)
  These have ≤1 connection - possible missing edges or undocumented components.
- **5 thin communities (<3 nodes) omitted from report** — run `graphify query` to explore isolated nodes.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **What is the exact relationship between `Computer-Based Exam Application (CBT)` and `CANDY 2.8 Release Credits`?**
  _Edge tagged AMBIGUOUS (relation: conceptually_related_to) - confidence is low._
- **What is the exact relationship between `config 404 Error Page` and `mod_user/index.html`?**
  _Edge tagged AMBIGUOUS (relation: conceptually_related_to) - confidence is low._
- **What is the exact relationship between `acs.jpg (White Surface Texture Asset)` and `White Surface Texture`?**
  _Edge tagged AMBIGUOUS (relation: rationale_for) - confidence is low._
- **Why does `Spreadsheet_Excel_Reader` connect `Spreadsheet Excel Reader #3` to `OLE Excel Parser #1`?**
  _High betweenness centrality (0.029) - this node is a cross-community bridge._
- **Why does `Spreadsheet_Excel_Reader` connect `Spreadsheet Excel Reader #2` to `OLE Excel Parser #2`?**
  _High betweenness centrality (0.028) - this node is a cross-community bridge._
- **Why does `Spreadsheet_Excel_Reader` connect `Spreadsheet Excel Reader #1` to `OLE Excel Parser #3`?**
  _High betweenness centrality (0.028) - this node is a cross-community bridge._
- **What connects `phpoffice/phpword`, `phpoffice/phpspreadsheet`, `HttpErrorPages Template (AndiDittrich)` to the rest of the system?**
  _6 weakly-connected nodes found - possible documentation gaps or missing edges._