# SQLCMD Conditional Files in Visual Studio database project

This is a test project to help answer two of my StackOverflow questions.

* [How not to include sql file content when publishing?](http://stackoverflow.com/questions/42846424/how-not-to-include-sql-file-content-when-publishing)
* [Using variable in sql postdeployment build script?](http://stackoverflow.com/questions/26178189/using-variable-in-sql-postdeployment-build-script)

 1. Just get the code
 2. Double click **Customer1.publish.xml** 
 3. Click "**Load Variables**" that vill load Customer1 (see images in [Stack-question](http://stackoverflow.com/questions/42846424/how-not-to-include-sql-file-content-when-publishing))
 4. Click "**Generate Script**"
 5. If you find "Customer2 stuff from Customer2.sql" in the generated file **you have not fixed** my problem.
 ```
Print 'This print statement should not be in the publishing script if Customer variable is not customer2'
print 'Customer2 stuff from Customer2.sql'
```

 I ***ONLY*** want to get selected content into the created publishing script, nothing else!
 
 I will probably have to to this in future build scripts (or manually until that gets setup). But until then I´m hoping somebody can just tell me if this is possible or not in the deployment scripts.
 
