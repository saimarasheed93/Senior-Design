# Senior-Design

##Instructions on installation:
### Make sure git is installed on your computer
- Macs might already have this installed

![](http://i.imgur.com/AznGUnw.gif)

***

### Make sure you are logged in to github online

***

### Opening Terminal on Mac
- Open Terminal by using (Command+Space), and then typing Terminal

![](http://i.imgur.com/6JjkZf0.gif)

***

### Set up
- Use the following command to download the master repository
	- `git clone https://github.com/saimarasheed93/Senior-Design`
	- ls into the new file "Senior-Design"
- Set system-wide settings:
	- `git config user.email "Email on github"`
	- `git config user.name "Name on github"`

![](http://i.imgur.com/OUkLi.gif)

***

### Turning in Changes
- To Do Changes:
	- Use the command `git checkout -b "New Branch Name"`
		- NOTE: Do not edit to master directly
			- Check what branch you are working on with command
				"git branch"
	- Do your code changes
	- Enter the command `git status` to see if your edits have been registered
	- Use `git add "filename` to add changes to the list of files that will be turned in
		- Use `git add .` to add all files
	- Use `git commit -m "Reason for Change"` 
	- Finally `git push` to turn in changes
	
![](http://i.imgur.com/60bts.gif)

