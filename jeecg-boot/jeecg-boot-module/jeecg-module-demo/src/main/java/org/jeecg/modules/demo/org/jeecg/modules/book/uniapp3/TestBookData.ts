import { render } from '@/common/renderUtils';
//列表数据
export const columns = [
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
   },
   {
    title: '分类',
    align:"center",
    dataIndex: 'category'
   },
];