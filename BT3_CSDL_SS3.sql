-- 1 Phan tich (I/O)
-- Input : Can quet o bang CUSTOMERS
-- Output : Lay ra cot FullName, Email  
-- Viec su dung select * o truong hop nay la 1 sai lam boi:
-- O day co hang trieu khach hang va hang chuc cot . Neu chung ta lay het khien 
-- tac nghen va ton du lieu ton bo nho va neu co the lam lo du lieu nhay cam

-- 2 Thiet ke logic
-- O day de loc du lieu theo dung yeu cau sep va an toan ta loc voi where(4 lop):
-- 1 .City ='Hà Nội'
-- 2. LasPurchaseDate < '2025-10-01' ( ko mua hang 6 thang)
-- 3. Status ='Active'
-- 4. Email is not null

-- Cau lenh select 
 select FullName,Email
 from CUSTOMERS
 where
City ='Hà Nội'
and LasPurchaseDate < '2025-10-01'
and Status ='Active'
and Email is not null;