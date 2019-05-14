<center>

[![PowerShellGallery Version](https://img.shields.io/powershellgallery/v/PSWriteHTML.svg)](https://www.powershellgallery.com/packages/PSWriteHTML)

[![PowerShellGallery Platform](https://img.shields.io/powershellgallery/p/PSWriteHTML.svg)](https://www.powershellgallery.com/packages/PSWriteHTML)
[![PowerShellGallery Preview Version](https://img.shields.io/powershellgallery/vpre/PSWriteHTML.svg?label=powershell%20gallery%20preview&colorB=yellow)](https://www.powershellgallery.com/packages/PSWriteHTML)

![Top Language](https://img.shields.io/github/languages/top/evotecit/PSWriteHTML.svg)
![Code](https://img.shields.io/github/languages/code-size/evotecit/PSWriteHTML.svg)
[![PowerShellGallery Downloads](https://img.shields.io/powershellgallery/dt/PSWriteHTML.svg)](https://www.powershellgallery.com/packages/PSWriteHTML)

</center>

# PSWriteHTML - PowerShell Module

`PSWriteHTML` is fork of [ReportHTML](https://github.com/azurefieldnotes/ReportHTML/) module. I've forked [ReportHTML](https://github.com/azurefieldnotes/ReportHTML/) due to it being outdated and not really maintained. I also wanted to address some problems it has and possibly add more features. As it stands `PSWriteHTML` doesn't use same naming convention as [ReportHTML](https://github.com/azurefieldnotes/ReportHTML/) therefore you can have both. Keep in mind the approach on building html is much more simplified and I'm adding more and more features as I go (fixes included).

## Advantages over ReportHTML:

-   faster report building (from 20+ seconds to 0-2 seconds)
-   updated libraries
-   bunch of different, new features
-   easier building HTML

### Credits

[Matthew Quickenden](https://www.linkedin.com/in/matthewquickenden/) ([@lucidqdreams](https://github.com/lucidqdreams)) - author of  ReportHTML - without him this wouldn't be possible.

## Projects using PSWriteHTML (to give you ideas what you can do):

- [Statusimo](https://github.com/EvotecIT/Statusimo) is a PowerShell module that is able to generate a Status Page entirely from PowerShell.
- [Dashimo](https://github.com/EvotecIT/Dashimo) is a PowerShell module that makes generating Dashboards, nice looking HTML, a breeze.
- [Emailimo](https://github.com/EvotecIT/Emailimo) is a PowerShell module that makes writting nice looking HTML emails, easy!
- [Out-HTMLView](https://evotec.xyz/out-htmlview-html-alternative-to-out-gridview/) is a PowerShell cross-platform command alternative to Out-GridView

![Out-HTMLView](https://evotec.xyz/wp-content/uploads/2019/04/Out-HtmlView.gif)

Following external libaries and frameworks are in use. They make `PSWriteHTML` what it is now. This list is dynamic and doesn't cover everything yet.

For colors you can visit this [online page](https://evotec.xyz/wp-content/uploads/2019/05/Example-Colors.html).

### PSWriteHTML - External JS Framework - DataTables

Following JS Framework is intergrated as part of this module. It's responsible for building Tables

![DataTables Example](https://evotec.xyz/wp-content/uploads/2019/03/img_5c9fe366e4906.png)

It was downloaded from https://datatables.net/download/ with following settings.

-   [x] Styling Framework:
    -   [x] DataTables' default styling.v1.10.18
-   [x] Selected Packages:
    -   [x] jQuery 3 DataTables requires jQuery. Don't select either version if you already have it.v3.3.1
    -   [x] Enhance HTML tables with advanced interaction controls.v1.10.18
-   [x] Extensions:
    -   [x] AutoFill Excel-like click and drag copying and filling of data.v2.3.2
    -   [x] Buttons A common framework for user interaction buttons.v1.5.4
    -   [x] Column visibility End user buttons to control column visibility.v1.5.4
    -   [ ] Flash export Create Excel, PDF, CSV files and copy data from the table. For legacy browsers.v1.5.4
    -   [x] HTML5 export Copy to clipboard and create Excel, PDF and CSV files from the table's data.v1.5.4
        -   [ ] JSZip Required for the Excel HTML5 export button.v2.5.0
        -   [ ] pdfmake Required for the PDF HTML5 export button.v0.1.36
    -   [x] Print view Button that will display a printable view of the table.v1.5.4
    -   [x] ColReorder Click-and-drag column reordering.v1.5.0
    -   [x] FixedColumns Fix one or more columns to the left or right of a scrolling table.v3.2.5
    -   [x] FixedHeader Sticky header and / or footer for the table.v3.1.4
    -   [x] KeyTable Keyboard navigation of cells in a table, just like a spreadsheet.v2.5.0
    -   [x] Responsive Dynamically show and hide columns based on the browser size.v2.2.2
    -   [x] RowGroup Show similar data grouped together by a custom data point.v1.1.0
    -   [x] RowReorder Click-and-drag reordering of rows.v1.2.4
    -   [x] Scroller Virtual rendering of a scrolling table for large data sets.v1.5.0
    -   [x] Select Adds row, column and cell selection abilities to a table.v1.2.6

JSZip and PDFMake are not downloaded as part of this package. They fail to import properly hence they are not bundled as one minified version.

-   [x] Extensions:
    -   [x] Downloaded from https://github.com/Stuk/jszip (3.1.5)
        -   [x] JSZip Required for the Excel HTML5 export button.v2.5.0
    -   [x] DataTables Package https://datatables.net/download/ but with separate file
        -   [x] pdfmake Required for the PDF HTML5 export button.v0.1.36
    -   [x] ChartJS Package - https://github.com/chartjs/Chart.js/releases
        -   [x] ChartJS - version 2.7.3 (required for charts)

### PSWriteHTML - External JS Framework -EnlighterJS

**PSWriteHTML** provides built-in EnlighterJS JavaScript. It's responsible for building Code Blocks

![EnlighterJS Example](https://evotec.xyz/wp-content/uploads/2019/03/img_5c9fea1322df8.png)

This allows for **code blocks** support. Currently it uses Release Candidate version as it's first version to support **PowerShell highlighting** and many additional languages. It will be updated to new version

-   [x] Downloaded from https://github.com/EnlighterJS/EnlighterJS/tree/v3.0.0-RC1

#### Following languages are supported for New-HTMLCodeBlock

-   [x] **Assembly** (assembly, asm)
-   [x] **AVR Assembly** (avrassembly, avrasm)
-   [x] **C/C++** (c,cpp, c++)
-   [x] **C#** (csharp)
-   [x] **CSS** (css)
-   [x] **Cython** (cython)
-   [x] **CordPro** (cordpro)
-   [x] **diff** (diff)
-   [x] **Dockerfile** (docker, dockerfile)
-   [x] **Generic** (generic, standard) - default highlighting scheme
-   [x] **Groovy** (groovy)
-   [x] **Go** (go, golang)
-   [x] **HTML** (html)
-   [x] **Ini** (ini, conf)
-   [x] **Java** (java)
-   [x] **Javascript** (js, javascript, jquery, mootools, ext.js)
-   [x] **JSON** (json)
-   [x] **Kotlin** (kotlin)
-   [x] **LESS** (less)
-   [x] **LUA** (lua)
-   [x] **Markdown** (gfm, md, markdown)
-   [x] **Matlab/Octave** (octave, matlab)
-   [x] **NSIS** (nsis)
-   [x] **PHP** (php)
-   [x] **Powerhsell** (powershell)
-   [x] **Prolog** (prolog)
-   [x] **Python** (py, python)
-   [x] **RAW** (raw) - raw code without highlighting with EnlighterJS container styles!
-   [x] **Ruby** (ruby)
-   [x] **Rust** (rust)
-   [x] **SCSS** (scss, sass)
-   [x] **Shellscript** (shell, bash)
-   [x] **SQL** (sql)
-   [x] **Squirrel** (squirrel)
-   [x] **Swift** (swift)
-   [x] **Typescript** (typescript)
-   [x] **VHDL** (vhdl)
-   [x] **VisualBasic** (visualbasic, vb)
-   [x] **XML** (xml)
-   [x] **YAML** (yaml)

#### Following themes are supported for New-HTMLCodeBlock

-   [x] **Enlighter** (enlighter, standard) - Enlighter`s default Theme
-   [x] **Classic** (classic) - SyntaxHighlighter inspired
-   [x] **Bootstrap** (bootstrap4) - Bootstrap 4 inpired themes, high contrast
-   [x] **Beyond** (beyond) - BeyondTechnology Theme
-   [x] **Godzilla** (godzilla) - A MDN inspired Theme
-   [x] **Eclipse** (eclipse) - Eclipse inspired
-   [x] **MooTwo** (mootwo) - Inspired by the MooTools Website
-   [x] **Droide** (droide) - Modern, minimalistic
-   [x] **Minimal** (minimal) - Bright, High contrast
-   [x] **Atomic** (atomic) - Dark, Colorful
-   [x] **Dracula** (dracula) - Dark, using official [draculatheme](https://draculatheme.com/) colorscheme
-   [x] **Rowhammer** (rowhammer) - Light, Transparent, divided rows
