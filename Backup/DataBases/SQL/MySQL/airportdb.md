# To load airportdb from MySQL site

**Visit [MySQL Sample Databases](https://dev.mysql.com/doc/index-other.html)**

**Download and extract the database**

```bash
wget https://downloads.mysql.com/docs/airport-db.tar.gz
tar xvzf airport-db.tar.gz
```

**Connect to mysqlsh**

```bash
mysqlsh <user>@<IP_or_localhost>:<port>
```

**Example**

```bash
mysqlsh root@localhost:3306
```


```MySQL
util.load_dump("airport-db", {
    "threads": 16,
    "deferTableIndexes": "all",
    "ignoreVersion": True
})
```
