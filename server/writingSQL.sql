
CREATE TABLE SUBS (
	SUBJECT     VARCHAR(50)  NOT NULL, -- �۰�
 	PRIMARY KEY (SUBJECT)
);



CREATE TABLE CONTENTS (
	NO         INTEGER      NOT NULL	AUTO_INCREMENT, 
	CONTENT    TEXT		 NOT NULL,
	CREATEDDATE DATETIME  NOT NULL	DEFAULT	CURRENT_TIMESTAMP,
	SUBJECT     VARCHAR(100)  NOT NULL, 
	WRITER	    VARCHAR(50)	NOT NULL DEFAULT '������',
	ISEXTRACT   VARCHAR(2) NOT NULL DEFAULT 'N',  
 	PRIMARY KEY (NO),
	FOREIGN KEY (SUBJECT) REFERENCES SUBS (SUBJECT)
);

INSERT INTO SUBS VALUES ('�ֻ���');
INSERT INTO SUBS VALUES ('����');
INSERT INTO SUBS VALUES ('��ĥ ��');
INSERT INTO SUBS VALUES ('Ʋ');
INSERT INTO SUBS VALUES ('����');
INSERT INTO SUBS VALUES ('����');
INSERT INTO SUBS VALUES ('�ܸ�');
INSERT INTO SUBS VALUES ('����');
INSERT INTO SUBS VALUES ('��ȣ��');
INSERT INTO SUBS VALUES ('ģ��');
INSERT INTO SUBS VALUES ('��ø');
INSERT INTO SUBS VALUES ('����');
INSERT INTO SUBS VALUES ('�� ��');
INSERT INTO SUBS VALUES ('�ٷ���');
INSERT INTO SUBS VALUES ('����');




INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`,`ISEXTRACT`) VALUES ('���־ɾ� �ֻ����� ������ ��, �츮�� �� ���� ���õ��� �ϳ��� ��������� �����߳�. ������ �ճ����� ��Ƴ����� �̱��� ����, ���� ������ ȣ�ڻ��� ���õ� �ӿ��� �츮�� ���� ���� ���� ã�� ��������ó�� ��������', '�ֻ���', '������ <������ �θ�����> ��', 'Y');


INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('�ֻ����� ��������.
������ ����ŭ ���� �����δ�.

�� ���ε�,
�λ��̶�� �ֻ����� ����,
���� ���õ� �λ��̶�� �ֻ����� ����

��������.

���ε�, ��������.', '�ֻ���', '��ī��');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('�ֻ��� �� �� ������
� ���ڰ� ������ �𸣴� ��
�츮�� �λ�

������ �� ���� ������ �� ��ſ� �� �λ��̴�.', '�ֻ���', '�޹����䳢');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('����� Ÿ�̹��̶�

�ֻ����� ���� ���� ������ �� ���Ƶ�

�ʶ� �ڸ��� ���� ���ڶ�� ���� ������ ����

�Ѿ��� �񲸰��⸸ �ϴ���', '�ֻ���', '�ö��Ÿ����');



INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`,`ISEXTRACT`) VALUES ('������ ���� ��ġ ��������ó�� �����ϴ�, ��Ư�ϰ� ���� ������ �����ع��� ���� ��Ŀ��� ���ο� ���� �����Ǳ� �����ߴ�. �� �ȿ��� ���� ���� ����, �ƴ� ������ ����� ���� ������ �Ǿ��.', '����', '�츣�� �켼 <���̾�> ��', 'Y');


INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('����� ����

�״�� ���� �ָ��� ����

�׸��Ͽ� ���� Ư���� �� �ڸ��� �Ѻ���.
', '����', '����');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('���𰡸� ������ ����
���� �ְ� �ϰ� ������ ���߰� �ϴ� 
���� ���� ��������.', '����', '�������˾ƹ���������');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('�ູ��
�������� ���ƿ�

�ູ��
������ ����� �ƴϰ�

����
������ �� ����̿���

#�ູ���� ������ ����', '����', '�Ƶ鷯����');




INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`,`ISEXTRACT`) VALUES ('�κ��� ������ ��ĥ ��,
���� ���� �κ��� ���� �׸����ϴ� �̹���
������ �ñ��� �Ʒ�����
���� �� �Բ� ������ ���� ���ö���,
������ �ڱ� Ȧ�� ������ ���� ���޾Ҵ�.', '��ĥ ��', 'Ī���� <�״븦 ����, �� ���� �Ƹ����> ��', 'Y');


INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('���� ���¿���
���� ǥ������

�װ��� ���� ��ĥ �Ķ�� �� �츮 �� �� �˾Ҵ�.

���� �ͼ��� �Ϳ��� ��Ե� ����԰�
�װ��� ���� ���Ƿν� ���̴�ġ�� �ʿ� ���� �ֺ��� ��ȭ, �ü�, ��� ���� ����.

�츮�� ���� ����� �ϰ� �ִ�.', '��ĥ ��', '�����');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('��� ���� ��ĥ ��
��Ȯ�� �˷�������..
������ �����
��ٸ��� �����
������ �����ٵ�...
�׷��� �Ͽ�����
����� ��ٸ��ϴ�
', '��ĥ ��', '������ �ҿ�');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('��ĥ �� �ʸ� �����ٴ� ��
���� ������ ��', '��ĥ ��', '���� �� �����');




INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`,`ISEXTRACT`) VALUES ('����� �� �� �� ��ģ ���� ù �ٿ���
�����ȴ� ���� �� �̻� �쿬�� ����� �̾߱�� ����
�� ���� ���������� ������ ����������
������ ������ �����Ѵ�
������ �׻� ����� �˵��� �ִ�.', '����', '������, <����> ��', 'Y');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('����...
������ å����ۿ� ���������� �ʴ´�
�ʵ��б��� 6�Ⱓ �� ������ ���� �ʵ��б� �� �־��� �ϵ��� ���� ��������
���� ����� ��û���� ����ߴ� ��
���� �� �����ͼ� �޽Ľǿ� ���� ��
���������� ����� ���� �� �ʹ� �ű��ϴ�', '����', 'S T A Y');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('������ �� ��
���濡 �ִ� å�� �������� �� �츮�� �߾��� �������� �� ���Ƽ�
��¦ �������� �� ����.', '����', 'Classical');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('���� ���� �߿��� ª���� �Ҽ� �ִ� �͵� ���� ����
�ø� �� ���� ��ŭ �÷�����', '����', '��ƾ�');



INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`,`ISEXTRACT`) VALUES ('����â���� ���� �޻���
å������å���� �ٷ��� �Ѵ�
�޻� �Ʒ� �ٷ��� �ʴ� å�� ����
������ å�̰ų� ���� �������� �ʴ� å�̰ų� �޻��� ������� �ʰ� �װ͵��� ���ݾ� �Ѿư���', '�ٷ���', '����ȯ <å�� ��ο����� �ʴ´�> ��', 'Y');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('������ �ٷ���
���ǹٷ�', '�ٷ���', '��, �׸��� ��');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('���� �ʿ� �ٷ��� �شٰ� �� ��
�׷���� �� �� �׷���
������ �׳� ����� �ߴµ�
�ᱹ �� ���� �ٷ��� ���� �ʾ��ݾ�
�Ƴ��� �� �Ƴ�', '�ٷ���', '���ؾ�');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('�������
������', '�ٷ���', '��������');




INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`,`ISEXTRACT`) VALUES ('�ΰ��� ���� ������ �� ���� ��
���� ���� ã�´�
��������
������ Ǯ���� ���� ��´�
���� ������� �׵��� ��Ҹ��� �� �� ���
���� �׵��� ������ ������ �� ����
�̽� �ӿ� ���� �ް�
�׵��� ��ȭ��,
�̽� �ӿ� ���� �ް�
�׵��� ��ȭ��,
�̽� �ӿ� �ߴ� �ؿ�
�׵��� ���縦,', '�� ��', '���� <�� �ӿ� ����> ��', 'Y');


INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('
�� �ӿ��� ���� ã��
���� ���� �� �𸣰ھ�

������ �� ���߿��� ���� ã���� �����
�������� ���� ����� ����', '�� ��', '��ƾ�');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('���Ҵ�.
�� ��� �����ٵ� Ǫ�� �װ�����
ǥ������ ���� ��ŭ �Ѿ��� Ǫ��
�ʸ�', '�� ��', 'black.R');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('���ӿ��� �ѹ�', '�� ��', '����');


INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`,`ISEXTRACT`) VALUES ('�츮�� �и� ������ ���迡 ��� ������ ������
����ۿ� ���� ���Ѵ�. ������ �͹ۿ� ����
���ϴ� �ɷ����� ������ ������ �����Ѵ�.
�̰��� ��¼�� �츮�� �λ��� ���� ȥ��������
����� ��Ұ� �ƴұ�?', '����', '������ <����,������ ���>��', 'Y');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('0.9999999...
������ �� ������ �ᱹ �����ϴ���', '����', '�̸�');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('�λ��� �������� �ʱ⿡
�ǹ̿� ��ġ�� �ְ�
������ �Ƹ����.', '����', 'hippo.soo');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('������ ����,
����� ����', '����', '52130805');



INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`,`ISEXTRACT`) VALUES ('���� ��ø�� ���,���,����� ��ȭ��,�ϴ÷�
���ư��� �����ڵ��� ��ȥ�� ���� �������
���� �β�������.', '��ø', '�˷� �� ���� <���׿��� ��������> ��', 'Y');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('������� �����ʾ�
�������뿡�� �ѹ�, ������', '��ø', '��');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('��ø��
����
������ ��ø
�������� ��������� �ְŴ�', '��ø', 'SKEJ');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('���� ���� �͵鸸 �������
����
����������.', '��ø', '���� ��');



INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`,`ISEXTRACT`) VALUES ('�ΰ��� �ᱹ Ȧ�� ���� �ۿ� ���� ����������,
ģ���� �Ѿ��� �ڸ� ������ �����.', 'ģ��', '����,����ȭ < ��� �ִ� ���� �� �ູ�϶�> ��', 'Y');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('�ʸ� ���ؼ��� �ƴ�
�� ������ ���ɽ����� ��������', 'ģ��', 'hippo.soo');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('ģ���� ��Ǯ�� ������
�� ��ɶ����� ��õ���� ���� ��
�� ���� ������ ���ϴٴ� ���� ������.', 'ģ��', '52130805');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('�翬�ϴٰ� �����ߴ� ����
�����ϰ� ������ ��', 'ģ��', 'O_5o_5
');


INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`,`ISEXTRACT`) VALUES ('���� ��ȣ�� �տ��� �Ķ� ���� ������
��ٸ�����, �γ��� ���⸦ ������ �Ķ�
��ȣ���� ���� ���� ��ٷ��� �Ѵ�. ���θ���
�Ķ� ��ȣ���� ��ó�� ������ �������� �𸥴�.
������ ����Ͽ� �غ��Ͼ� �Ѵ�. ������
�ƹ����Գ� ã�ƿ��� �� �ƴϴ�. ��������
�������� ���� ������� ã�ƿ´�. "���� ��ŭ
����������"�� �����ֵ���, ö�������Դ�
������ Ưȿ���� �Ǵ� ���̴�, ������ ã�ƿ���
���� �̻��� ���� �ƴϴ�.', '��ȣ��', 'ȫ�̼� <��ȣ��> ��', 'Y');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('������ ������,
������ �����ϰ�
������ õõ��
������ ������', '��ȣ��', '�κ񼭺�');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('�׷�
���� ��ٸ���
����ȣ�� ������', '��ȣ��', '�ְ�');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('�� ���� �γ���', '��ȣ��', '������');



INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`,`ISEXTRACT`) VALUES ('�ٽ� ���뿡 ���� ���⸦ �Ѵ�. ������ �ް�
�־��� ��縦 �Ѵ�. �ڼ��� �ް� ����
��������. �ϴ� ���� ����ٰ� �ٽ� ����
�ǵ��ƿ´�. ������ ���ƿ� ���� ��Ȯ�ϰԴ�
������ �Ȱ��� ��Ұ� �ƴϴ�.', '����', '����ī�� �Ϸ�Ű <����̺� ���� ī> ��', 'Y');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('���� �� �����ߴ� �ʸ� ����ϱ⿡
ħ���ϰ� �Ǵ� ������ �𸥴�.', '����', '��´ٳ��');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('���� ���� ����Ʒ� ���ִ�
����
���� ȯ�ϰ� ��Ӵ�.', '����', '�װ��� �ƹ��͵�');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('���� ���� �¾�
�ڽ��� ���� �θ��
���� ���� ��', '����', '����');



INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`,`ISEXTRACT`) VALUES ('��ġ �ҽ�糪�� �ܸ� ���� ����� ������ �� 
���� ������ ���ϰ� �ȴٴ� ��,
�ƴϸ� �ܸ��� ������ ������ ������ �翬��
�����ؾ� �Ѵٴ� ���� ���ߴ�.', '�ܸ�', '���� ���� <���� ����� ����> ��', 'Y');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('����鵵 ��.. ��¿����������', '�ܸ�', '������');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('�������̰� ������ �ƴ϶� ����ް� �����ž�', '�ܸ�', '��ζ�ξ�');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('�߻��� �� �ְ��!', '�ܸ�', '�ְ���');



INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`,`ISEXTRACT`) VALUES ('�λ��� ���������� ��� �ǰ� ���������� ���صȴ�.', '����', '������ ��׹�Ʈ <���� ������ �׸��� ������ �����> ��', 'Y');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('����ġ�� ������ �ʹ� ������ ����', '����', '����96');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('��ħ���� �ùٸ� ������ ����Ű�� ���� �ݵ�� ��鸰��.', '����', '�ο뱸');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('�洫�� ��Ӱ�, ���Ⱘ���� ��� �˰� �Ȱ�
�ظŴ� ���� �ٽ� ���ڸ��� ���ƿ´ٴ� ���̴�.', '����', '_��');



INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`,`ISEXTRACT`) VALUES ('������ ������ ���ϰ� �����̰ŵ��. �ѹ�
�����ϱ� �����ϸ� �����ϴ� �� ��ü�� ������
�˴ϴ�. Ȥ�� ���߸� �� ����, �� ����, ���
�𸣴� ������ �ִ� �� �ƴѰ�, ���� ���߰�
������ �ʳ�, �ǽɿ� ������ ���� ��ü�� ����ϰ�
�����鼭 �� �� �ϰ� Ž�彺����
���ϰ� �Ǵ°���.', '����', '�´� ���� <���� ����> ��', 'Y');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('���� ���� ������ ������ ����.', '����', 'goooooood');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('���� �־�� ������.
������ �˾� �� �� �־�� �Ѵ�.
�ѵ� ����ΰ� ����� �����Ѵ�.
', '����', '�ŷ°���');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('0�� 1, ��� ���� ����,
�����ϰ� �̹��� ��� ����.', '����', 'Alt');



INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`,`ISEXTRACT`) VALUES ('�츮�� ���� ������ �ϳ��� Ʋ�� ����ְ�,
���� ������ �� Ʋ�� �ν�������.', 'Ʋ', '�Ƹ��� ���̰� <�������� ���� ��> ��', 'Y');


INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('�� �׸��� ä�������߸� �ϰǸ�
���� ƴ�� ���� ��Ǫ���� �����μ��� �ʹ�.
�� ������ ���� �� ������', 'Ʋ', '�Ŵ޸�����');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('���� �ٶ�� �Ƹ��ٿ� ����
�� �ӿ� ����� ������ ����־���.
�𼭸��� �������԰�, �߶��� �ʴ� �� ���� ���� ���ٴ� �� �˾Ҵ�.', 'Ʋ', '��Ʈ��');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('�����̱� ������ �̹� ���ž� ���־�', 'Ʋ', '_��');



