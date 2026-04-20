-- Tao database 
create database driver_management;
use driver_management;

-- Tao bang
create table drivers(
	driver_id int primary key,
    driver_name varchar(30) not null,
	`status` varchar(20) default 'AVAILABLE',
    trust_score int,
    distance_km float
);

-- Them du lieu
INSERT INTO drivers (driver_id, driver_name, distance_km, trust_score, status) VALUES 
(1, 'Nguyen Van A', 1.2, 85, 'AVAILABLE'),
(2, 'Tran Thi B', 0.5, 75, 'AVAILABLE'),
(3, 'Le Van C', 0.8, 90, 'BUSY'),
(4, 'Pham Minh D', 5.0, 98, 'AVAILABLE'),
(5, 'Hoang An E', 1.2, 92, 'AVAILABLE'),
(6, 'Doan Van F', 2.0, 0, 'AVAILABLE');

-- Thiet ke luong
-- Du lieu dau vao
-- Bang drivers :
-- status
-- trust_score
-- distance_km
-- Neu ma admin nhập nhầm min_trust_score là số âm . Thi se lam hong hoan toan muc tieu loc ra san pham chat luong vi no lay ca diem thap
-- Logic (if/else)
-- if(min_trust_score <0){
-- "Thong bao loi cho admin : Diem ko dc am"
-- }else{logic tiep neu thoa man}

-- Code SQL
select *from drivers
where 	
	`status` = 'AVAILABLE'
    and trust_score >= 80 
order by 
	distance_km asc,
    trust_score desc;
