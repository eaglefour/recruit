CREATE TABLE `t_user` (
  `id` unsigned int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL COMMENT '�û���',
  `password` char(32) NOT NULL COMMENT '����',
  `mail` varchar(64) DEFAULT NULL COMMENT '��������',
  `mobile` char(11) DEFAULT NULL COMMENT '�ֻ���',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�û���';

/*�������Ա����䡢��ϵ�绰����ߡ����ء���ҵԺУ��ѧ����ְ�ơ�������1��3��*/
CREATE TABLE `t_interviewee` (
  `id` unsigned int(11) NOT NULL AUTO_INCREMENT,
  `user_id` unsigned int(11) NOT NULL COMMENT '�û�ID',
  `username` varchar(32) NOT NULL COMMENT '�û���',
  `name` varchar(32) NOT NULL COMMENT '����',
  `sex` unsigned tinyint DEFAULT 0 COMMENT '�Ա�,1-�У�2-Ů��3-δ֪��0-δ��',
  `age` unsigned tinyint COMMENT '����',
  `phone` varchar(20) DEFAULT NULL COMMENT '��ϵ�绰��Ĭ��Ϊ�û��ֻ���',
  `height` unsigned tinyint DEFAULT NULL COMMENT '���',
  `weight` decimal(4,2) DEFAULT NULL COMMENT '����',
  `graduation` varchar(64) DEFAULT NULL COMMENT '��ҵԺУ',
  `record` unsigned tinyint DEFAULT NULL COMMENT 'ѧ��, 1-���У�2-ר�ƣ�3-���ƣ�4-˶ʿ��5-��ʿ��99-����',
  `title_zc` varchar(32) DEFAULT NULL COMMENT 'ְ��',
  `life_photoes` varchar(255) DEFAULT NULL COMMENT '������',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��ְ�߱�';

/*��λ���ơ���ַ����ϵ�绰�����𣨶��׻������ף�����Ӫҵ����ڼ�ǧ�򣩡���λ����ְԱ��������
��Ƹ��λҪ�����䡢�Ա�ְ�ơ�ѧ�������ṩ�Ĵ�����*/
CREATE TABLE `t_company_info` (
  `id` unsigned int(11) NOT NULL AUTO_INCREMENT,
  `user_id` unsigned int(11) NOT NULL COMMENT '�û�ID',
  `username` varchar(32) NOT NULL COMMENT '�û���',
  `company` varchar(128) NOT NULL COMMENT '����',
  `address` unsigned tinyint DEFAULT 0 COMMENT '�Ա�,1-�У�2-Ů��3-δ֪��0-δ��',
  `level` unsigned tinyint DEFAULT NULL COMMENT '��ϵ�绰��Ĭ��Ϊ�û��ֻ���',
  `sale_amt` unsigned tinyint DEFAULT NULL COMMENT '���',
  `bed_count` decimal(4,2) DEFAULT NULL COMMENT '����',
  `employer_count` varchar(64) DEFAULT NULL COMMENT '��ҵԺУ',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��Ƹ��λ��';
CREATE TABLE `t_reruit_info` (
  `id` unsigned int(11) NOT NULL AUTO_INCREMENT,
  `user_id` unsigned int(11) NOT NULL COMMENT '�û�ID',
  `username` varchar(32) NOT NULL COMMENT '�û���',
  `company_id` unsigned int(11) NOT NULL '',
  `age` unsigned tinyint COMMENT '����',
  `sex` unsigned tinyint DEFAULT 0 COMMENT '�Ա�,1-�У�2-Ů��3-δ֪��4-���ޣ�0-δ��',
  `title_zc` varchar(32) DEFAULT NULL COMMENT 'ְ��',
  `record` unsigned tinyint DEFAULT NULL COMMENT 'ѧ��, 1-���У�2-ר�ƣ�3-���ƣ�4-˶ʿ��5-��ʿ��99-����',
  `salary` 
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��Ƹ��Ϣ��';
