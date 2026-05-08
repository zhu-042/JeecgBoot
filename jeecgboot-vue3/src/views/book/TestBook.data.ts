import {BasicColumn} from '/@/components/Table';
import {FormSchema} from '/@/components/Table';
import { rules} from '/@/utils/helper/validator';
import { render } from '/@/utils/common/renderUtils';
import { getWeekMonthQuarterYear } from '/@/utils';
//列表数据
export const columns: BasicColumn[] = [
   {
    title: '书名',
    align:"center",
    dataIndex: 'bookName'
   },
   {
    title: '作者',
    align:"center",
    dataIndex: 'author'
   },
   {
    title: '价格',
    align:"center",
    dataIndex: 'price'
   },
   {
    title: '出版日期',
    align:"center",
    dataIndex: 'publishDate',
    customRender:({text}) =>{
      text = !text ? "" : (text.length > 10 ? text.substr(0,10) : text);
      return text;
    },
   },
   {
    title: '分类',
    align:"center",
    dataIndex: 'category'
   },
];
//查询数据
export const searchFormSchema: FormSchema[] = [
];
//表单数据
export const formSchema: FormSchema[] = [
  {
    label: '书名',
    field: 'bookName',
    component: 'Input',
    dynamicRules: ({model,schema}) => {
          return [
                 { required: true, message: '请输入书名!'},
          ];
     },
  },
  {
    label: '作者',
    field: 'author',
    component: 'Input',
    dynamicRules: ({model,schema}) => {
          return [
                 { required: true, message: '请输入作者!'},
          ];
     },
  },
  {
    label: '价格',
    field: 'price',
    component: 'InputNumber',
  },
  {
    label: '出版日期',
    field: 'publishDate',
    component: 'DatePicker',
    componentProps: {
      valueFormat: 'YYYY-MM-DD'
    },
  },
  {
    label: '分类',
    field: 'category',
    component: 'Input',
  },
	// TODO 主键隐藏字段，目前写死为ID
	{
	  label: '',
	  field: 'id',
	  component: 'Input',
	  show: false
	},
];

// 高级查询数据
export const superQuerySchema = {
  bookName: {title: '书名',order: 0,view: 'text', type: 'string',},
  author: {title: '作者',order: 1,view: 'text', type: 'string',},
  price: {title: '价格',order: 2,view: 'number', type: 'number',},
  publishDate: {title: '出版日期',order: 3,view: 'date', type: 'string',},
  category: {title: '分类',order: 4,view: 'text', type: 'string',},
};

/**
* 流程表单调用这个方法获取formSchema
* @param param
*/
export function getBpmFormSchema(_formData): FormSchema[]{
  // 默认和原始表单保持一致 如果流程中配置了权限数据，这里需要单独处理formSchema
  return formSchema;
}