import 'package:calc_for_shop/Layout/cubit/cubit.dart';
import 'package:flutter/material.dart';

import '../shared/components/components.dart';

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var search= TextEditingController();
  @override
  Widget build(BuildContext context) {
    var cubit= AppCubit.get(context);
    return  Expanded(child:
    Container(
      padding: EdgeInsets.all(40),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              defultFormField(type: TextInputType.text,prefix: Icons.search, controller: search, label: 'بحث', validator: (v){}),SizedBox(width: 40,),
              TextButton(onPressed: (){}, child: Text('بحث',style: TextStyle(fontSize: 20),))
            ],
          ),
          SizedBox(height: 50,),
          DataTable(
              columns: [
            DataColumn(
                label: Text('اسم الصنف'),
            ), DataColumn(
                label: Text('اسم الشركه'),
            ), DataColumn(
                label: Text('.cm'),
            ), DataColumn(
                label: Text('التاريخ'),
            ), DataColumn(
                label: Text('تاريخ الدخول'),
            ), DataColumn(
                label: Text('مدة الصلاحيه'),
            ), DataColumn(
                label: Text('السعر'),
            ), DataColumn(
                label: Text('سعر البيع'),
            ), DataColumn(
                label: Text('الكمبه'),
            ),
          ],
              rows: [
            DataRow(
              cells: [
                DataCell(
                  Text('s')
                ),
                DataCell(
                    Text('s')
                ),
                DataCell(
                    Text('s')
                ),
                DataCell(
                    Text('s')
                ),
                DataCell(
                    Text('s')
                ),
                DataCell(
                    Text('')
                ),
                DataCell(
                    Text('')
                ),
                DataCell(
                    Text('')
                ),
                DataCell(
                    Text('')
                ),
              ]
            ),
 DataRow(
              cells: [
                DataCell(
                  Text('s')
                ),
                DataCell(
                    Text('s')
                ),
                DataCell(
                    Text('s')
                ),
                DataCell(
                    Text('s')
                ),
                DataCell(
                    Text('s')
                ),
                DataCell(
                    Text('')
                ),
                DataCell(
                    Text('')
                ),
                DataCell(
                    Text('')
                ),
                DataCell(
                    Text('')
                ),
              ]
            ),

          ])
        ],
      ),
    ));
  }
}
