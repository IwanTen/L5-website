# table
    
A table is the most important data structure of Lua. They are used to construct arrays, objects and more. They are initalized with the `{}` constructor.

```lua
myTable = {}
```

Technically, tables are *associative arrays* with an automatic numeric key that starts at 1, so tables are used for *arrays* as well as *objects*.

### Ordered tables

An example of an ordered table array:

```lua
fruits = {'apple', 'banana', 'tangerine', 'fig'}
```

Lua is *1-indexed*. To get the first item from the array:

```lua
print(fruits[1]) --"apple"
```

### Length of an ordered table

Tables have the special `#` keyword. Prepending this to the table name returns the table's length.

```lua
fruits = {'apple', 'banana', 'tangerine', 'fig'}
print("I have "..#fruits.." fruits.") --"I have 4 fruits."
print("The last one is "..fruits[#fruits]) --"The last one is fig."
```

You can easily add an item to the end of an ordered table using the length of the table and adding 1. This added item becomes the new end of the table.

```lua
fruits[#fruits + 1] = 'lemon'
print(fruits[#fruits]) --"lemon"
```

## Looping through an ordered table

There is the special function `ipairs` to loop through an ordered table. The *i* references *index*, the number that counts forward through the table.

```lua
for i,fruit in ipairs(fruits) do
  print(fruit)
end
--prints out:
apple
banana
tangerine
fig
```

### Associative tables

Tables can be used to build objects made up of more complex key-value pair structures. 

```lua
me = {
  ['name'] = 'Mario',
  ['job'] = 'Plumber'
}
```

You can access values from the table in two different ways, through the `[key]` construct or dot notation:

```lua
print(me['name']) --'Mario'

print(me.name) --'Mario'
```

You can loop through key-value pairs in a table through the special *pairs* function.

```lua
for key,val in pairs(me) do
  print(key,val)
end
--prints
job	Plumber
name	Mario
```

## Table manipulation

Lua has a number of functions specific to working with tables. See the [Table Manipulation](https://www.lua.org/manual/5.4/manual.html#6.6) in the Lua Reference Manual for more information. 

```
table.concat(list [,separator]) --concatenates all items in the table, optionally with a separator
table.insert (list, [pos,] value) --inserts item to end of table, or at optionally specified location 
table.move(a1, f, e, t, [a2]) --moves items from a table within or to another
table.pack(...) --returns a table with all arguments
table.remove(list [,pos]) --removes an element from the end of table, or at optionally specified location
table.sort(list [,comp]) --sorts a list by alphanumeric or an optionally given order
table.unpack(list) --returns elements from a list
```

### Advanced use of tables

Tables are used for other data constructors. You can create an array of objects; build [object-oriented programming](https://en.wikipedia.org/wiki/Lua#Object-oriented_programming) classes; and mimic inheritance, all with metatables. 

## Syntax

```lua
myTable = {}
```

```lua
myTable = {n1, n2, n3, .....}
```

```lua
myTable = {
  [key] = value,
  [key] = value,
  .....
}
```

*etc.*

## Related

* [function()](function.md)
* [for](for.md)


---

*This reference page contains content adapted from [p5.js](https://p5js.org/) and [Processing](https://processing.org) by [p5.js Contributors](https://github.com/processing/p5.js?tab=readme-ov-file#contributors) and [Processing Foundation](https://processingfoundation.org/people), licensed under [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/).*
