
import 'package:calc_for_shop/shared/components/components.dart';
import 'package:flutter/material.dart';

class Add_Product extends StatefulWidget {

  @override
  State<Add_Product> createState() => _Add_ProductState();
}

class _Add_ProductState extends State<Add_Product> {

 var name_pr= TextEditingController();
 var name_cam= TextEditingController();
 var CM= TextEditingController();
 var date= TextEditingController();
 var date_in= TextEditingController();
 var date_ex= TextEditingController();
 var price= TextEditingController();
 var price_sell= TextEditingController();
 var cont= TextEditingController();


  @override
  Widget build(BuildContext context) {
    return  Expanded(child:
    Container(
      padding: EdgeInsets.all(40),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              defultFormField(type: TextInputType.text, controller: name_pr, label: 'اسم الصنف', validator: (v){}),SizedBox(width: 10,),
              defultFormField(type: TextInputType.text, controller: name_cam, label: 'اسم الشركه', validator: (v){}),SizedBox(width: 10,),
              defultFormField(type: TextInputType.text, controller: CM, label: '.cm', validator: (v){}),SizedBox(width: 10,),

            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              defultFormField(type: TextInputType.text, controller: date, label: 'التاريخ', validator: (v){}),SizedBox(width: 10,),
              defultFormField(type: TextInputType.text, controller: date_in, label: 'تاريخ الدخول', validator: (v){}),SizedBox(width: 10,),
              defultFormField(type: TextInputType.text, controller: date_ex, label: 'مدة الصلاحيه', validator: (v){}),SizedBox(width: 10,),

            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              defultFormField(type: TextInputType.text, controller: price, label: 'السعر', validator: (v){}),SizedBox(width: 10,),
              defultFormField(type: TextInputType.text, controller: price_sell, label: 'سعر البيع', validator: (v){}),SizedBox(width: 10,),
              defultFormField(type: TextInputType.text, controller: cont, label: 'الكمبه', validator: (v){}),SizedBox(width: 10,),
            ],
          ),
          SizedBox(height: 60,),
          SizedBox(width: 200,child: defultButton(text: 'اضف', function:(){} ),),

        ],
        
      ),
    ));
  }
  
}
