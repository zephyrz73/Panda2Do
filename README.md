### Getting Start(to read what already have
1. build
```
$ docker compose build
```
2. drop and recreate and migrate db
```
$ docker compose run web rake db:drop db:create db:migrate
```
3. start the server
```
$ docker compose up
```
4. put http://0.0.0.0:3000/ in browser, press RETERN


### Main workflow to start contribution
1. create your branch locally
```
$ git branch [username]/[branchname]
```
2. see if your branch created locally
```
$ git branch
```
3. go to your branch
```
$ git checkout -b [username]/branchname
```
4. ***make edits to web content***
5. git add your change
```
$ git add .
```
6. make your message
```
$ git commit -m "[your message]"
```
7. git push
```
$ git push origin [your branch]
```
8. open new pull request
On GitHub page Pull Requests -> new pull request -> change field to "base:main branch <- compare:[yourbranch]"
9. put some message in message box
10. ask for at least 1 reviewer to approve (your teammate)
11. resolve any conflict in local by typing this in your console
```
git pull --rebase
```
Then in the source control on the leftside bar of VSCode, follow the prompt to accept incoming/current change
add all change
make a commit
```
$ git push origin [yourbranch] --force-with-lease
```
12. click merge button in browser to main branch
