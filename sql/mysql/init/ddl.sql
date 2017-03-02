CREATE TABLE `t_user` (
  `id` unsigned int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL COMMENT '用户名',
  `password` char(32) NOT NULL COMMENT '密码',
  `mail` varchar(64) DEFAULT NULL COMMENT '电子邮箱',
  `mobile` char(11) DEFAULT NULL COMMENT '手机号',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

/*姓名、性别、年龄、联系电话、身高、体重、毕业院校、学历、职称、生活照1到3张*/
CREATE TABLE `t_interviewee` (
  `id` unsigned int(11) NOT NULL AUTO_INCREMENT,
  `user_id` unsigned int(11) NOT NULL COMMENT '用户ID',
  `username` varchar(32) NOT NULL COMMENT '用户名',
  `name` varchar(32) NOT NULL COMMENT '姓名',
  `sex` unsigned tinyint DEFAULT 0 COMMENT '性别,1-男，2-女，3-未知，0-未填',
  `age` unsigned tinyint COMMENT '年龄',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系电话，默认为用户手机号',
  `height` unsigned tinyint DEFAULT NULL COMMENT '身高',
  `weight` decimal(4,2) DEFAULT NULL COMMENT '体重',
  `graduation` varchar(64) DEFAULT NULL COMMENT '毕业院校',
  `record` unsigned tinyint DEFAULT NULL COMMENT '学历, 1-高中，2-专科，3-本科，4-硕士，5-博士，99-其它',
  `title_zc` varchar(32) DEFAULT NULL COMMENT '职称',
  `life_photoes` varchar(255) DEFAULT NULL COMMENT '生活照',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='求职者表';

/*单位名称、地址、联系电话、级别（二甲还是三甲），年营业额（几亿几千万）、床位、在职员工数量、
招聘岗位要求：年龄、性别、职称、学历、所提供的待遇。*/
CREATE TABLE `t_company_info` (
  `id` unsigned int(11) NOT NULL AUTO_INCREMENT,
  `user_id` unsigned int(11) NOT NULL COMMENT '用户ID',
  `username` varchar(32) NOT NULL COMMENT '用户名',
  `company` varchar(128) NOT NULL COMMENT '姓名',
  `address` unsigned tinyint DEFAULT 0 COMMENT '性别,1-男，2-女，3-未知，0-未填',
  `level` unsigned tinyint DEFAULT NULL COMMENT '联系电话，默认为用户手机号',
  `sale_amt` unsigned tinyint DEFAULT NULL COMMENT '身高',
  `bed_count` decimal(4,2) DEFAULT NULL COMMENT '体重',
  `employer_count` varchar(64) DEFAULT NULL COMMENT '毕业院校',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='招聘单位表';
CREATE TABLE `t_reruit_info` (
  `id` unsigned int(11) NOT NULL AUTO_INCREMENT,
  `user_id` unsigned int(11) NOT NULL COMMENT '用户ID',
  `username` varchar(32) NOT NULL COMMENT '用户名',
  `company_id` unsigned int(11) NOT NULL '',
  `age` unsigned tinyint COMMENT '年龄',
  `sex` unsigned tinyint DEFAULT 0 COMMENT '性别,1-男，2-女，3-未知，4-不限，0-未填',
  `title_zc` varchar(32) DEFAULT NULL COMMENT '职称',
  `record` unsigned tinyint DEFAULT NULL COMMENT '学历, 1-高中，2-专科，3-本科，4-硕士，5-博士，99-其它',
  `salary` 
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='招聘信息表';
