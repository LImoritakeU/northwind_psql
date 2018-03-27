#Northwind database for Postgres

快速產生postgres northwind環境

### 準備PostgreSQL

```bash
$ docker run --name test-postgres -p 5432:5432 -e POSTGRES_PASSWORD=password -d postgres
```

設定並確認Postgres 用的環境變數(在`create_db.sh`裏有)
```
export PGHOST="127.0.0.1"
export PGPORT=5432
export PGUSER=postgres
export PGPASSWORD=password
```

### 匯入northwind練習資料
```bash
$ ./create_db.sh

# (optional 預設create_db.sh也有)

$ export PGDATABASE=northwind
$ export PGUSER=northwind_user
$ export PGPASSWORD=thenorthiscoming
```

快樂使用，enjoy!

