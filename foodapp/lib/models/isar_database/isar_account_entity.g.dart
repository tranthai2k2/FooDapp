// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_account_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarAccountEntityCollection on Isar {
  IsarCollection<IsarAccountEntity> get isarAccountEntitys => this.collection();
}

const IsarAccountEntitySchema = CollectionSchema(
  name: r'IsarAccountEntity',
  id: 7789093639831490262,
  properties: {
    r'address': PropertySchema(
      id: 0,
      name: r'address',
      type: IsarType.string,
    ),
    r'avatar': PropertySchema(
      id: 1,
      name: r'avatar',
      type: IsarType.string,
    ),
    r'firstName': PropertySchema(
      id: 2,
      name: r'firstName',
      type: IsarType.string,
    ),
    r'lastName': PropertySchema(
      id: 3,
      name: r'lastName',
      type: IsarType.string,
    ),
    r'passWord': PropertySchema(
      id: 4,
      name: r'passWord',
      type: IsarType.string,
    ),
    r'phoneNumber': PropertySchema(
      id: 5,
      name: r'phoneNumber',
      type: IsarType.string,
    ),
    r'uId': PropertySchema(
      id: 6,
      name: r'uId',
      type: IsarType.string,
    )
  },
  estimateSize: _isarAccountEntityEstimateSize,
  serialize: _isarAccountEntitySerialize,
  deserialize: _isarAccountEntityDeserialize,
  deserializeProp: _isarAccountEntityDeserializeProp,
  idName: r'id',
  indexes: {
    r'firstName': IndexSchema(
      id: -2537032818573098835,
      name: r'firstName',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'firstName',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {
    r'isarAccountEntities': LinkSchema(
      id: 6456398738266787099,
      name: r'isarAccountEntities',
      target: r'IsarAccountEntity',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _isarAccountEntityGetId,
  getLinks: _isarAccountEntityGetLinks,
  attach: _isarAccountEntityAttach,
  version: '3.1.0+1',
);

int _isarAccountEntityEstimateSize(
  IsarAccountEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.address;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.avatar;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.firstName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.lastName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.passWord;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.phoneNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.uId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _isarAccountEntitySerialize(
  IsarAccountEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.address);
  writer.writeString(offsets[1], object.avatar);
  writer.writeString(offsets[2], object.firstName);
  writer.writeString(offsets[3], object.lastName);
  writer.writeString(offsets[4], object.passWord);
  writer.writeString(offsets[5], object.phoneNumber);
  writer.writeString(offsets[6], object.uId);
}

IsarAccountEntity _isarAccountEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarAccountEntity(
    address: reader.readStringOrNull(offsets[0]),
    avatar: reader.readStringOrNull(offsets[1]),
    firstName: reader.readStringOrNull(offsets[2]),
    lastName: reader.readStringOrNull(offsets[3]),
    passWord: reader.readStringOrNull(offsets[4]),
    phoneNumber: reader.readStringOrNull(offsets[5]),
    uId: reader.readStringOrNull(offsets[6]),
  );
  object.id = id;
  return object;
}

P _isarAccountEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarAccountEntityGetId(IsarAccountEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _isarAccountEntityGetLinks(
    IsarAccountEntity object) {
  return [object.isarAccountEntities];
}

void _isarAccountEntityAttach(
    IsarCollection<dynamic> col, Id id, IsarAccountEntity object) {
  object.id = id;
  object.isarAccountEntities.attach(col,
      col.isar.collection<IsarAccountEntity>(), r'isarAccountEntities', id);
}

extension IsarAccountEntityQueryWhereSort
    on QueryBuilder<IsarAccountEntity, IsarAccountEntity, QWhere> {
  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterWhere>
      anyFirstName() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'firstName'),
      );
    });
  }
}

extension IsarAccountEntityQueryWhere
    on QueryBuilder<IsarAccountEntity, IsarAccountEntity, QWhereClause> {
  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterWhereClause>
      idBetween(
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

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterWhereClause>
      firstNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'firstName',
        value: [null],
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterWhereClause>
      firstNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'firstName',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterWhereClause>
      firstNameEqualTo(String? firstName) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'firstName',
        value: [firstName],
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterWhereClause>
      firstNameNotEqualTo(String? firstName) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'firstName',
              lower: [],
              upper: [firstName],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'firstName',
              lower: [firstName],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'firstName',
              lower: [firstName],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'firstName',
              lower: [],
              upper: [firstName],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterWhereClause>
      firstNameGreaterThan(
    String? firstName, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'firstName',
        lower: [firstName],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterWhereClause>
      firstNameLessThan(
    String? firstName, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'firstName',
        lower: [],
        upper: [firstName],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterWhereClause>
      firstNameBetween(
    String? lowerFirstName,
    String? upperFirstName, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'firstName',
        lower: [lowerFirstName],
        includeLower: includeLower,
        upper: [upperFirstName],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterWhereClause>
      firstNameStartsWith(String FirstNamePrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'firstName',
        lower: [FirstNamePrefix],
        upper: ['$FirstNamePrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterWhereClause>
      firstNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'firstName',
        value: [''],
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterWhereClause>
      firstNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'firstName',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'firstName',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'firstName',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'firstName',
              upper: [''],
            ));
      }
    });
  }
}

extension IsarAccountEntityQueryFilter
    on QueryBuilder<IsarAccountEntity, IsarAccountEntity, QFilterCondition> {
  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      addressIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'address',
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      addressIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'address',
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      addressEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      addressGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      addressLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      addressBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'address',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      addressStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      addressEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      addressContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      addressMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'address',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      addressIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      addressIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'address',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      avatarIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'avatar',
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      avatarIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'avatar',
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      avatarEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'avatar',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      avatarGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'avatar',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      avatarLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'avatar',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      avatarBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'avatar',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      avatarStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'avatar',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      avatarEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'avatar',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      avatarContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'avatar',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      avatarMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'avatar',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      avatarIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'avatar',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      avatarIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'avatar',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      firstNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'firstName',
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      firstNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'firstName',
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      firstNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      firstNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      firstNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      firstNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'firstName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      firstNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      firstNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      firstNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      firstNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'firstName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      firstNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstName',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      firstNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'firstName',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
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

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      idLessThan(
    Id value, {
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

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
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

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      lastNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastName',
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      lastNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastName',
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      lastNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      lastNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      lastNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      lastNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      lastNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      lastNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      lastNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      lastNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lastName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      lastNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastName',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      lastNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lastName',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      passWordIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'passWord',
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      passWordIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'passWord',
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      passWordEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'passWord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      passWordGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'passWord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      passWordLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'passWord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      passWordBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'passWord',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      passWordStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'passWord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      passWordEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'passWord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      passWordContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'passWord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      passWordMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'passWord',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      passWordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'passWord',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      passWordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'passWord',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      phoneNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'phoneNumber',
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      phoneNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'phoneNumber',
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      phoneNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      phoneNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      phoneNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      phoneNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'phoneNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      phoneNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      phoneNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      phoneNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      phoneNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phoneNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      phoneNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phoneNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      phoneNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phoneNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      uIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'uId',
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      uIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'uId',
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      uIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      uIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'uId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      uIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'uId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      uIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'uId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      uIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'uId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      uIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'uId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      uIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'uId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      uIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'uId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      uIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      uIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uId',
        value: '',
      ));
    });
  }
}

extension IsarAccountEntityQueryObject
    on QueryBuilder<IsarAccountEntity, IsarAccountEntity, QFilterCondition> {}

extension IsarAccountEntityQueryLinks
    on QueryBuilder<IsarAccountEntity, IsarAccountEntity, QFilterCondition> {
  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      isarAccountEntities(FilterQuery<IsarAccountEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'isarAccountEntities');
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      isarAccountEntitiesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'isarAccountEntities', length, true, length, true);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      isarAccountEntitiesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'isarAccountEntities', 0, true, 0, true);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      isarAccountEntitiesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'isarAccountEntities', 0, false, 999999, true);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      isarAccountEntitiesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'isarAccountEntities', 0, true, length, include);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      isarAccountEntitiesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'isarAccountEntities', length, include, 999999, true);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterFilterCondition>
      isarAccountEntitiesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'isarAccountEntities', lower, includeLower, upper, includeUpper);
    });
  }
}

extension IsarAccountEntityQuerySortBy
    on QueryBuilder<IsarAccountEntity, IsarAccountEntity, QSortBy> {
  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterSortBy>
      sortByAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.asc);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterSortBy>
      sortByAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.desc);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterSortBy>
      sortByAvatar() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatar', Sort.asc);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterSortBy>
      sortByAvatarDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatar', Sort.desc);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterSortBy>
      sortByFirstName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstName', Sort.asc);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterSortBy>
      sortByFirstNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstName', Sort.desc);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterSortBy>
      sortByLastName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastName', Sort.asc);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterSortBy>
      sortByLastNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastName', Sort.desc);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterSortBy>
      sortByPassWord() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'passWord', Sort.asc);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterSortBy>
      sortByPassWordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'passWord', Sort.desc);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterSortBy>
      sortByPhoneNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.asc);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterSortBy>
      sortByPhoneNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.desc);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterSortBy> sortByUId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uId', Sort.asc);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterSortBy>
      sortByUIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uId', Sort.desc);
    });
  }
}

extension IsarAccountEntityQuerySortThenBy
    on QueryBuilder<IsarAccountEntity, IsarAccountEntity, QSortThenBy> {
  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterSortBy>
      thenByAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.asc);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterSortBy>
      thenByAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.desc);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterSortBy>
      thenByAvatar() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatar', Sort.asc);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterSortBy>
      thenByAvatarDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatar', Sort.desc);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterSortBy>
      thenByFirstName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstName', Sort.asc);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterSortBy>
      thenByFirstNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstName', Sort.desc);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterSortBy>
      thenByLastName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastName', Sort.asc);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterSortBy>
      thenByLastNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastName', Sort.desc);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterSortBy>
      thenByPassWord() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'passWord', Sort.asc);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterSortBy>
      thenByPassWordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'passWord', Sort.desc);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterSortBy>
      thenByPhoneNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.asc);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterSortBy>
      thenByPhoneNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.desc);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterSortBy> thenByUId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uId', Sort.asc);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QAfterSortBy>
      thenByUIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uId', Sort.desc);
    });
  }
}

extension IsarAccountEntityQueryWhereDistinct
    on QueryBuilder<IsarAccountEntity, IsarAccountEntity, QDistinct> {
  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QDistinct>
      distinctByAddress({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'address', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QDistinct>
      distinctByAvatar({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'avatar', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QDistinct>
      distinctByFirstName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'firstName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QDistinct>
      distinctByLastName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QDistinct>
      distinctByPassWord({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'passWord', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QDistinct>
      distinctByPhoneNumber({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phoneNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAccountEntity, IsarAccountEntity, QDistinct> distinctByUId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uId', caseSensitive: caseSensitive);
    });
  }
}

extension IsarAccountEntityQueryProperty
    on QueryBuilder<IsarAccountEntity, IsarAccountEntity, QQueryProperty> {
  QueryBuilder<IsarAccountEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IsarAccountEntity, String?, QQueryOperations> addressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'address');
    });
  }

  QueryBuilder<IsarAccountEntity, String?, QQueryOperations> avatarProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'avatar');
    });
  }

  QueryBuilder<IsarAccountEntity, String?, QQueryOperations>
      firstNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'firstName');
    });
  }

  QueryBuilder<IsarAccountEntity, String?, QQueryOperations>
      lastNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastName');
    });
  }

  QueryBuilder<IsarAccountEntity, String?, QQueryOperations>
      passWordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'passWord');
    });
  }

  QueryBuilder<IsarAccountEntity, String?, QQueryOperations>
      phoneNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phoneNumber');
    });
  }

  QueryBuilder<IsarAccountEntity, String?, QQueryOperations> uIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uId');
    });
  }
}
