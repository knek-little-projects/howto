```bash
mongodump --host db.qwe.ru/services --db services --collection sdlc.packages --out backup/packages
mongodump --db %s --collection %s --out %s
mongodump --db %s --out %s
mongorestore --db %s --collection %s %s/%s/%s.bson
mongorestore --db %s %s/%smongo dvm --eval "db.users.find({})"
mongo dvm --eval 'db.cves.find({}).limit(10).pretty()'
mongodump --host=dvm.qwe.local --db=dvm --out backup/
mongodump --host=dvm.qwe.local --db=dvm --collection users --out backup/ 
mongorestore --host dvm.qwe.local --collection users --db dvm backup/dvm/users.bson 
```
