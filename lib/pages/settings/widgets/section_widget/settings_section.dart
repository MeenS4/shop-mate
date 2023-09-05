import 'package:flutter/material.dart';
import 'package:shopmate/pages/settings/widgets/section_widget/section_content..dart';
import 'package:shopmate/pages/settings/widgets/section_widget/section_header.dart';

class SettingsPageSection extends StatelessWidget {
  final SettingsPageSectionHeader header;
  final List<SettingsPageSectionContent> content;

  const SettingsPageSection({
    required SettingsPageSectionHeader this.header,
    required List<SettingsPageSectionContent> this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        header,
        ...content,
      ],
    );
  }
}
