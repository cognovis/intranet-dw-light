-- upgrade-3.2.1.0.0-3.2.2.0.0.sql

SELECT acs_log__debug('/packages/intranet-dw-light/sql/postgresql/upgrade/upgrade-3.2.1.0.0-3.2.2.0.0.sql','');

-- -------------------------------------------------------------------
-- Cost Centers

delete from im_view_columns where column_id = 3402;
insert into im_view_columns (column_id, view_id, group_id, column_name, column_render_tcl,
extra_select, extra_where, sort_order, visible_for) values (
3402,34,NULL,'CostCenter','$cost_center_code','','',2,'');





