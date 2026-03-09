create database mydb;

use mydb;

drop table if exists integers;
create table integers (
	tinyint_field TINYINT unsigned,
    smallint_field SMALLINT unsigned,
    mediumint_field MEDIUMINT unsigned,
    int_field INT unsigned, -- Or INTEGER
    bigint_field BIGINT unsigned
    -- bigint_field SERIAL
);

insert into integers values (1, 2, 3, 4, 5);

-- insert into integers values (10, TRUE, -30, FALSE, 50);

insert into integers values (b'100', 200, 300, 0x400, 500);

-- insert into integers values (-128, -32768, -8388608, -2147483648, -9223372036854775808);

insert into integers values (127, 32767, 8388607, 2147483647, 9223372036854775807);

insert into integers values (255, 65535, 16777215, 4294967295, 18446744073709551615);


-- SERIAL is an alias for BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE