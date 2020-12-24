# [<img src=.github/CG.svg align="center">]()

[git][gitUrl] is one of the most used tools in the world,
<br />
but there's some routine commands you always do it
<br />
corgit'll do all this boring work,
<br />
**in init command you should type**

```sh
# init
$ git init
$ git add .
$ git commit -m "$COMMIT_MSG"
$ git branch -M $BRANCH_NAME
$ git remote add origin $REPO_URL
$ git push -u origin $BRANCH_NAME
```

you should type 6 lines, in corgit you can do it simpley

```sh
$ cgit i

# it's well ask you, commit message, branch name, repo url, and push it
```

just this

**in push command**

in original git

```sh
# push
$ git add .
$ git commit -m "$COMMIT_MSG"
```

in **cgit**

```sh
$ cgit ph

# it's well just ask you commit msg
```

and you can check more in [cgit wikis](/wiki)

> CorGit is a Cli program can automate init git, push commits and pull.

`it's for all platforms`

---

## Setup

### **`Note`**
#### if you are using `Windows` you should install git bash

#### [url](https://git-scm.com/download/win)
#### **or you can install and configure [WSL][wslUrl]** 👍

---

### Clone

first: you should clone the repo, by `gh` or `git`

```bash
# gh cli

$ gh repo clone Dev-x-Team/corgit

# git

$ git clone https://github.com/Dev-x-Team/corgit
```

### Add it to `usr/bin`

_in Linux or Mac platform, it's well add it to `usr/local/bin`_

**inside `corgit` folder**

`setup` file'll do all the work 👌

```bash
$ ./setup
```

if you want to uninstall it type

```bash
$ ./un
```

### Test it

```bash
$ cgit <command>

# for help

$ cgit -h

Usage:
    cgit -h: help (this output)
    cgit -v: corgit version
    cgit -d: show description
    cgit i: init .git and push origin
    cgit s: status
    cgit sl: show the status of git by list view
    cgit e: push an existing repo
    cgit ph: push and commit
    cgit pl: fetch and pull

Setup:
    ./setup

Uninstall:
    ./un
```

select anyone and hack

you can open issue if you have any problem

[wslUrl]: https://docs.microsoft.com/en-us/windows/wsl/
[gitUrl]: https://git-scm.com/
