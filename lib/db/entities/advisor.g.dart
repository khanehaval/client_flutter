// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advisor.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AdvisorAdapter extends TypeAdapter<Advisor> {
  @override
  final int typeId = 1;

  @override
  Advisor read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Advisor(
      firstName: fields[1] as String?,
      lastName: fields[2] as String?,
      userName: fields[3] as String?,
      imgUrl: fields[5] as String?,
      password: fields[6] as String?,
      phoneNumber: fields[7] as String?,
      advisorArea: fields[8] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Advisor obj) {
    writer
      ..writeByte(7)
      ..writeByte(1)
      ..write(obj.firstName)
      ..writeByte(2)
      ..write(obj.lastName)
      ..writeByte(3)
      ..write(obj.userName)
      ..writeByte(5)
      ..write(obj.imgUrl)
      ..writeByte(6)
      ..write(obj.password)
      ..writeByte(7)
      ..write(obj.phoneNumber)
      ..writeByte(8)
      ..write(obj.advisorArea);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AdvisorAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
