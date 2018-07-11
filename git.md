# GIT

Обновить текущую ветку из master
```bash
git pull origin master
```

Скачать определенную ветку
```
git pull origin BRANCH
```

Отменить последний комментарий
```
git commit --amend -m "Новое название"
```

BARE
```
git init --bare PRJ.GIT
```

BARE: git init
```
cd home/prj
git init
git remote add origin PATH/PRJ.GIT
```

BARE: git clone
```
git clone PATH/PRJ.GIT
```

Standard flow
```
git add .
git status 
git commit -m "commit message"
git push 
```

BARE: git init
```bash
git push --set-upstream origin master
```

Reset
```bash
git log
git reset --hard qweqweqew
# or just
git reset --hard HEAD
git commit --amend
```

## LINKS
* https://www.atlassian.com/git/tutorials/setting-up-a-repository
* https://git-scm.com/docs/gitignore
git rebase --interactive HEAD~2
git push origin --delete migration/SEC-879-new-registry-and-kappa
