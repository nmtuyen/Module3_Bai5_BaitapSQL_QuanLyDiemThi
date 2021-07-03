use quanlyvantai;
-- 1. Tạo view KET QUA chứa kết quả thi của từng học sinh bao gồm các thông tin: SoBD, HoTen, Phai, Tuoi, Toan, Van, AnhVan, TongDiem, XepLoai, DTDuThi
select danhsach.soBD,
concat(danhsach.ho, danhsach.ten) as HoTen,
danhsach.phai,
year(now()) - year(danhsach.NTNS) as tuoi,
danhsach.toan, danhsach.van, danhsach.anhvan,
sum(danhsach.toan + danhsach.van + danhsach.anhvan) as TongDiem,
XepLoai(danhsach.toan, danhsach.van, danhsach.anhvan, chitietdt.diemUT) as xeploai
from chitietdt
join danhsach on chitietdt.DTDuThi = danhsach.DTDuThi;
