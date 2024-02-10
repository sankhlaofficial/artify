// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artwork.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ArtworkAdapter extends TypeAdapter<Artwork> {
  @override
  final int typeId = 0;

  @override
  Artwork read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Artwork(
      id: fields[0] as int,
      title: fields[1] as String,
      description: fields[2] as String,
      author: fields[3] as String,
      artworkImage: fields[4] as ArtworkImage,
      category: fields[5] as String,
      imageApiUrl: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Artwork obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.author)
      ..writeByte(4)
      ..write(obj.artworkImage)
      ..writeByte(5)
      ..write(obj.category)
      ..writeByte(6)
      ..write(obj.imageApiUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ArtworkAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ArtworkImageAdapter extends TypeAdapter<ArtworkImage> {
  @override
  final int typeId = 1;

  @override
  ArtworkImage read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ArtworkImage(
      imageDisplayUrl: fields[0] as String,
      imageApiUrl: fields[1] as String,
      imageDimensionString: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ArtworkImage obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.imageDisplayUrl)
      ..writeByte(1)
      ..write(obj.imageApiUrl)
      ..writeByte(2)
      ..write(obj.imageDimensionString);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ArtworkImageAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
