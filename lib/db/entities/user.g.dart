// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<User> {
  @override
  final int typeId = 5;

  @override
  User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User(
      phoneNumber: fields[0] as String,
      userToken: fields[1] as String,
      userId: fields[2] as String,
      userType: fields[3] as  UserType, 
      imgUrl: fields[4] as String,
       advisorArea: fields[5] as String,
       address: fields[6] as String,
       );
  }


  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.phoneNumber)
      ..writeByte(1)
      ..write(obj.userToken)
      ..writeByte(2)
      ..write(obj.userId)
      ..writeByte(3)
      ..write(obj.userType);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
