(4).

#11. Show each part names total qty supply.
select p.p_name,sum(sp.qty) from p,sp where p.p_no=sp.p_no group by p.p_name;

#12. Show each suppers whose suppler number is less then 's4' give total qty supply by each suppler.
select s_no, sum(sp.qty) from sp where s_no<'s4' group by s_no;

#13. Show each suppers whose suppler status is 20 give total qty supply by each suppler.
select s.s_no,s.s_status, sum(sp.qty) from s,sp where s.s_status=20 and s.s_no = sp.s_no group by s.s_no;
