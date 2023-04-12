// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../../models/tour.dart';
// import '../shared/dialog_utils.dart';

// import '../tours/tours_manager.dart';

// class OrderTourScreen extends StatefulWidget {
//   static const routeName = '/order-tour';

//   // OrderTourScreen(Tour? findById);

//   OrderTourScreen(
//     Tour? tour, {
//     super.key,
//   }) {
//     this.tour = tour!;
//   }
//   late final Tour tour;

//   @override
//   State<OrderTourScreen> createState() => _OrderTourScreenState();
// }

// class _OrderTourScreenState extends State<OrderTourScreen> {
//   late Tour _editedTour;
//   var _isLoading = false;
//   final _editForm = GlobalKey<FormState>();
//   @override
//   void initState() {
//     _editedTour = widget.tour;
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Thông tin"),
//       ),
//       body: Padding(
//           padding: const EdgeInsets.all(6.0),
//           child: Form(
//             child: ListView(
//               children: <Widget>[
//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(10),
//                   child: Container(
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
//                     width: double.infinity,
//                     color: const Color.fromARGB(255, 255, 236, 242),
//                     child: Column(children: <Widget>[
//                       Row(
//                         children: [
//                           SizedBox(
//                             width: 100,
//                             height: 100,
//                             child: Image.network(
//                               _editedTour.imageUrl,
//                               // fit: BoxFit.cover,
//                             ),
//                           ),
//                           const SizedBox(
//                             width: 20,
//                           ),
//                           Text(
//                             _editedTour.title,
//                             style:
//                                 const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
//                       Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(
//                           'Khởi hành: ${_editedTour.startDate}',
//                           textAlign: TextAlign.left,
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 5,
//                       ),
//                       Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text( 
//                           'Kết thúc: ${_editedTour.endDate}',
//                           textAlign: TextAlign.left,
//                         )
                       
                        
//                       ),
//                     ]),
//                   ),
//                 ),
//                 const Divider(
//                   height: 2,
//                 ),
//                 buildTourIdField(),
//                 const Divider(
//                   height: 2,
//                 ),
//                 buildCustomerNameField(),
//                 const Divider(
//                   height: 2,
//                 ),
//                 buildCustomerEmailField(),
//                 const Divider(
//                   height: 2,
//                 ),
//                 buildCustomerPhoneField(),
//                 const Divider(
//                   height: 2,
//                 ),
//                 buildCustomerAddressField(),
                
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 Column(
//                   children: [
//                     Text('Tổng cộng: ${_editedTour.price}', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
//                     SizedBox(
//                       child: ElevatedButton(
//                         onPressed: () {
//                             print("Đặt ngay");
//                         },
//                         style: ButtonStyle(
//                             backgroundColor: MaterialStateProperty.all<Color>(
//                                 const Color.fromARGB(255, 255, 255, 255)),
//                           ),
//                         child: const Text(
//                             'Đặt ngay',
//                             style: TextStyle(fontSize: 20, color: Colors.red),
//                           ),
//                       ),
//                     )
//                   ],
//                 )
//               ],
//           ))
//           // child: Column(children: [
//           // ClipRRect(
//           //   borderRadius: BorderRadius.circular(10),
//           //   child: Container(
//           //     padding:
//           //         const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
//           //     width: double.infinity,
//           //     color: const Color.fromARGB(255, 255, 236, 242),
//           //     child: Column(children: <Widget>[
//           //       Row(
//           //         children: [
//           //           SizedBox(
//           //             width: 100,
//           //             height: 100,
//           //             child: Image.network(
//           //               _editedTour.imageUrl,
//           //               // fit: BoxFit.cover,
//           //             ),
//           //           ),
//           //           const SizedBox(
//           //             width: 20,
//           //           ),
//           //           Text(
//           //             _editedTour.title,
//           //             style:
//           //                 const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//           //           ),
//           //         ],
//           //       ),
//           //       Text(
//           //         'Khởi hành: ${_editedTour.startDate}',
//           //         textAlign: TextAlign.left,
//           //       ),
//           //       const SizedBox(
//           //         height: 5,
//           //       ),
//           //       Text('Kết thúc: ${_editedTour.endDate}'),
//           //     ]),
//           //   ),
//           // ),

//           // ]
//           ),
//       // ),
//     );
//   }

//   TextFormField buildTourIdField() {
//     return TextFormField(
//       initialValue: _editedTour.id,
//       decoration: const InputDecoration(labelText: 'Mã Tour'),
//       textInputAction: TextInputAction.next,
//       autofocus: true,
//       readOnly: true,
//     );
//   }

//   TextFormField buildCustomerNameField() {
//     return TextFormField(
//       decoration: const InputDecoration(labelText: 'Họ tên'),
//       textInputAction: TextInputAction.next,
//       autofocus: true,
//       validator: (value) {
//         if (value!.isEmpty) {
//           return 'Vui lòng nhập vào tên.';
//         }
//         if (value.length < 5) {
//           return 'Tên phải lớn hơn 5 ký tự.';
//         }
//         return null;
//       },
//     );
//   }

//   TextFormField buildCustomerPhoneField() {
//     return TextFormField(
//       decoration: const InputDecoration(labelText: 'Số điện thoại'),
//       textInputAction: TextInputAction.next,
//       keyboardType: TextInputType.number,
//       autofocus: true,
//       validator: (value) {
//         if (value!.isEmpty) {
//           return 'Vui lòng nhập vào số điện thoại.';
//         }
//         if (value.length <= 10 && value.length > 10) {
//           return 'Số điện thoại không hợp lệ.';
//         }
//         return null;
//       },
//     );
//   }

//   TextFormField buildCustomerEmailField() {
//     return TextFormField(
//       decoration: const InputDecoration(labelText: 'Email'),
//       textInputAction: TextInputAction.next,
//       autofocus: true,
//       validator: (value) {
//         if (value!.isEmpty) {
//           return 'Vui lòng nhập vào email.';
//         }

//         return null;
//       },
//     );
//   }

//   TextFormField buildCustomerAddressField() {
//     return TextFormField(
//       decoration: const InputDecoration(labelText: 'Địa chỉ'),
//       textInputAction: TextInputAction.next,
//       autofocus: true,
//       validator: (value) {
//         if (value!.isEmpty) {
//           return 'Vui lòng nhập vào địa chỉ.';
//         }
//         return null;
//       },
//     );
//   }
// }
