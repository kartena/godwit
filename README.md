Godwit
======

Godwit aims to be a super duper slim and minimalistic tool to migrate databases.

Currently, it support [PostgreSQL](http://www.postgresql.org/),
using [psycopg2](http://initd.org/psycopg/). It should be a very small job
to get it to work with another database.

Installing
----------

You can install Godwit using pip:

```shell
pip install godwit
```

To install from source, Godwit uses distutils, run this:

```shell
python setup.py install
```

Usage
-----

Migration is done through a number of SQL scripts. These scripts should be
put into their own directory (see the ```example``` directory). The scripts
must use the extension ```.sql```. The name of the file (without the .sql
extension) is called the "version" of this script. Versions are ordered in
lexicographic order.

Migration can then be run from the command line:

```shell
python -m Godwit [host] [database] [username] [password] [port] [script-dir] --version [version]
```

This will connect to the provided ```host``` and ```database```, and migrate
the database to the provided ```version``` using the scripts in ```script-dir```.

Docker
------

Build image

```shell
docker build
```

```shell
docker run --rm -it --net=host -v migrations/:/data -v logs:/logs godwit [host] [database] [user] [password] [port] [script-dir] --version [version]
```
