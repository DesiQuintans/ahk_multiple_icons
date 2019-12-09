# Replacing and using multiple icons in a compiled Autohotkey program


## Requirements

You will need:

1. Ahk2Exe (comes with [Autohotkey](https://www.autohotkey.com/))
2. [Resource Hacker](http://www.angusj.com/resourcehacker/) AKA ResHacker.
3. Icons in .ico format (this is the most convenient format). I used [John
   Sorrentino's Emoji Favicons](https://favicon.io/emoji-favicons/) site
   for the examples used in this article.


## Replacing only the main icon

This one is simple; you simply need to offer the new icon in the **Ahk2Exe**
GUI. You can also do it in the command line:

```
"path\to\Ahk2Exe.exe" /in "my_script.ahk" /icon "my_icon.ico"
```


## Replacing the icons that are used for Suspending, Pausing, etc.

If you open a compiled Autohotkey program in **ResHacker** and open its _Icon Group_ 
tree, you will see five entries:

- **159**, the main program icon.
- **160**, the default Autohotkey script icon.
- **206**, the icon displayed when the program is `Suspend`ed.
- **207**, the icon displayed when the program is `Pause`d.
- **208**, the icon displayed when the program is both `Suspend`ed _and_ `Pause`d.

Controlling the icon that Autohotkey uses in its various states therefore involves 
using **ResHacker** to replace any or all of these five icons. This can be done in
the **ResHacker** GUI (_Action → Add an image or other binary resource (Ctrl + M)_), 
or it can be done in the command line. For example, to replace **206** with a new
icon, use:

```
"path\to\ResourceHacker.exe" -open my_executable.exe -save my_executable.exe 
    -action addoverwrite -resource "my_icon.ico" -mask ICONGROUP,206,
```


## Using custom icons in a program

Aside from changing the default icons used in your compiled program, you can also
add new icons and use them whenever you like. Add them to the executable with
**ResHacker** under a new numeric name, e.g. `300` or greater:

```
"path\to\ResourceHacker.exe" -open my_executable.exe -save my_executable.exe 
    -action addoverwrite -resource "my_icon.ico" -mask ICONGROUP,300,
```

Then access them in your program logic: 

```
Menu, Tray, Icon, %A_ScriptFullPath%, -300
```

By offering `%A_ScriptFullPath%` as the FileName and **a negative integer** as
the IconNumber, you are telling Autohotkey that you want IconNumber 300 inside
the currently-running executable.


## A worked example

I have included 3 sets of files in this repo:

1. **icon_test.ahk** is a program that lets you cycle through the default icons in a
   compiled Autohotkey program with F1-F5. It also lets you `Suspend` and `Pause`
   the program to show that you only need to replace the icons in the executable for
   them to be used; no other changes to the program logic are necessary.
2. **icons\\** is a folder that contains .ico icons that will be used in the exercise.
3. **compile.bat** is a batch file used to compile the above script. It creates two
   copies:
   - **icon_test.exe** is the raw compiled executable with default icons.
   - **icon_test_edited.exe** is the same executable edited to have all new icons.


## Troubleshooting

### Your executable's main icon doesn't update properly in Windows Explorer

This is caused by Windows not properly updating its icon cache. You'll need to
[force Windows to do it manually](https://superuser.com/a/499079/1119763).
