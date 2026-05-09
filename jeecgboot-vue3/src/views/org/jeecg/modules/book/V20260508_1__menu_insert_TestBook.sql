-- 注意：该页面对应的前台目录为views/org/jeecg/modules/book文件夹下
-- 如果你想更改到其他目录，请修改sql中component字段对应的值


-- 主菜单
INSERT INTO sys_permission(id, parent_id, name, url, component, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_route, is_leaf, keep_alive, hidden, hide_tab, description, status, del_flag, rule_flag, create_by, create_time, update_by, update_time, internal_or_external)
VALUES ('177825580046701', NULL, '图书管理', '/org/jeecg/modules/book/testBookList', 'org/jeecg/modules/book/TestBookList', NULL, NULL, 0, NULL, '1', 0.00, 0, NULL, 1, 0, 0, 0, 0, NULL, '1', 0, 0, 'admin', '2026-05-08 23:56:40', NULL, NULL, 0);

-- 新增
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('177825580046702', '177825580046701', '添加图书管理', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules.book:test_book:add', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2026-05-08 23:56:40', NULL, NULL, 0, 0, '1', 0);

-- 编辑
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('177825580046703', '177825580046701', '编辑图书管理', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules.book:test_book:edit', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2026-05-08 23:56:40', NULL, NULL, 0, 0, '1', 0);

-- 删除
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('177825580046704', '177825580046701', '删除图书管理', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules.book:test_book:delete', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2026-05-08 23:56:40', NULL, NULL, 0, 0, '1', 0);

-- 批量删除
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('177825580046705', '177825580046701', '批量删除图书管理', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules.book:test_book:deleteBatch', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2026-05-08 23:56:40', NULL, NULL, 0, 0, '1', 0);

-- 导出excel
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('177825580046706', '177825580046701', '导出excel_图书管理', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules.book:test_book:exportXls', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2026-05-08 23:56:40', NULL, NULL, 0, 0, '1', 0);

-- 导入excel
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('177825580046707', '177825580046701', '导入excel_图书管理', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules.book:test_book:importExcel', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2026-05-08 23:56:40', NULL, NULL, 0, 0, '1', 0);

-- 角色授权（以 admin 角色为例，role_id 可替换）
INSERT INTO sys_role_permission (id, role_id, permission_id, data_rule_ids, operate_date, operate_ip) VALUES ('177825580046808', 'f6817f48af4fb3af11b9e8bf182f618b', '177825580046701', NULL, '2026-05-08 23:56:40', '127.0.0.1');
INSERT INTO sys_role_permission (id, role_id, permission_id, data_rule_ids, operate_date, operate_ip) VALUES ('177825580046809', 'f6817f48af4fb3af11b9e8bf182f618b', '177825580046702', NULL, '2026-05-08 23:56:40', '127.0.0.1');
INSERT INTO sys_role_permission (id, role_id, permission_id, data_rule_ids, operate_date, operate_ip) VALUES ('177825580046810', 'f6817f48af4fb3af11b9e8bf182f618b', '177825580046703', NULL, '2026-05-08 23:56:40', '127.0.0.1');
INSERT INTO sys_role_permission (id, role_id, permission_id, data_rule_ids, operate_date, operate_ip) VALUES ('177825580046811', 'f6817f48af4fb3af11b9e8bf182f618b', '177825580046704', NULL, '2026-05-08 23:56:40', '127.0.0.1');
INSERT INTO sys_role_permission (id, role_id, permission_id, data_rule_ids, operate_date, operate_ip) VALUES ('177825580046812', 'f6817f48af4fb3af11b9e8bf182f618b', '177825580046705', NULL, '2026-05-08 23:56:40', '127.0.0.1');
INSERT INTO sys_role_permission (id, role_id, permission_id, data_rule_ids, operate_date, operate_ip) VALUES ('177825580046813', 'f6817f48af4fb3af11b9e8bf182f618b', '177825580046706', NULL, '2026-05-08 23:56:40', '127.0.0.1');
INSERT INTO sys_role_permission (id, role_id, permission_id, data_rule_ids, operate_date, operate_ip) VALUES ('177825580046814', 'f6817f48af4fb3af11b9e8bf182f618b', '177825580046707', NULL, '2026-05-08 23:56:40', '127.0.0.1');