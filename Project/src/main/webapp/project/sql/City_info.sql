create table plancityinfo(
	cityinfoname varchar2(45) primary key,
	citynameimg varchar2(20) not null,
	cityinfoS varchar2(100) not null,
	citypeakseason varchar2(50) not null,
	citytwodays1 varchar2(100) not null,
	citytwodays2 varchar2(100) not null,
	citythreedays1 varchar2(100) not null,
	citythreedays2 varchar2(100) not null,
	citythreedays3 varchar2(100) not null,
	cityroute1 varchar2(100) not null,
	cityroute2 varchar2(100) not null,
	cityroute3 varchar2(100) not null
);
drop table plancityinfo;
insert into plancityinfo Values('', '', '', '', '', '', '', '', '', '', '', '');
insert into plancityinfo Values(�����̸�, [�̹���, ����], ���� ����, ������, 1��1, 1��2, 2��1, 2��2, 2��3 ,��õ ��Ʈ 1��, 2��, 3��)
insert into plancityinfo Values('���� Seoul', 'Seoul', '���ſ� ���簡 �����ϸ� ����', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '���� �� ��õ', '���� �� ��õ', '���� �� ����');
insert into plancityinfo Values('�λ� Busan', 'Busan', '�ѱ� ��2�� ���� �λ걤����', '365�� 1�� ����', 'D1.���ȸ� �ؼ����� �� �ؿ�� �ؼ�����', 'D2.�򿩿� ��ȭ���� �� ������', 'D1.���ȸ� �ؼ����� �� �ؿ�� �ؼ�����', 'D2.�򿩿� ��ȭ���� �� ������', 'D3.�λ� �Ե�����', '�λ� �� ��õ', '���� �� ��õ', '���� �� ����');
insert into plancityinfo Values('�︪�� Ulleung', 'Ulleung', '���鸸 �� �� �ڿ��� ����� �︪��', '365�� 1�� ����', 'D1.���ȸ� �ؼ����� �� �ؿ�� �ؼ�����', 'D2.�򿩿� ��ȭ���� �� ������', 'D1.���ȸ� �ؼ����� �� �ؿ�� �ؼ�����', 'D2.�򿩿� ��ȭ���� �� ������', 'D3.�λ� �Ե�����', '�︪�� �� ��õ', '�︪�� �� ��õ', '�︪�� �� ����');
insert into plancityinfo Values('���ֵ� Jeju', 'Jeju', '�ѱ� �α� ������ no.1', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '���ֵ� �� ��õ', '���ֵ� �� ����', '���ֵ� �� ����');
insert into plancityinfo Values('��õ Incheon', 'Incheon', '��¦ ���� �ٴ����� �ŷ����� ��õ������', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '��õ �� ����', '��õ �� ��õ', '��õ �� ����');
insert into plancityinfo Values('���� Tokyo', 'Tokyo', '��¦ ���� �ٴ����� �ŷ����� ��õ������', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '��õ �� ����', '��õ �� ��õ', '��õ �� ����');
insert into plancityinfo Values('����ī Osaka', 'Osaka', '��¦ ���� �ٴ����� �ŷ����� ��õ������', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '��õ �� ����', '��õ �� ��õ', '��õ �� ����');
insert into plancityinfo Values('���� Kyoto', 'Kyoto', '��¦ ���� �ٴ����� �ŷ����� ��õ������', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '��õ �� ����', '��õ �� ��õ', '��õ �� ����');
insert into plancityinfo Values('������ī Hukuoka', 'Hukuoka', '��¦ ���� �ٴ����� �ŷ����� ��õ������', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '��õ �� ����', '��õ �� ��õ', '��õ �� ����');
insert into plancityinfo Values('������ Sapporo', 'Sapporo', '��¦ ���� �ٴ����� �ŷ����� ��õ������', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '��õ �� ����', '��õ �� ��õ', '��õ �� ����');
insert into plancityinfo Values('������ Nagoya', 'Nagoya', '��¦ ���� �ٴ����� �ŷ����� ��õ������', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '��õ �� ����', '��õ �� ��õ', '��õ �� ����');
insert into plancityinfo Values('������ Shanghai', 'Shanghai', '��¦ ���� �ٴ����� �ŷ����� ��õ������', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '��õ �� ����', '��õ �� ��õ', '��õ �� ����');
insert into plancityinfo Values('����¡ Beijing', 'Beijing', '��¦ ���� �ٴ����� �ŷ����� ��õ������', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '��õ �� ����', '��õ �� ��õ', '��õ �� ����');
insert into plancityinfo Values('������ Guangzhou', 'Guangzhou', '��¦ ���� �ٴ����� �ŷ����� ��õ������', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '��õ �� ����', '��õ �� ��õ', '��õ �� ����');
insert into plancityinfo Values('Ī�ٿ� Qingdao', 'Qingdao', '��¦ ���� �ٴ����� �ŷ����� ��õ������', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '��õ �� ����', '��õ �� ��õ', '��õ �� ����');
insert into plancityinfo Values('�Ͼ�� Harbin', 'Harbin', '���ſ� ���簡 �����ϸ� ����', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '���� �� ��õ', '���� �� ��õ', '���� �� ����');
insert into plancityinfo Values('Ÿ������ Taipei', 'Taipei', '���ſ� ���簡 �����ϸ� ����', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '���� �� ��õ', '���� �� ��õ', '���� �� ����');
insert into plancityinfo Values('Ÿ���� Taichung', 'Taichung', '���ſ� ���簡 �����ϸ� ����', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '���� �� ��õ', '���� �� ��õ', '���� �� ����');
insert into plancityinfo Values('Ÿ�̳� Tainan', 'Tainan', '���ſ� ���簡 �����ϸ� ����', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '���� �� ��õ', '���� �� ��õ', '���� �� ����');
insert into plancityinfo Values('������ Kaohsiung', 'Kaohsiung', '���ſ� ���簡 �����ϸ� ����', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '���� �� ��õ', '���� �� ��õ', '���� �� ����');
insert into plancityinfo Values('ȫ�� HongKong', 'HongKong', '���ſ� ���簡 �����ϸ� ����', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '���� �� ��õ', '���� �� ��õ', '���� �� ����');
insert into plancityinfo Values('��ī�� Macau', 'Macau', '���ſ� ���簡 �����ϸ� ����', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '���� �� ��õ', '���� �� ��õ', '���� �� ����');
insert into plancityinfo Values('�Ͽ��� Hawaii', 'Hawaii', '���ſ� ���簡 �����ϸ� ����', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '���� �� ��õ', '���� �� ��õ', '���� �� ����');
insert into plancityinfo Values('�� Guam', 'Guam', '���ſ� ���簡 �����ϸ� ����', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '���� �� ��õ', '���� �� ��õ', '���� �� ����');
insert into plancityinfo Values('������ Saipan', 'Saipan', '���ſ� ���簡 �����ϸ� ����', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '���� �� ��õ', '���� �� ��õ', '���� �� ����');
insert into plancityinfo Values('�ν��������� Losangeles', 'Losangeles', '���ſ� ���簡 �����ϸ� ����', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '���� �� ��õ', '���� �� ��õ', '���� �� ����');
insert into plancityinfo Values('���� Newyork', 'Newyork', '���ſ� ���簡 �����ϸ� ����', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '���� �� ��õ', '���� �� ��õ', '���� �� ����');
insert into plancityinfo Values('�������ý��� Sanfrancisco', 'Sanfrancisco', '���ſ� ���簡 �����ϸ� ����', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '���� �� ��õ', '���� �� ��õ', '���� �� ����');
insert into plancityinfo Values('�󽺺��̰Ž� LasVegas', 'LasVegas', '���ſ� ���簡 �����ϸ� ����', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '���� �� ��õ', '���� �� ��õ', '���� �� ����');
insert into plancityinfo Values('��ī�� Chicago', 'Chicago', '���ſ� ���簡 �����ϸ� ����', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '���� �� ��õ', '���� �� ��õ', '���� �� ����');
insert into plancityinfo Values('�þ�Ʋ Seattle', 'Seattle', '���ſ� ���簡 �����ϸ� ����', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '���� �� ��õ', '���� �� ��õ', '���� �� ����');
insert into plancityinfo Values('�����̰� SanDiego', 'SanDiego', '���ſ� ���簡 �����ϸ� ����', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '���� �� ��õ', '���� �� ��õ', '���� �� ����');
insert into plancityinfo Values('���̾ư��� ���� ��Ƽ NiagaraFalls', 'NiagaraFalls', '���ſ� ���簡 �����ϸ� ����', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '���� �� ��õ', '���� �� ��õ', '���� �� ����');
insert into plancityinfo Values('���丮�� Victoria', 'Victoria', '���ſ� ���簡 �����ϸ� ����', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '���� �� ��õ', '���� �� ��õ', '���� �� ����');
insert into plancityinfo Values('���� QuebecCity', 'QuebecCity', '���ſ� ���簡 �����ϸ� ����', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '���� �� ��õ', '���� �� ��õ', '���� �� ����');
insert into plancityinfo Values('��Ÿ�� Ottawa', 'Ottawa', '���ſ� ���簡 �����ϸ� ����', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '���� �� ��õ', '���� �� ��õ', '���� �� ����');
insert into plancityinfo Values('������ Vancouver', 'Vancouver', '���ſ� ���簡 �����ϸ� ����', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '���� �� ��õ', '���� �� ��õ', '���� �� ����');
insert into plancityinfo Values('����� Toronto', 'Toronto', '���ſ� ���簡 �����ϸ� ����', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '���� �� ��õ', '���� �� ��õ', '���� �� ����');
insert into plancityinfo Values('��Ʈ���� Montreal', 'Montreal', '���ſ� ���簡 �����ϸ� ����', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '���� �� ��õ', '���� �� ��õ', '���� �� ����');
insert into plancityinfo Values('���� London', 'London', '���ſ� ���簡 �����ϸ� ����', '365�� 1�� ����', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D1.���� �ѿ����� �� ���ǵ� �Ѱ�����', 'D2.������� �� ������', 'D3.�Ե�����', '���� �� ��õ', '���� �� ��õ', '���� �� ����');
insert into plancityinfo Values('�ĸ� Paris', 'Paris', '������ ����޴� �������� no.1', '4�� 5�� 9�� 10��', 'D1.����ž �ֺ� �ó� �� ������Ʈ', 'D2.�������� �� ��긣 �� �ĸ� �ó�', 'D1.�������� �� ��긣 �� �ĸ� �ó�', 'D2.�������� ����', 'D3.�����̼� ����', '1st. �ĸ� �� ������', '2nd. �ĸ� �� �긮��', '3rd. �ĸ� �� ����');
insert into plancityinfo Values('�Ͻ� Nice', 'Nice', '������ ����޴� �������� no.1', '4�� 5�� 9�� 10��', 'D1.����ž �ֺ� �ó� �� ������Ʈ', 'D2.�������� �� ��긣 �� �ĸ� �ó�', 'D1.�������� �� ��긣 �� �ĸ� �ó�', 'D2.�������� ����', 'D3.�����̼� ����', '1st. �ĸ� �� ������', '2nd. �ĸ� �� �긮��', '3rd. �ĸ� �� ����');
insert into plancityinfo Values('�ٸ����γ� Barcelona', 'Barcelona', '������ ����޴� �������� no.1', '4�� 5�� 9�� 10��', 'D1.����ž �ֺ� �ó� �� ������Ʈ', 'D2.�������� �� ��긣 �� �ĸ� �ó�', 'D1.�������� �� ��긣 �� �ĸ� �ó�', 'D2.�������� ����', 'D3.�����̼� ����', '1st. �ĸ� �� ������', '2nd. �ĸ� �� �긮��', '3rd. �ĸ� �� ����');
insert into plancityinfo Values('���帮�� Madrid', 'Madrid', '������ ����޴� �������� no.1', '4�� 5�� 9�� 10��', 'D1.����ž �ֺ� �ó� �� ������Ʈ', 'D2.�������� �� ��긣 �� �ĸ� �ó�', 'D1.�������� �� ��긣 �� �ĸ� �ó�', 'D2.�������� ����', 'D3.�����̼� ����', '1st. �ĸ� �� ������', '2nd. �ĸ� �� �긮��', '3rd. �ĸ� �� ����');
insert into plancityinfo Values('�θ� Roma', 'Roma', '������ ����޴� �������� no.1', '4�� 5�� 9�� 10��', 'D1.����ž �ֺ� �ó� �� ������Ʈ', 'D2.�������� �� ��긣 �� �ĸ� �ó�', 'D1.�������� �� ��긣 �� �ĸ� �ó�', 'D2.�������� ����', 'D3.�����̼� ����', '1st. �ĸ� �� ������', '2nd. �ĸ� �� �긮��', '3rd. �ĸ� �� ����');
insert into plancityinfo Values('������ Napoli', 'Napoli', '������ ����޴� �������� no.1', '4�� 5�� 9�� 10��', 'D1.����ž �ֺ� �ó� �� ������Ʈ', 'D2.�������� �� ��긣 �� �ĸ� �ó�', 'D1.�������� �� ��긣 �� �ĸ� �ó�', 'D2.�������� ����', 'D3.�����̼� ����', '1st. �ĸ� �� ������', '2nd. �ĸ� �� �긮��', '3rd. �ĸ� �� ����');
insert into plancityinfo Values('���Ͻ� Venice', 'Venice', '������ ����޴� �������� no.1', '4�� 5�� 9�� 10��', 'D1.����ž �ֺ� �ó� �� ������Ʈ', 'D2.�������� �� ��긣 �� �ĸ� �ó�', 'D1.�������� �� ��긣 �� �ĸ� �ó�', 'D2.�������� ����', 'D3.�����̼� ����', '1st. �ĸ� �� ������', '2nd. �ĸ� �� �긮��', '3rd. �ĸ� �� ����');
insert into plancityinfo Values('�Ƿ�ü Firenze', 'Firenze', '������ ����޴� �������� no.1', '4�� 5�� 9�� 10��', 'D1.����ž �ֺ� �ó� �� ������Ʈ', 'D2.�������� �� ��긣 �� �ĸ� �ó�', 'D1.�������� �� ��긣 �� �ĸ� �ó�', 'D2.�������� ����', 'D3.�����̼� ����', '1st. �ĸ� �� ������', '2nd. �ĸ� �� �긮��', '3rd. �ĸ� �� ����');
insert into plancityinfo Values('�ж�� Milano', 'Milano', '������ ����޴� �������� no.1', '4�� 5�� 9�� 10��', 'D1.����ž �ֺ� �ó� �� ������Ʈ', 'D2.�������� �� ��긣 �� �ĸ� �ó�', 'D1.�������� �� ��긣 �� �ĸ� �ó�', 'D2.�������� ����', 'D3.�����̼� ����', '1st. �ĸ� �� ������', '2nd. �ĸ� �� �긮��', '3rd. �ĸ� �� ����');
insert into plancityinfo Values('������ Berlin', 'Berlin', '������ ����޴� �������� no.1', '4�� 5�� 9�� 10��', 'D1.����ž �ֺ� �ó� �� ������Ʈ', 'D2.�������� �� ��긣 �� �ĸ� �ó�', 'D1.�������� �� ��긣 �� �ĸ� �ó�', 'D2.�������� ����', 'D3.�����̼� ����', '1st. �ĸ� �� ������', '2nd. �ĸ� �� �긮��', '3rd. �ĸ� �� ����');
insert into plancityinfo Values('����ũǪ��Ʈ Frankfurt', 'Frankfurt', '������ ����޴� �������� no.1', '4�� 5�� 9�� 10��', 'D1.����ž �ֺ� �ó� �� ������Ʈ', 'D2.�������� �� ��긣 �� �ĸ� �ó�', 'D1.�������� �� ��긣 �� �ĸ� �ó�', 'D2.�������� ����', 'D3.�����̼� ����', '1st. �ĸ� �� ������', '2nd. �ĸ� �� �긮��', '3rd. �ĸ� �� ����');
insert into plancityinfo Values('�Ժθ�ũ Hamburc', 'Hamburc', '������ ����޴� �������� no.1', '4�� 5�� 9�� 10��', 'D1.����ž �ֺ� �ó� �� ������Ʈ', 'D2.�������� �� ��긣 �� �ĸ� �ó�', 'D1.�������� �� ��긣 �� �ĸ� �ó�', 'D2.�������� ����', 'D3.�����̼� ����', '1st. �ĸ� �� ������', '2nd. �ĸ� �� �긮��', '3rd. �ĸ� �� ����');
insert into plancityinfo Values('���� Munich', 'Munich', '������ ����޴� �������� no.1', '4�� 5�� 9�� 10��', 'D1.����ž �ֺ� �ó� �� ������Ʈ', 'D2.�������� �� ��긣 �� �ĸ� �ó�', 'D1.�������� �� ��긣 �� �ĸ� �ó�', 'D2.�������� ����', 'D3.�����̼� ����', '1st. �ĸ� �� ������', '2nd. �ĸ� �� �긮��', '3rd. �ĸ� �� ����');
insert into plancityinfo Values('�븮�� Zurich', 'Zurich', '������ ����޴� �������� no.1', '4�� 5�� 9�� 10��', 'D1.����ž �ֺ� �ó� �� ������Ʈ', 'D2.�������� �� ��긣 �� �ĸ� �ó�', 'D1.�������� �� ��긣 �� �ĸ� �ó�', 'D2.�������� ����', 'D3.�����̼� ����', '1st. �ĸ� �� ������', '2nd. �ĸ� �� �긮��', '3rd. �ĸ� �� ����');
insert into plancityinfo Values('���� Bern', 'Bern', '������ ����޴� �������� no.1', '4�� 5�� 9�� 10��', 'D1.����ž �ֺ� �ó� �� ������Ʈ', 'D2.�������� �� ��긣 �� �ĸ� �ó�', 'D1.�������� �� ��긣 �� �ĸ� �ó�', 'D2.�������� ����', 'D3.�����̼� ����', '1st. �ĸ� �� ������', '2nd. �ĸ� �� �긮��', '3rd. �ĸ� �� ����');
insert into plancityinfo Values('���Ͷ��� Interlaken', 'Interlaken', '������ ����޴� �������� no.1', '4�� 5�� 9�� 10��', 'D1.����ž �ֺ� �ó� �� ������Ʈ', 'D2.�������� �� ��긣 �� �ĸ� �ó�', 'D1.�������� �� ��긣 �� �ĸ� �ó�', 'D2.�������� ����', 'D3.�����̼� ����', '1st. �ĸ� �� ������', '2nd. �ĸ� �� �긮��', '3rd. �ĸ� �� ����');
insert into plancityinfo Values('���׹� Geneva', 'Geneva', '������ ����޴� �������� no.1', '4�� 5�� 9�� 10��', 'D1.����ž �ֺ� �ó� �� ������Ʈ', 'D2.�������� �� ��긣 �� �ĸ� �ó�', 'D1.�������� �� ��긣 �� �ĸ� �ó�', 'D2.�������� ����', 'D3.�����̼� ����', '1st. �ĸ� �� ������', '2nd. �ĸ� �� �긮��', '3rd. �ĸ� �� ����');
insert into plancityinfo Values('���� Basel', 'Basel', '������ ����޴� �������� no.1', '4�� 5�� 9�� 10��', 'D1.����ž �ֺ� �ó� �� ������Ʈ', 'D2.�������� �� ��긣 �� �ĸ� �ó�', 'D1.�������� �� ��긣 �� �ĸ� �ó�', 'D2.�������� ����', 'D3.�����̼� ����', '1st. �ĸ� �� ������', '2nd. �ĸ� �� �긮��', '3rd. �ĸ� �� ����');