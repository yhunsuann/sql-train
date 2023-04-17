SELECT * FROM phuocb.users;
use phuocb;
INSERT INTO users(first_name,last_name,phone,email,role_id)
values('buseeeeai','dsaaanh','07993323232','qrqq@gmail.com','1');
INSERT INTO roles(title,descript) 
values('customer','2');
INSERT INTO tags(title) 
values('ADMIN');

SELECT id FROM users
UNION
SELECT id FROM tags;

SELECT id FROM users
UNION ALL
SELECT id FROM tags;

SELECT id, IF((id=3),'bang 3','khong bang 3')
FROM users;

SELECT last_name,id,
	CASE
		WHEN id>3 then 'id lon hon 3'
		WHEN id<3 then 'id nho hon 3'
    else
		'id bang 3'
    END AS ketqua
FROM users;  

CALL tinhtoan(1,@result);
select @result;