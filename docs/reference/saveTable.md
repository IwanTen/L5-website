# saveTable()

Writes the contents of a Table object to a file, either comma-separated-values ('csv'), tab-separated values ('tsv'), or a Lua table ('lua', default). 

Takes two or three arguments: data, filename, extension. If no extension is given `saveTable()` will attempt to auto-detect the format from the filename.

## Examples

saveTable example 1

```lua
function setup()
  local data = {
    ['id']=0,
    ['species']="Pathera leo",
    ['name']="Lion"
  }
  saveTable(data, 'new.csv')

  describe('no image displayed')
end

-- Saves the following to a file called 'new.csv':
-- id,species,name
-- 0,Panthera leo,Lion
```

saveTable example 2

```lua
function setup()
  local data = {
    {id=0, species="Panthera leo", name="Lion"},
    {id=1, species="Panthera tigris", name="Tiger"}
  }
  saveTable(data, 'new.csv')

  describe('no image displayed')
end

-- Saves the following to a file called 'new.csv':
-- name,id,species
-- Lion,0,Panthera leo
-- Tiger,1,Panthera tigris
-- Note: Tables in Lua do not guarantee column order. The order of columns
-- in the saved CSV may not match the order they were defined in the table.
```

## Syntax

```lua
saveTable(list, filename [,extension])
```

## Parameters

| Parameter |                                                                               |
| -         | --                                                                            |
| list      | table: data to save                                                           |
| filename  | String: any sequence of letters and numbers, optionally with extension        |
| extension | String: csv, tsv or lua                                                       |

## Related

* [loadTable()](loadTable.md)
* [loadStrings()](loadStrings.md)
* [table](table.md)

