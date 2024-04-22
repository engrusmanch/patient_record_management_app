import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_document_scanner/flutter_document_scanner.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:patientrecordmanagementapp/core/constants/strings.dart';
import 'package:patientrecordmanagementapp/core/enums.dart';
import 'package:patientrecordmanagementapp/core/styles/placeholders.dart';
import 'package:patientrecordmanagementapp/core/utils/validators.dart';
import 'package:patientrecordmanagementapp/core/widgets/button.dart';
import 'package:patientrecordmanagementapp/core/widgets/form_wrap.dart';
import 'package:patientrecordmanagementapp/core/widgets/generic_form.dart';
import 'package:patientrecordmanagementapp/core/widgets/labeled_text_field.dart';
import 'package:patientrecordmanagementapp/core/widgets/loading_tap_detector.dart';
import 'package:patientrecordmanagementapp/presentation/from_gallery_page.dart';
import 'package:patientrecordmanagementapp/presentation/take_photo_page.dart';

class AddEditPatientRecordPage extends StatefulWidget {
  final OperationType opType;
  final int? index;
  const AddEditPatientRecordPage({Key? key, this.index, required this.opType})
      : super(key: key);

  @override
  State<AddEditPatientRecordPage> createState() =>
      _AddEditPatientRecordPageState();
}

class _AddEditPatientRecordPageState extends State<AddEditPatientRecordPage> {
  final recordFormKey = GlobalKey<FormState>();
  DateTime? _selectedDate;
  String? _imagePath;
  final ImagePicker _picker = ImagePicker(); // Instance of ImagePicker
  final controller = DocumentScannerController();
  bool imageIsSelected = false;
  late String savedImagePath;
  @override
  void initState() {
    super.initState();

    controller.currentPage.listen((AppPages page) {
      if (page == AppPages.takePhoto) {
        setState(() => imageIsSelected = false);
      }

      if (page == AppPages.cropPhoto) {
        setState(() => imageIsSelected = true);
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    double labelFontSize = textTheme.titleMedium!.fontSize!;
    // double smallFontSize = textTheme.bodySmall!.fontSize!;

    return GenericForm(
      margin: EdgeInsets.all(16),
      // onWillPop: addUpdateProductController.on,
      isLoading: false,
      operationType: OperationType.add,
      loadingTapType: LoadingTapType.inventory,
      formKey: recordFormKey,
      appBar: (context) => AppBar(
        title: Text('Add Medical Record'),
        centerTitle: false,
        actions: [
          // if(!addUpdateProductController.isProductOpTypeAdd)
          InkWell(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: Text("Delete Confirmation"),
                        content: Text(
                            "Are you sure you want to delete this product?"),
                        actions: [
                          ButtonWidget(
                            key: UniqueKey(),
                            text: "Yes, Confirm",
                            buttonColor: Colors.green,
                            buttonType: ButtonType.fill,
                            onPressed: () async {
                              // await addUpdateProductController.deleteProduct(widget.index!, context);
                            },

                            // isLoading:
                            //     addUpdateProductController.isDeleting,
                          ),
                          ButtonWidget(
                            key: UniqueKey(),
                            text: "No, Cancel",
                            buttonColor: Colors.red,
                            buttonType: ButtonType.fill,
                            onPressed: () async => Navigator.pop(context),
                          ),
                        ],
                      ));
              // Navigator.of(context).push(MaterialPageRoute(
              //     builder: (context) => AddEditPatientRecordPage(
              //           opType: OperationType.edit,
              //           index: index,
              //         )));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).colorScheme.error),
              child: Icon(Icons.delete_outline,color: Theme.of(context).colorScheme.onError,),
            ),
          ),
        ],
      ),
      builder: (context) => SizedBox(child: () {
        return Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  sizeSectionSmallPlaceHolder,
                  Align(
                    child: FormWrap(children: [
                      LabeledTextField(
                        label: 'Record Title',
                        fontSize: labelFontSize,
                        textField: TextFormField(


                          initialValue:
                              null,
                          onChanged: null,
                          validator: EmptyFieldValidator.validator,
                          textInputAction: TextInputAction.next,
                          decoration:
                              const InputDecoration(hintText: 'Record Title'),
                        ),
                      ),
                      LabeledTextField(
                        label: "Patient Name",
                        fontSize: labelFontSize,
                        textField: TextFormField(
                          initialValue:
                          null,
                          onChanged: null,
                          validator: EmptyFieldValidator.validator,
                          textInputAction: TextInputAction.next,
                          decoration:
                          const InputDecoration(hintText: "Patient Name"),
                        ),
                      ),
                      LabeledTextField(
                        label: "Disease",
                        fontSize: labelFontSize,
                        textField: TextFormField(
                          // readOnly: !addUpdateProductController
                          //     .isProductOpTypeAdd,
                          initialValue: null,
                          onChanged: null,
                          validator: EmptyFieldValidator.validator,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration:
                          const InputDecoration(hintText: "Disease"),
                        ),
                      ),
                      LabeledTextField(
                        label: "Doctor Name",
                        fontSize: labelFontSize,
                        textField: TextFormField(
                          key: UniqueKey(),
                          initialValue: null,
                          onChanged: null,
                          keyboardType: const TextInputType.numberWithOptions(
                              decimal: true),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(priceRegExp),
                          ],
                          validator: EmptyFieldValidator.validator,
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            hintText: "Doctor Name",
                          ),
                        ),
                      ),
                      LabeledTextField(
                        label: "Hospital Name",
                        fontSize: labelFontSize,
                        textField: TextFormField(
                          key: UniqueKey(),
                          initialValue: null,
                          onChanged: null,
                          keyboardType: const TextInputType.numberWithOptions(
                              decimal: true),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(priceRegExp),
                          ],
                          validator: EmptyFieldValidator.validator,
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            hintText: "Hospital Name",
                          ),
                        ),
                      ),

                      _buildDateFormField(context),
                      // SizedBox(height: 16.0),

                      // Container for adding image
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(color: Theme.of(context).colorScheme.secondary),
                        ),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 150.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12.0),
                                  topRight: Radius.circular(12.0),
                                ),
                                color: _imagePath != null ? Colors.grey[300] : null,
                              ),
                              child: _imagePath != null
                                  ? Image.asset(
                                _imagePath!, // Display the selected image
                                height: 150.0,
                              )
                                  : Icon(Icons.image, size: 50.0),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(color:Theme.of(context).colorScheme.secondary, width: 1.0), // Border on top side only
                                ),
                              ),
                              width: double.infinity,
                              child: TextButton(
                                onPressed: () {
                                  _showImagePicker(context); // Open bottom sheet for image selection
                                },
                                child: Text('Add Image'),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 16.0),
                    ]),
                  ),
                  stackGenericFormBottomPlaceHolder,
                ],
              ),
            ),
          ],
        );
      }()),
      persistentFooterButtons: [
        // inventoryController.canNotBeUpdated
        // ? const Text(
        //     'This Product is Incorrectly Configuration, So it Cannot be Edited!',
        //     textAlign: TextAlign.center,
        //   )
        // :
        ButtonWidget(
          // key: UniqueKey(),
          text: "Add Record",
          buttonType: ButtonType.fill,
          onPressed: () async {
            // await addUpdateProductController.addOrEditProduct(context);
          },
          // isLoading: addUpdateProductController.isCreatingOrUpdating,
        ),
        sizePageBottomPlaceHolder,
      ],
    );
  }

  Widget _buildDateFormField(context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        border: Border.all(color: Theme.of(context).colorScheme.secondary)
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              readOnly: true, // Make it read-only
              controller: TextEditingController(
                // Use a TextEditingController to display the selected date
                text: _selectedDate == null
                    ? ''
                    : DateFormat('yyyy-MM-dd')
                        .format(_selectedDate!), // Format the date as desired
              ),
              decoration: InputDecoration(
                // Customize label as needed
                hintText: 'Select date', // Customize hint text as needed
              ),
            ),
          ),
          SizedBox(width: 10),
          IconButton(
            onPressed: () {
              _showDatePicker(
                  context); // Show the date picker when button is pressed
            },
            icon: Icon(Icons.calendar_today_outlined),
          ),
        ],
      ),
    );
  }
  void _showImagePicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: [
              ListTile(
                leading: Icon(Icons.camera_alt),
                title: Text('Capture Image'),
                onTap: () async {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CustomPage(

                          )));
                  // final pickedFile = await _picker.pickImage(source: ImageSource.camera);
                  // setState(() {
                  //   _imagePath = pickedFile?.path; // Update the selected image path
                  // });
                  // Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.image),
                title: Text('Pick from Gallery'),
                onTap: () async {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => FromGalleryPage(

                      )));
                  // final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
                  // setState(() {
                  //   _imagePath = pickedFile?.path; // Update the selected image path
                  // });
                  // Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
  Future<void> _showDatePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900), // Customize the range of selectable dates
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked; // Update the selected date
      });
    }
  }
}
