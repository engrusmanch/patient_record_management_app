import 'package:isar/isar.dart';
part 'patient_record.g.dart';
@Collection()
class PatientRecord {
  Id? id = Isar.autoIncrement;

  String? patientName;
  String? title;
  String? image;
  String? disease;
  String? doctorName;
  String? hospitalName;
  DateTime? date;

  @Index(type: IndexType.value, caseSensitive: false)
  List<String> get titleWords => title!.split(' ');

  @Index(type: IndexType.value, caseSensitive: false)
  List<String> get patientNameWords => patientName!.split(' ');

  @Index(type: IndexType.value, caseSensitive: false)
  List<String> get diseaseWords => disease!.split(' ');

  @Index(type: IndexType.value, caseSensitive: false)
  List<String> get doctorNameWords => doctorName!.split(' ');

  @Index(type: IndexType.value, caseSensitive: false)
  List<String> get hospitalNameWords => hospitalName!.split(' ');

  PatientRecord({
    this.patientName,
    this.title,
    this.image,
    this.disease,
    this.doctorName,
    this.hospitalName,
    this.date,
  });
}
