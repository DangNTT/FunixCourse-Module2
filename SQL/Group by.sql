use QuanLyNhanSu;
select top 5 count(MaNv), QueQuan from NHANVIEN
group by QueQuan
having count(MaNv) >2
order by QueQuan desc;

select DanToc, count(MaNv) from NHANVIEN
group by DanToc
order by count(MaNv) desc;