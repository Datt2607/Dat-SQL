create database NVDB 
on
(	name = 'nvdb_data',
	filename = 'C:\data\nvdb_data.mdf',
	size = 10mb,
	maxsize = 100mb,
	filegrowth = 5mb)
log on
(	name = 'nvdb_log',
	filename = 'C:\data\nvdb_log.ldf',
	size = 5mb,
	maxsize = 50mb,
	filegrowth = 5mb)