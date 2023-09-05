import 'package:flutter/material.dart';
import 'package:shopmate/pages/settings/widgets/section_widget/section_content..dart';
import 'package:shopmate/pages/settings/widgets/section_widget/section_header.dart';
import 'package:shopmate/pages/settings/widgets/section_widget/settings_section.dart';
import 'package:shopmate/resources/app_resources.dart';
import 'package:shopmate/shared/widgets/wrappers/main_page_container.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage();

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        title: const Text(
          'Settings',
          style: AppTextStyles.appBarTitle,
        ),

        //Close Page Button
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.close_rounded,
            color: AppColors.darkGrey,
          ),
        ),

        //PopUpMenu Button
        actions: [
          IconButton(
            onPressed: () {
              print('shop PopUp (settingsScreen, appbar)');
            },
            icon: Icon(
              Icons.more_vert_rounded,
              color: AppColors.darkGrey,
            ),
          ),
        ],
      ),
      body: MainPageContainer(
        children: [
          const SizedBox(height: 30),

          //Profile picture
          GestureDetector(
            child: const CircleAvatar(
              backgroundColor: AppColors.white,
              radius: 70,
            ),
          ),
          SizedBox(height: 10),

          //UserName
          Text(
            'User',
            style: TextStyle(
              color: AppColors.darkGrey,
              fontWeight: FontWeight.w600,
              fontSize: AppFontSizes.fsMedium,
            ),
          ),
          SizedBox(height: 30),

          //Account Section
          SettingsPageSection(
            header: SettingsPageSectionHeader(title: 'Account'),
            content: [
              SettingsPageSectionContent(title: 'Change Username'),
              SettingsPageSectionContent(title: 'Change Email'),
              SettingsPageSectionContent(
                title: 'Change Password',
                displayDivider: false,
              ),
            ],
          ),

          //Layout Section
          SettingsPageSection(
            header: SettingsPageSectionHeader(title: 'Layout'),
            content: [
              SettingsPageSectionContent(title: 'Adjust Bottom Bar'),
              SettingsPageSectionContent(
                title: 'Edit Home Page Layout',
                displayDivider: false,
              ),
            ],
          ),

          //Themes Section
          SettingsPageSection(
            header: SettingsPageSectionHeader(title: 'Themes'),
            content: [
              SettingsPageSectionContent(title: 'Choose Main Color'),
              SettingsPageSectionContent(
                title: 'Choose Color Scheme',
                displayDivider: false,
              ),
            ],
          ),

          //Other Section
          SettingsPageSection(
            header: SettingsPageSectionHeader(title: 'Other'),
            content: [
              SettingsPageSectionContent(title: 'Restore Purchases'),
              SettingsPageSectionContent(title: 'Delete data'),
              SettingsPageSectionContent(title: 'Common Problems'),
              SettingsPageSectionContent(
                title: 'Contact Us',
              ),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
