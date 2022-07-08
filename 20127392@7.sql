﻿--mssv:20127392
--topic: 6

USE QLCHUYENBAY
GO
--Q51--
SELECT DISTINCT LB.MACB
FROM LICHBAY LB
WHERE NOT EXISTS (SELECT LMB.MALOAI
				FROM LOAIMB LMB
				WHERE LMB.HANGSX='Boeing'
				EXCEPT
				SELECT LB1.MALOAI
				FROM LICHBAY LB1
				WHERE LB.MACB=LB1.MACB)
--Q52--
SELECT NV.MANV,NV.TEN
FROM NHANVIEN NV
WHERE NV.LOAINV=1 AND NOT EXISTS (SELECT LMB.MALOAI
				FROM LOAIMB LMB
				WHERE LMB.HANGSX='Airbus'
				EXCEPT 
				SELECT KN.MALOAI
				FROM KHANANG KN
				WHERE KN.MANV=NV.MANV )

--Q53--
SELECT NV.TEN
FROM NHANVIEN NV
WHERE NV.LOAINV=0 AND NOT EXISTS(SELECT LB.MACB
								FROM LICHBAY LB
								WHERE LB.MACB='100'
								EXCEPT
								SELECT PC.MACB
								FROM PHANCONG PC
								WHERE NV.MANV=PC.MANV)
--Q54--
SELECT DISTINCT LB.NGAYDI
FROM LICHBAY LB
WHERE NOT EXISTS (SELECT LMB.MALOAI
					FROM LOAIMB LMB
					WHERE LMB.HANGSX='Boeing'
					EXCEPT
					SELECT LB1.MALOAI
					FROM LICHBAY LB1
					WHERE LB1.NGAYDI=LB.NGAYDI) 
--Q55--
SELECT LMB.MALOAI
FROM LOAIMB LMB
WHERE LMB.HANGSX='Boeing' AND NOT EXISTS (SELECT LB.NGAYDI
										FROM LICHBAY LB
										EXCEPT
										SELECT LB1.NGAYDI
										FROM LICHBAY LB1
										WHERE LB1.MALOAI=LMB.MALOAI )
--Q56--
SELECT KH.MAKH,KH.TEN
FROM KHACHHANG KH
WHERE NOT EXISTS (SELECT DC.NGAYDI
				FROM DATCHO DC
				WHERE DC.NGAYDI BETWEEN '2000-10-31' AND '2000-11-1'
				EXCEPT
				SELECT DC.NGAYDI
				FROM DATCHO DC
				WHERE DC.MAKH=KH.MAKH )

--Q57--
SELECT NV.MANV,NV.TEN
FROM NHANVIEN NV
WHERE NV.LOAINV=1 AND NOT EXISTS (SELECT LMB.MALOAI
								FROM LOAIMB LMB
								WHERE LMB.HANGSX='Airbus'
								EXCEPT (SELECT LMB.MALOAI
										FROM LOAIMB LMB
										WHERE LMB.HANGSX='Airbus'
										EXCEPT
										SELECT KN.MALOAI
										FROM KHANANG KN
										WHERE KN.MANV=NV.MANV))

--Q58--
SELECT CB.SBDI
FROM CHUYENBAY CB
WHERE NOT EXISTS (SELECT LMB.MALOAI
				FROM LOAIMB LMB
				WHERE LMB.HANGSX='Boeing'
				EXCEPT
				SELECT LB.MALOAI
				FROM LICHBAY LB
				WHERE LB.MACB=CB.MACB)
