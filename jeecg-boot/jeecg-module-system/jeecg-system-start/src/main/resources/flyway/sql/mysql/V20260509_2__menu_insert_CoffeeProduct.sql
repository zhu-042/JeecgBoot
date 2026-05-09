-- 注意：该页面对应的前台目录为views/org/jeecg/modules/coffee文件夹下
-- 如果你想更改到其他目录，请修改sql中component字段对应的值


-- 主菜单
INSERT INTO sys_permission(id, parent_id, name, url, component, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_route, is_leaf, keep_alive, hidden, hide_tab, description, status, del_flag, rule_flag, create_by, create_time, update_by, update_time, internal_or_external)
VALUES ('177829907389701', NULL, '咖啡产品表', '/org/jeecg/modules/coffee/coffeeProductList', 'org/jeecg/modules/coffee/CoffeeProductList', NULL, NULL, 0, NULL, '1', 0.00, 0, NULL, 1, 0, 0, 0, 0, NULL, '1', 0, 0, 'admin', '2026-05-09 11:57:53', NULL, NULL, 0);

-- 新增
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('177829907389702', '177829907389701', '添加咖啡产品表', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules.coffee:coffee_product:add', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2026-05-09 11:57:53', NULL, NULL, 0, 0, '1', 0);

-- 编辑
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('177829907389703', '177829907389701', '编辑咖啡产品表', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules.coffee:coffee_product:edit', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2026-05-09 11:57:53', NULL, NULL, 0, 0, '1', 0);

-- 删除
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('177829907389704', '177829907389701', '删除咖啡产品表', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules.coffee:coffee_product:delete', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2026-05-09 11:57:53', NULL, NULL, 0, 0, '1', 0);

-- 批量删除
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('177829907389705', '177829907389701', '批量删除咖啡产品表', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules.coffee:coffee_product:deleteBatch', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2026-05-09 11:57:53', NULL, NULL, 0, 0, '1', 0);

-- 导出excel
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('177829907389706', '177829907389701', '导出excel_咖啡产品表', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules.coffee:coffee_product:exportXls', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2026-05-09 11:57:53', NULL, NULL, 0, 0, '1', 0);

-- 导入excel
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('177829907389707', '177829907389701', '导入excel_咖啡产品表', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules.coffee:coffee_product:importExcel', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2026-05-09 11:57:53', NULL, NULL, 0, 0, '1', 0);

-- 角色授权（以 admin 角色为例，role_id 可替换）
INSERT INTO sys_role_permission (id, role_id, permission_id, data_rule_ids, operate_date, operate_ip) VALUES ('177829907389708', 'f6817f48af4fb3af11b9e8bf182f618b', '177829907389701', NULL, '2026-05-09 11:57:53', '127.0.0.1');
INSERT INTO sys_role_permission (id, role_id, permission_id, data_rule_ids, operate_date, operate_ip) VALUES ('177829907389709', 'f6817f48af4fb3af11b9e8bf182f618b', '177829907389702', NULL, '2026-05-09 11:57:53', '127.0.0.1');
INSERT INTO sys_role_permission (id, role_id, permission_id, data_rule_ids, operate_date, operate_ip) VALUES ('177829907389710', 'f6817f48af4fb3af11b9e8bf182f618b', '177829907389703', NULL, '2026-05-09 11:57:53', '127.0.0.1');
INSERT INTO sys_role_permission (id, role_id, permission_id, data_rule_ids, operate_date, operate_ip) VALUES ('177829907389711', 'f6817f48af4fb3af11b9e8bf182f618b', '177829907389704', NULL, '2026-05-09 11:57:53', '127.0.0.1');
INSERT INTO sys_role_permission (id, role_id, permission_id, data_rule_ids, operate_date, operate_ip) VALUES ('177829907389712', 'f6817f48af4fb3af11b9e8bf182f618b', '177829907389705', NULL, '2026-05-09 11:57:53', '127.0.0.1');
INSERT INTO sys_role_permission (id, role_id, permission_id, data_rule_ids, operate_date, operate_ip) VALUES ('177829907389713', 'f6817f48af4fb3af11b9e8bf182f618b', '177829907389706', NULL, '2026-05-09 11:57:53', '127.0.0.1');
INSERT INTO sys_role_permission (id, role_id, permission_id, data_rule_ids, operate_date, operate_ip) VALUES ('177829907389714', 'f6817f48af4fb3af11b9e8bf182f618b', '177829907389707', NULL, '2026-05-09 11:57:53', '127.0.0.1');