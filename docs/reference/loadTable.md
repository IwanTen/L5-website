# loadTable()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Reads the contents of a file or URL and creates a p5.Table object with
its values. If a file is specified, it must be located in the sketch's
"data" folder. The filename parameter can also be a URL to a file found
online. By default, the file is assumed to be comma-separated (in CSV
format). Table only looks for a header row if the 'header' option is
included.

All files loaded and saved use UTF-8 encoding. This method is suitable for fetching files up to size of 64MB.

## Examples

![loadTable example 1](assets/loadTable1.webp)

```lua
-- Given the following CSV file called "mammals.csv"
-- located in the project's "assets" folder:
--
-- id,species,name
-- 0,Capra hircus,Goat
-- 1,Panthera pardus,Leopard
-- 2,Equus zebra,Zebra

local table

function setup()
  --my table is comma separated value "csv"
  --and has a header specifying the columns labels
  table = loadTable('/assets/mammals.csv', 'csv', 'header')

  --count the columns
  print(table.getRowCount() + ' total rows in table')
  print(table.getColumnCount() + ' total columns in table')

  print(table.getColumn('name'))
  --["Goat", "Leopard", "Zebra"]

  --cycle through the table
  for (local r = 0; r < table.getRowCount(); r++)
    for c=0,c < table.getColumnCount() do
      print(table.getString(r, c))
    end
  describe(`randomly generated text from a file,
    for example "i smell like butter"`)
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
