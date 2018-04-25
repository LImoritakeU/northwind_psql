#Northwind database for Postgres

快速產生postgres northwind環境

### 準備PostgreSQL

```bash
docker run --name test-postgres -p 5432:5432 -e POSTGRES_PASSWORD=password -d postgres
```

確認有PostgreSQL Command Line 工具 (psql)
```
yum install -y postgres
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
git clone https://github.com/LImoritakeU/northwind_psql.git
cd northwind_psql
./create_db.sh


source .env
# 或手動執行
export PGDATABASE=northwind
export PGUSER=northwind_user
export PGPASSWORD=winteriscoming

```

### 執行客戶端
```
psql
```

快樂使用，enjoy!


### 匯入views

views 主要是用來練習用，建議手動建立view，如果需要直接引入，執行`create_view.sh`

```
bash create_view.sh
```
