-- 注意：该页面对应的前台目录为views/org/jeecg/modules/smartwatch文件夹下
-- 如果你想更改到其他目录，请修改sql中component字段对应的值


-- 主菜单
INSERT INTO sys_permission(id, parent_id, name, url, component, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_route, is_leaf, keep_alive, hidden, hide_tab, description, status, del_flag, rule_flag, create_by, create_time, update_by, update_time, internal_or_external)
VALUES ('177829814350601', NULL, '智能手表产品信息表', '/org/jeecg/modules/smartwatch/smartWatchProductList', 'org/jeecg/modules/smartwatch/SmartWatchProductList', NULL, NULL, 0, NULL, '1', 0.00, 0, NULL, 1, 0, 0, 0, 0, NULL, '1', 0, 0, 'admin', '2026-05-09 11:42:23', NULL, NULL, 0);

-- 新增
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('177829814350602', '177829814350601', '添加智能手表产品信息表', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules.smartwatch:smart_watch_product:add', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2026-05-09 11:42:23', NULL, NULL, 0, 0, '1', 0);

-- 编辑
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('177829814350603', '177829814350601', '编辑智能手表产品信息表', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules.smartwatch:smart_watch_product:edit', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2026-05-09 11:42:23', NULL, NULL, 0, 0, '1', 0);

-- 删除
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('177829814350604', '177829814350601', '删除智能手表产品信息表', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules.smartwatch:smart_watch_product:delete', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2026-05-09 11:42:23', NULL, NULL, 0, 0, '1', 0);

-- 批量删除
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('177829814350605', '177829814350601', '批量删除智能手表产品信息表', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules.smartwatch:smart_watch_product:deleteBatch', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2026-05-09 11:42:23', NULL, NULL, 0, 0, '1', 0);

-- 导出excel
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('177829814350606', '177829814350601', '导出excel_智能手表产品信息表', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules.smartwatch:smart_watch_product:exportXls', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2026-05-09 11:42:23', NULL, NULL, 0, 0, '1', 0);

-- 导入excel
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('177829814350607', '177829814350601', '导入excel_智能手表产品信息表', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules.smartwatch:smart_watch_product:importExcel', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2026-05-09 11:42:23', NULL, NULL, 0, 0, '1', 0);

-- 角色授权（以 admin 角色为例，role_id 可替换）
INSERT INTO sys_role_permission (id, role_id, permission_id, data_rule_ids, operate_date, operate_ip) VALUES ('177829814350608', 'f6817f48af4fb3af11b9e8bf182f618b', '177829814350601', NULL, '2026-05-09 11:42:23', '127.0.0.1');
INSERT INTO sys_role_permission (id, role_id, permission_id, data_rule_ids, operate_date, operate_ip) VALUES ('177829814350609', 'f6817f48af4fb3af11b9e8bf182f618b', '177829814350602', NULL, '2026-05-09 11:42:23', '127.0.0.1');
INSERT INTO sys_role_permission (id, role_id, permission_id, data_rule_ids, operate_date, operate_ip) VALUES ('177829814350610', 'f6817f48af4fb3af11b9e8bf182f618b', '177829814350603', NULL, '2026-05-09 11:42:23', '127.0.0.1');
INSERT INTO sys_role_permission (id, role_id, permission_id, data_rule_ids, operate_date, operate_ip) VALUES ('177829814350611', 'f6817f48af4fb3af11b9e8bf182f618b', '177829814350604', NULL, '2026-05-09 11:42:23', '127.0.0.1');
INSERT INTO sys_role_permission (id, role_id, permission_id, data_rule_ids, operate_date, operate_ip) VALUES ('177829814350612', 'f6817f48af4fb3af11b9e8bf182f618b', '177829814350605', NULL, '2026-05-09 11:42:23', '127.0.0.1');
INSERT INTO sys_role_permission (id, role_id, permission_id, data_rule_ids, operate_date, operate_ip) VALUES ('177829814350613', 'f6817f48af4fb3af11b9e8bf182f618b', '177829814350606', NULL, '2026-05-09 11:42:23', '127.0.0.1');
INSERT INTO sys_role_permission (id, role_id, permission_id, data_rule_ids, operate_date, operate_ip) VALUES ('177829814350614', 'f6817f48af4fb3af11b9e8bf182f618b', '177829814350607', NULL, '2026-05-09 11:42:23', '127.0.0.1');