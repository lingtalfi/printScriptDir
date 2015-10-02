printScriptDir
==================
2015-10-02



What is it?
-----------------

The [printScriptDir function]( https://github.com/lingtalfi/printScriptDir/blob/master/printScriptDir.sh ) returns the real directory from which it is executed.

It handles:

	- symlinks
	- relative paths 
	----- including normalization (converting ../../ into a resolved path)
	- absolute paths


How to use it?
-----------

Copy/paste the printScriptDir function in your script.
Then you can do one of the following:

```bash
# display it
printScriptDir "$0"
```

```bash
# or store it in a variable
realDir=$(printScriptDir "$0")
echo "realDir=$realDir";
```


