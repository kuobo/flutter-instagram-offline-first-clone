import 'package:equatable/equatable.dart';
import 'package:insta_blocks/insta_blocks.dart';
import 'package:json_annotation/json_annotation.dart';

part 'section_header_block.g.dart';

/// {@template section_header_block}
/// A block which represents a section header.
/// {@endtemplate}
@JsonSerializable()
class SectionHeaderBlock with EquatableMixin implements InstaBlock {
  /// {@macro section_header_block}
  const SectionHeaderBlock({
    required this.title,
    this.action,
    this.type = SectionHeaderBlock.identifier,
  });

  /// Converts a `Map<String, dynamic>` into a [SectionHeaderBlock] instance.
  factory SectionHeaderBlock.fromJson(Map<String, dynamic> json) =>
      _$SectionHeaderBlockFromJson(json);

  /// The section header block type identifier.
  static const identifier = '__section_header__';

  /// The title of the section header.
  final String title;

  /// An optional action which occurs upon interaction.
  @BlockActionConverter()
  final BlockAction? action;

  @override
  final String type;

  @override
  Map<String, dynamic> toJson() => _$SectionHeaderBlockToJson(this);

  @override
  List<Object?> get props => [title, action, type];
}

