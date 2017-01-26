INSERT INTO project (code, name, push_url)
VALUES ('cmscc', '内容管理系统', 'http://localhost:8080/configcenter');

INSERT INTO configuration (proj_code, environment, name, value, description)
VALUES
  ('cmscc', 'local', 'app.name', '内容管理系统', '项目名称'),
  ('cmscc', 'local', 'app.author', '康永敢', '项目负责人'),
  ('cmscc', 'local', 'app.record', '皖ICP备16017743号-1', '备案号'),

  ('cmscc', 'local', 'cache.open', 'Y', '是否开启缓存:{Y:开启,N:不开启}'),

  ('cmscc', 'local', 'dubbo.version', '1.0.0', '提供接口的版本'),
  ('cmscc', 'local', 'dubbo.name', 'cmscc', 'dubbo名字'),
  ('cmscc', 'local', 'dubbo.protocol.port', '-1', 'dubbo注册端口'),
  ('cmscc', 'local', 'dubbo.registry.address', 'zookeeper://127.0.0.1:2181?backup=127.0.0.1:2182', 'dubbo注册地址'),
  ('cmscc', 'local', 'dubbo.timeout', '10000', 'dubbo超时时间'),

  ('cmscc', 'local', 'file.root.path', '/Users/kyg/code2/cmscc/cmscc-web/src/main/webapp/WEB-INF/', '文件上传根路径'),

  ('cmscc', 'local', 'ftp.ip', '121.40.66.176', 'ftp服务器ip'),
  ('cmscc', 'local', 'ftp.password', '******', 'ftp服务器密码'),
  ('cmscc', 'local', 'ftp.path', 'path/', '上传路径'),
  ('cmscc', 'local', 'ftp.port', '21', 'ftp服务器端口'),
  ('cmscc', 'local', 'ftp.url', 'http://cdn.kangyonggan.com/', '文件服务器地址'),
  ('cmscc', 'local', 'ftp.username', 'kyg', 'ftp服务器用户名'),

  ('cmscc', 'local', 'jdbc.driver', 'com.mysql.jdbc.Driver', 'jdbc驱动'),
  ('cmscc', 'local', 'jdbc.password', '********', 'jdbc密码'),
  ('cmscc', 'local', 'jdbc.url', 'jdbc:mysql://127.0.0.1:3306/cmscc?useUnicode=true&characterEncoding=UTF-8', 'jdbc地址'),
  ('cmscc', 'local', 'jdbc.username', 'root', 'jdbc用户名'),

  ('cmscc', 'local', 'mail.bufferSize', '50', '错误日志邮件缓冲区大小(单位:k)'),
  ('cmscc', 'local', 'mail.host', 'smtp.163.com', '邮件服务器地址'),
  ('cmscc', 'local', 'mail.password', '********', '邮件服务器密码'),
  ('cmscc', 'local', 'mail.receiver', 'kangyonggan@gmail.com', '错误日志邮件接收人'),
  ('cmscc', 'local', 'mail.timeout', '25000', '邮件发送超时时间'),
  ('cmscc', 'local', 'mail.username', 'kangyg2017@163.com', '邮件服务器用户名'),

  ('cmscc', 'local', 'redis.host', '127.0.0.1', 'redis主机'),
  ('cmscc', 'local', 'redis.maxIdle', '100', 'redis最大等待数'),
  ('cmscc', 'local', 'redis.maxTotal', '1000', 'redis最大连接数'),
  ('cmscc', 'local', 'redis.minIdle', '50', 'redis最小等待数'),
  ('cmscc', 'local', 'redis.password', '******', '邮件服务器用户名'),
  ('cmscc', 'local', 'redis.port', '6379', 'redis密码'),
  ('cmscc', 'local', 'redis.prefix', 'cmscc', 'redis的key的前缀'),
  ('cmscc', 'local', 'redis.testOnBorrow', 'true', 'redis测试支持'),

  ('cmscc', 'local', 'slow.interface.time', '5', '慢接口时间(秒)'),
  ('cmscc', 'local', 'slow.method.time', '5', '慢方法时间(秒)');