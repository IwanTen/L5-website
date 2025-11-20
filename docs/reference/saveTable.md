# saveTable()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Writes the contents of a Table object to a file. Defaults to a
text file with comma-separated-values ('csv') but can also
use tab separation ('tsv'), or generate an HTML table ('html').
The file saving process and location of the saved file will
vary between web browsers.

## Examples

![saveTable example 1](assets/saveTable1.webp)

```lua
local table

 function setup()
 table = new p5.Table()

 table.addColumn('id')
 table.addColumn('species')
 table.addColumn('name')

 local newRow = table.addRow()
 newRow.setNum('id', table.getRowCount() - 1)
 newRow.setString('species', 'Panthera leo')
 newRow.setString('name', 'Lion')

 -- To save, un-comment next line then click 'run'
 -- saveTable(table, 'new.csv')

 describe('no image displayed')
 end

 -- Saves the following to a file called 'new.csv':
 -- id,species,name
 -- 0,Panthera leo,Lion
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
