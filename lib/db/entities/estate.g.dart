// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estate.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EstateAdapter extends TypeAdapter<Estate> {
  @override
  final int typeId = 3;

  @override
  Estate read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Estate(
      agencyName: fields[1] as String?,
      landlineNumber: fields[11] as String,
      agencyPhone: fields[2] as String?,
      agencyActivityPermissionNumber: fields[3] as String?,
      agencyActivitPermissionImgUrl: fields[4] as String?,
      firstname: fields[5] as String?,
      lastname: fields[6] as String?,
      username: fields[7] as String?,
      password: fields[8] as String?,
      advisorArea: fields[9] as String?,
      phoneNumber: fields[10] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Estate obj) {
    writer
      ..writeByte(11)
      ..writeByte(1)
      ..write(obj.agencyName)
      ..writeByte(2)
      ..write(obj.agencyPhone)
      ..writeByte(3)
      ..write(obj.agencyActivityPermissionNumber)
      ..writeByte(4)
      ..write(obj.agencyActivitPermissionImgUrl)
      ..writeByte(5)
      ..write(obj.firstname)
      ..writeByte(6)
      ..write(obj.lastname)
      ..writeByte(7)
      ..write(obj.username)
      ..writeByte(8)
      ..write(obj.password)
      ..writeByte(9)
      ..write(obj.advisorArea)
      ..writeByte(10)
      ..write(obj.phoneNumber)
      ..writeByte(11)
      ..write(obj.landlineNumber);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EstateAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
