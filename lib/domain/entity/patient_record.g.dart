// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_record.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPatientRecordCollection on Isar {
  IsarCollection<PatientRecord> get patientRecords => this.collection();
}

const PatientRecordSchema = CollectionSchema(
  name: r'PatientRecord',
  id: -8129719208882860555,
  properties: {
    r'date': PropertySchema(
      id: 0,
      name: r'date',
      type: IsarType.dateTime,
    ),
    r'disease': PropertySchema(
      id: 1,
      name: r'disease',
      type: IsarType.string,
    ),
    r'diseaseWords': PropertySchema(
      id: 2,
      name: r'diseaseWords',
      type: IsarType.stringList,
    ),
    r'doctorName': PropertySchema(
      id: 3,
      name: r'doctorName',
      type: IsarType.string,
    ),
    r'doctorNameWords': PropertySchema(
      id: 4,
      name: r'doctorNameWords',
      type: IsarType.stringList,
    ),
    r'hospitalName': PropertySchema(
      id: 5,
      name: r'hospitalName',
      type: IsarType.string,
    ),
    r'hospitalNameWords': PropertySchema(
      id: 6,
      name: r'hospitalNameWords',
      type: IsarType.stringList,
    ),
    r'image': PropertySchema(
      id: 7,
      name: r'image',
      type: IsarType.string,
    ),
    r'patientName': PropertySchema(
      id: 8,
      name: r'patientName',
      type: IsarType.string,
    ),
    r'patientNameWords': PropertySchema(
      id: 9,
      name: r'patientNameWords',
      type: IsarType.stringList,
    ),
    r'title': PropertySchema(
      id: 10,
      name: r'title',
      type: IsarType.string,
    ),
    r'titleWords': PropertySchema(
      id: 11,
      name: r'titleWords',
      type: IsarType.stringList,
    )
  },
  estimateSize: _patientRecordEstimateSize,
  serialize: _patientRecordSerialize,
  deserialize: _patientRecordDeserialize,
  deserializeProp: _patientRecordDeserializeProp,
  idName: r'id',
  indexes: {
    r'titleWords': IndexSchema(
      id: 80481505061976672,
      name: r'titleWords',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'titleWords',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'patientNameWords': IndexSchema(
      id: -2650509336072960774,
      name: r'patientNameWords',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'patientNameWords',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'diseaseWords': IndexSchema(
      id: -5718600081047046716,
      name: r'diseaseWords',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'diseaseWords',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'doctorNameWords': IndexSchema(
      id: -1175240801776320373,
      name: r'doctorNameWords',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'doctorNameWords',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'hospitalNameWords': IndexSchema(
      id: -2649266735199909834,
      name: r'hospitalNameWords',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'hospitalNameWords',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _patientRecordGetId,
  getLinks: _patientRecordGetLinks,
  attach: _patientRecordAttach,
  version: '3.1.0+1',
);

int _patientRecordEstimateSize(
  PatientRecord object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.disease;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.diseaseWords.length * 3;
  {
    for (var i = 0; i < object.diseaseWords.length; i++) {
      final value = object.diseaseWords[i];
      bytesCount += value.length * 3;
    }
  }
  {
    final value = object.doctorName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.doctorNameWords.length * 3;
  {
    for (var i = 0; i < object.doctorNameWords.length; i++) {
      final value = object.doctorNameWords[i];
      bytesCount += value.length * 3;
    }
  }
  {
    final value = object.hospitalName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.hospitalNameWords.length * 3;
  {
    for (var i = 0; i < object.hospitalNameWords.length; i++) {
      final value = object.hospitalNameWords[i];
      bytesCount += value.length * 3;
    }
  }
  {
    final value = object.image;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.patientName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.patientNameWords.length * 3;
  {
    for (var i = 0; i < object.patientNameWords.length; i++) {
      final value = object.patientNameWords[i];
      bytesCount += value.length * 3;
    }
  }
  {
    final value = object.title;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.titleWords.length * 3;
  {
    for (var i = 0; i < object.titleWords.length; i++) {
      final value = object.titleWords[i];
      bytesCount += value.length * 3;
    }
  }
  return bytesCount;
}

void _patientRecordSerialize(
  PatientRecord object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.date);
  writer.writeString(offsets[1], object.disease);
  writer.writeStringList(offsets[2], object.diseaseWords);
  writer.writeString(offsets[3], object.doctorName);
  writer.writeStringList(offsets[4], object.doctorNameWords);
  writer.writeString(offsets[5], object.hospitalName);
  writer.writeStringList(offsets[6], object.hospitalNameWords);
  writer.writeString(offsets[7], object.image);
  writer.writeString(offsets[8], object.patientName);
  writer.writeStringList(offsets[9], object.patientNameWords);
  writer.writeString(offsets[10], object.title);
  writer.writeStringList(offsets[11], object.titleWords);
}

PatientRecord _patientRecordDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PatientRecord(
    date: reader.readDateTimeOrNull(offsets[0]),
    disease: reader.readStringOrNull(offsets[1]),
    doctorName: reader.readStringOrNull(offsets[3]),
    hospitalName: reader.readStringOrNull(offsets[5]),
    image: reader.readStringOrNull(offsets[7]),
    patientName: reader.readStringOrNull(offsets[8]),
    title: reader.readStringOrNull(offsets[10]),
  );
  object.id = id;
  return object;
}

P _patientRecordDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringList(offset) ?? []) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringList(offset) ?? []) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringList(offset) ?? []) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringList(offset) ?? []) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringList(offset) ?? []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _patientRecordGetId(PatientRecord object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _patientRecordGetLinks(PatientRecord object) {
  return [];
}

void _patientRecordAttach(
    IsarCollection<dynamic> col, Id id, PatientRecord object) {
  object.id = id;
}

extension PatientRecordQueryWhereSort
    on QueryBuilder<PatientRecord, PatientRecord, QWhere> {
  QueryBuilder<PatientRecord, PatientRecord, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhere>
      anyTitleWordsElement() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'titleWords'),
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhere>
      anyPatientNameWordsElement() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'patientNameWords'),
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhere>
      anyDiseaseWordsElement() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'diseaseWords'),
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhere>
      anyDoctorNameWordsElement() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'doctorNameWords'),
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhere>
      anyHospitalNameWordsElement() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'hospitalNameWords'),
      );
    });
  }
}

extension PatientRecordQueryWhere
    on QueryBuilder<PatientRecord, PatientRecord, QWhereClause> {
  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      titleWordsElementEqualTo(String titleWordsElement) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'titleWords',
        value: [titleWordsElement],
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      titleWordsElementNotEqualTo(String titleWordsElement) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'titleWords',
              lower: [],
              upper: [titleWordsElement],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'titleWords',
              lower: [titleWordsElement],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'titleWords',
              lower: [titleWordsElement],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'titleWords',
              lower: [],
              upper: [titleWordsElement],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      titleWordsElementGreaterThan(
    String titleWordsElement, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'titleWords',
        lower: [titleWordsElement],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      titleWordsElementLessThan(
    String titleWordsElement, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'titleWords',
        lower: [],
        upper: [titleWordsElement],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      titleWordsElementBetween(
    String lowerTitleWordsElement,
    String upperTitleWordsElement, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'titleWords',
        lower: [lowerTitleWordsElement],
        includeLower: includeLower,
        upper: [upperTitleWordsElement],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      titleWordsElementStartsWith(String TitleWordsElementPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'titleWords',
        lower: [TitleWordsElementPrefix],
        upper: ['$TitleWordsElementPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      titleWordsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'titleWords',
        value: [''],
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      titleWordsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'titleWords',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'titleWords',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'titleWords',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'titleWords',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      patientNameWordsElementEqualTo(String patientNameWordsElement) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'patientNameWords',
        value: [patientNameWordsElement],
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      patientNameWordsElementNotEqualTo(String patientNameWordsElement) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'patientNameWords',
              lower: [],
              upper: [patientNameWordsElement],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'patientNameWords',
              lower: [patientNameWordsElement],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'patientNameWords',
              lower: [patientNameWordsElement],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'patientNameWords',
              lower: [],
              upper: [patientNameWordsElement],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      patientNameWordsElementGreaterThan(
    String patientNameWordsElement, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'patientNameWords',
        lower: [patientNameWordsElement],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      patientNameWordsElementLessThan(
    String patientNameWordsElement, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'patientNameWords',
        lower: [],
        upper: [patientNameWordsElement],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      patientNameWordsElementBetween(
    String lowerPatientNameWordsElement,
    String upperPatientNameWordsElement, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'patientNameWords',
        lower: [lowerPatientNameWordsElement],
        includeLower: includeLower,
        upper: [upperPatientNameWordsElement],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      patientNameWordsElementStartsWith(String PatientNameWordsElementPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'patientNameWords',
        lower: [PatientNameWordsElementPrefix],
        upper: ['$PatientNameWordsElementPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      patientNameWordsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'patientNameWords',
        value: [''],
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      patientNameWordsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'patientNameWords',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'patientNameWords',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'patientNameWords',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'patientNameWords',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      diseaseWordsElementEqualTo(String diseaseWordsElement) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'diseaseWords',
        value: [diseaseWordsElement],
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      diseaseWordsElementNotEqualTo(String diseaseWordsElement) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'diseaseWords',
              lower: [],
              upper: [diseaseWordsElement],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'diseaseWords',
              lower: [diseaseWordsElement],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'diseaseWords',
              lower: [diseaseWordsElement],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'diseaseWords',
              lower: [],
              upper: [diseaseWordsElement],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      diseaseWordsElementGreaterThan(
    String diseaseWordsElement, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'diseaseWords',
        lower: [diseaseWordsElement],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      diseaseWordsElementLessThan(
    String diseaseWordsElement, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'diseaseWords',
        lower: [],
        upper: [diseaseWordsElement],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      diseaseWordsElementBetween(
    String lowerDiseaseWordsElement,
    String upperDiseaseWordsElement, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'diseaseWords',
        lower: [lowerDiseaseWordsElement],
        includeLower: includeLower,
        upper: [upperDiseaseWordsElement],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      diseaseWordsElementStartsWith(String DiseaseWordsElementPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'diseaseWords',
        lower: [DiseaseWordsElementPrefix],
        upper: ['$DiseaseWordsElementPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      diseaseWordsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'diseaseWords',
        value: [''],
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      diseaseWordsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'diseaseWords',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'diseaseWords',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'diseaseWords',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'diseaseWords',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      doctorNameWordsElementEqualTo(String doctorNameWordsElement) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'doctorNameWords',
        value: [doctorNameWordsElement],
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      doctorNameWordsElementNotEqualTo(String doctorNameWordsElement) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'doctorNameWords',
              lower: [],
              upper: [doctorNameWordsElement],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'doctorNameWords',
              lower: [doctorNameWordsElement],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'doctorNameWords',
              lower: [doctorNameWordsElement],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'doctorNameWords',
              lower: [],
              upper: [doctorNameWordsElement],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      doctorNameWordsElementGreaterThan(
    String doctorNameWordsElement, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'doctorNameWords',
        lower: [doctorNameWordsElement],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      doctorNameWordsElementLessThan(
    String doctorNameWordsElement, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'doctorNameWords',
        lower: [],
        upper: [doctorNameWordsElement],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      doctorNameWordsElementBetween(
    String lowerDoctorNameWordsElement,
    String upperDoctorNameWordsElement, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'doctorNameWords',
        lower: [lowerDoctorNameWordsElement],
        includeLower: includeLower,
        upper: [upperDoctorNameWordsElement],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      doctorNameWordsElementStartsWith(String DoctorNameWordsElementPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'doctorNameWords',
        lower: [DoctorNameWordsElementPrefix],
        upper: ['$DoctorNameWordsElementPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      doctorNameWordsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'doctorNameWords',
        value: [''],
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      doctorNameWordsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'doctorNameWords',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'doctorNameWords',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'doctorNameWords',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'doctorNameWords',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      hospitalNameWordsElementEqualTo(String hospitalNameWordsElement) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'hospitalNameWords',
        value: [hospitalNameWordsElement],
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      hospitalNameWordsElementNotEqualTo(String hospitalNameWordsElement) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'hospitalNameWords',
              lower: [],
              upper: [hospitalNameWordsElement],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'hospitalNameWords',
              lower: [hospitalNameWordsElement],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'hospitalNameWords',
              lower: [hospitalNameWordsElement],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'hospitalNameWords',
              lower: [],
              upper: [hospitalNameWordsElement],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      hospitalNameWordsElementGreaterThan(
    String hospitalNameWordsElement, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'hospitalNameWords',
        lower: [hospitalNameWordsElement],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      hospitalNameWordsElementLessThan(
    String hospitalNameWordsElement, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'hospitalNameWords',
        lower: [],
        upper: [hospitalNameWordsElement],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      hospitalNameWordsElementBetween(
    String lowerHospitalNameWordsElement,
    String upperHospitalNameWordsElement, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'hospitalNameWords',
        lower: [lowerHospitalNameWordsElement],
        includeLower: includeLower,
        upper: [upperHospitalNameWordsElement],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      hospitalNameWordsElementStartsWith(
          String HospitalNameWordsElementPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'hospitalNameWords',
        lower: [HospitalNameWordsElementPrefix],
        upper: ['$HospitalNameWordsElementPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      hospitalNameWordsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'hospitalNameWords',
        value: [''],
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterWhereClause>
      hospitalNameWordsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'hospitalNameWords',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'hospitalNameWords',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'hospitalNameWords',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'hospitalNameWords',
              upper: [''],
            ));
      }
    });
  }
}

extension PatientRecordQueryFilter
    on QueryBuilder<PatientRecord, PatientRecord, QFilterCondition> {
  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      dateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'date',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      dateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'date',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition> dateEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      dateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      dateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition> dateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'date',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      diseaseIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'disease',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      diseaseIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'disease',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      diseaseEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'disease',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      diseaseGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'disease',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      diseaseLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'disease',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      diseaseBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'disease',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      diseaseStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'disease',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      diseaseEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'disease',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      diseaseContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'disease',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      diseaseMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'disease',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      diseaseIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'disease',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      diseaseIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'disease',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      diseaseWordsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'diseaseWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      diseaseWordsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'diseaseWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      diseaseWordsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'diseaseWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      diseaseWordsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'diseaseWords',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      diseaseWordsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'diseaseWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      diseaseWordsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'diseaseWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      diseaseWordsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'diseaseWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      diseaseWordsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'diseaseWords',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      diseaseWordsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'diseaseWords',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      diseaseWordsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'diseaseWords',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      diseaseWordsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'diseaseWords',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      diseaseWordsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'diseaseWords',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      diseaseWordsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'diseaseWords',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      diseaseWordsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'diseaseWords',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      diseaseWordsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'diseaseWords',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      diseaseWordsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'diseaseWords',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      doctorNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'doctorName',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      doctorNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'doctorName',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      doctorNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'doctorName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      doctorNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'doctorName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      doctorNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'doctorName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      doctorNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'doctorName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      doctorNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'doctorName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      doctorNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'doctorName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      doctorNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'doctorName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      doctorNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'doctorName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      doctorNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'doctorName',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      doctorNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'doctorName',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      doctorNameWordsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'doctorNameWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      doctorNameWordsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'doctorNameWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      doctorNameWordsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'doctorNameWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      doctorNameWordsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'doctorNameWords',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      doctorNameWordsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'doctorNameWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      doctorNameWordsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'doctorNameWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      doctorNameWordsElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'doctorNameWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      doctorNameWordsElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'doctorNameWords',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      doctorNameWordsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'doctorNameWords',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      doctorNameWordsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'doctorNameWords',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      doctorNameWordsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'doctorNameWords',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      doctorNameWordsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'doctorNameWords',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      doctorNameWordsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'doctorNameWords',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      doctorNameWordsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'doctorNameWords',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      doctorNameWordsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'doctorNameWords',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      doctorNameWordsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'doctorNameWords',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      hospitalNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hospitalName',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      hospitalNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hospitalName',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      hospitalNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hospitalName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      hospitalNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hospitalName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      hospitalNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hospitalName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      hospitalNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hospitalName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      hospitalNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'hospitalName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      hospitalNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'hospitalName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      hospitalNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'hospitalName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      hospitalNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'hospitalName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      hospitalNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hospitalName',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      hospitalNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'hospitalName',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      hospitalNameWordsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hospitalNameWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      hospitalNameWordsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hospitalNameWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      hospitalNameWordsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hospitalNameWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      hospitalNameWordsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hospitalNameWords',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      hospitalNameWordsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'hospitalNameWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      hospitalNameWordsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'hospitalNameWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      hospitalNameWordsElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'hospitalNameWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      hospitalNameWordsElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'hospitalNameWords',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      hospitalNameWordsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hospitalNameWords',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      hospitalNameWordsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'hospitalNameWords',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      hospitalNameWordsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hospitalNameWords',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      hospitalNameWordsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hospitalNameWords',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      hospitalNameWordsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hospitalNameWords',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      hospitalNameWordsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hospitalNameWords',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      hospitalNameWordsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hospitalNameWords',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      hospitalNameWordsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hospitalNameWords',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      imageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      imageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      imageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      imageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      imageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      imageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'image',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      imageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      imageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      imageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      imageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'image',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      imageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      imageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      patientNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'patientName',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      patientNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'patientName',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      patientNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'patientName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      patientNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'patientName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      patientNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'patientName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      patientNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'patientName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      patientNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'patientName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      patientNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'patientName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      patientNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'patientName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      patientNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'patientName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      patientNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'patientName',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      patientNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'patientName',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      patientNameWordsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'patientNameWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      patientNameWordsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'patientNameWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      patientNameWordsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'patientNameWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      patientNameWordsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'patientNameWords',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      patientNameWordsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'patientNameWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      patientNameWordsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'patientNameWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      patientNameWordsElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'patientNameWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      patientNameWordsElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'patientNameWords',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      patientNameWordsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'patientNameWords',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      patientNameWordsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'patientNameWords',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      patientNameWordsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'patientNameWords',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      patientNameWordsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'patientNameWords',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      patientNameWordsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'patientNameWords',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      patientNameWordsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'patientNameWords',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      patientNameWordsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'patientNameWords',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      patientNameWordsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'patientNameWords',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      titleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      titleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      titleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      titleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      titleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      titleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      titleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      titleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      titleWordsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'titleWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      titleWordsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'titleWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      titleWordsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'titleWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      titleWordsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'titleWords',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      titleWordsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'titleWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      titleWordsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'titleWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      titleWordsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'titleWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      titleWordsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'titleWords',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      titleWordsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'titleWords',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      titleWordsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'titleWords',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      titleWordsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'titleWords',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      titleWordsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'titleWords',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      titleWordsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'titleWords',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      titleWordsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'titleWords',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      titleWordsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'titleWords',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterFilterCondition>
      titleWordsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'titleWords',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension PatientRecordQueryObject
    on QueryBuilder<PatientRecord, PatientRecord, QFilterCondition> {}

extension PatientRecordQueryLinks
    on QueryBuilder<PatientRecord, PatientRecord, QFilterCondition> {}

extension PatientRecordQuerySortBy
    on QueryBuilder<PatientRecord, PatientRecord, QSortBy> {
  QueryBuilder<PatientRecord, PatientRecord, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterSortBy> sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterSortBy> sortByDisease() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'disease', Sort.asc);
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterSortBy> sortByDiseaseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'disease', Sort.desc);
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterSortBy> sortByDoctorName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doctorName', Sort.asc);
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterSortBy>
      sortByDoctorNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doctorName', Sort.desc);
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterSortBy>
      sortByHospitalName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hospitalName', Sort.asc);
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterSortBy>
      sortByHospitalNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hospitalName', Sort.desc);
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterSortBy> sortByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterSortBy> sortByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterSortBy> sortByPatientName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'patientName', Sort.asc);
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterSortBy>
      sortByPatientNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'patientName', Sort.desc);
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension PatientRecordQuerySortThenBy
    on QueryBuilder<PatientRecord, PatientRecord, QSortThenBy> {
  QueryBuilder<PatientRecord, PatientRecord, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterSortBy> thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterSortBy> thenByDisease() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'disease', Sort.asc);
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterSortBy> thenByDiseaseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'disease', Sort.desc);
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterSortBy> thenByDoctorName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doctorName', Sort.asc);
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterSortBy>
      thenByDoctorNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doctorName', Sort.desc);
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterSortBy>
      thenByHospitalName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hospitalName', Sort.asc);
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterSortBy>
      thenByHospitalNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hospitalName', Sort.desc);
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterSortBy> thenByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterSortBy> thenByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterSortBy> thenByPatientName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'patientName', Sort.asc);
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterSortBy>
      thenByPatientNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'patientName', Sort.desc);
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension PatientRecordQueryWhereDistinct
    on QueryBuilder<PatientRecord, PatientRecord, QDistinct> {
  QueryBuilder<PatientRecord, PatientRecord, QDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QDistinct> distinctByDisease(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'disease', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QDistinct>
      distinctByDiseaseWords() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'diseaseWords');
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QDistinct> distinctByDoctorName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'doctorName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QDistinct>
      distinctByDoctorNameWords() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'doctorNameWords');
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QDistinct> distinctByHospitalName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hospitalName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QDistinct>
      distinctByHospitalNameWords() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hospitalNameWords');
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QDistinct> distinctByImage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'image', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QDistinct> distinctByPatientName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'patientName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QDistinct>
      distinctByPatientNameWords() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'patientNameWords');
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PatientRecord, PatientRecord, QDistinct> distinctByTitleWords() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'titleWords');
    });
  }
}

extension PatientRecordQueryProperty
    on QueryBuilder<PatientRecord, PatientRecord, QQueryProperty> {
  QueryBuilder<PatientRecord, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PatientRecord, DateTime?, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<PatientRecord, String?, QQueryOperations> diseaseProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'disease');
    });
  }

  QueryBuilder<PatientRecord, List<String>, QQueryOperations>
      diseaseWordsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'diseaseWords');
    });
  }

  QueryBuilder<PatientRecord, String?, QQueryOperations> doctorNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'doctorName');
    });
  }

  QueryBuilder<PatientRecord, List<String>, QQueryOperations>
      doctorNameWordsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'doctorNameWords');
    });
  }

  QueryBuilder<PatientRecord, String?, QQueryOperations>
      hospitalNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hospitalName');
    });
  }

  QueryBuilder<PatientRecord, List<String>, QQueryOperations>
      hospitalNameWordsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hospitalNameWords');
    });
  }

  QueryBuilder<PatientRecord, String?, QQueryOperations> imageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'image');
    });
  }

  QueryBuilder<PatientRecord, String?, QQueryOperations> patientNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'patientName');
    });
  }

  QueryBuilder<PatientRecord, List<String>, QQueryOperations>
      patientNameWordsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'patientNameWords');
    });
  }

  QueryBuilder<PatientRecord, String?, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<PatientRecord, List<String>, QQueryOperations>
      titleWordsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'titleWords');
    });
  }
}
