# To load airportdb from MySQL site

## Table of Content
- [Author](#author)
- []()

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

**Inside mysqlsh, switch to python by (\py) and execute:**

```MySQL
util.load_dump("airport-db", {
    "threads": 16,
    "deferTableIndexes": "all",
    "ignoreVersion": True
})
```

**If you get any errors:**

- Check if `LOCAL` for `LOAD DATA LOCAL INFILE` is enabled on your machine:

**Inside your MySQL**

```
SHOW VARIABLES LIKE 'local_infile';

+---------------+-------+
| Variable_name | Value |
+---------------+-------+
| local_infile  | OFF   |
+---------------+-------+
```

**If it's off, you need to enabled it by:**

#### STEPS

1. Using `my.cnf`

**Open:**

```bash
vi `/etc/mysql/my.cnf`
```

**Add**

```
[mysqld]
local-infile=1
```

**Restart MySQL and check again 'local_infile':**

```
SHOW VARIABLES LIKE 'local_infile';

+---------------+-------+
| Variable_name | Value |
+---------------+-------+
| local_infile  | ON    |
+---------------+-------+
```

> **After setup you can then edit the 'my.cnf' file and remove the line we just added**
___

2. Inside MySQL shell

- Check if `LOCAL` for `LOAD DATA LOCAL INFILE` is enabled on your machine:

```
SHOW VARIABLES LIKE 'local_infile';

+---------------+-------+
| Variable_name | Value |
+---------------+-------+
| local_infile  | OFF   |
+---------------+-------+
```

**If it's off, you need to enabled it by:**

```
SET GLOBAL local_infile=ON;

SHOW VARIABLES LIKE 'local_infile';

+---------------+-------+
| Variable_name | Value |
+---------------+-------+
| local_infile  | ON    |
+---------------+-------+
```

> **Tip: This will work for the menagerie database as well**

## Installing MySQL Shell on Linux

**Visit [MySQL](https://dev.mysql.com/doc/mysql-shell/8.0/en/mysql-shell-install-linux-quick.html)**

```bash
sudo apt-get update
sudo apt-get install mysql-shell
```

## Author

**Tafara Nyamhunga  - [Github](https://github.com/tafara-n) / [Twitter](https://twitter.com/tafaranyamhunga)**
