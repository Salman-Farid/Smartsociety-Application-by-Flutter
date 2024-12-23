import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:smartsociety/views/bill/bill_payments.dart';
import 'package:smartsociety/views/community/community_services.dart';
import 'package:smartsociety/views/emergency/emergency_contacts.dart';
import 'package:smartsociety/views/event/event_calendar.dart';
import 'package:smartsociety/views/facility/facility_booking.dart';
import 'package:smartsociety/views/feedback/feedback_suggestions.dart';
import 'package:smartsociety/views/lost_found/lost_found.dart';
import 'package:smartsociety/views/maintenance/maintenance_requests.dart';
import 'package:smartsociety/views/mental_health/mental_health_support.dart';
import 'package:smartsociety/views/notice/notice_board.dart';
import 'package:smartsociety/views/recruitment/recruitment.dart';
import 'package:smartsociety/views/rent/house_rent.dart';
import 'package:smartsociety/views/skill/skill_sharing.dart';
import 'package:smartsociety/views/staff/staff_directory.dart';
import 'package:smartsociety/views/study/study_groups.dart';
import 'package:smartsociety/views/travel/travel_group.dart';
import 'firebase_options.dart';
import 'models/blood_donation.dart';
import 'views/common/login.dart';
import 'views/admin/admin_dashboard.dart';
import 'views/user/user_dashboard.dart';
import 'views/admin/committee_directory.dart';
import 'views/user/resident_directory.dart';
import 'config/firebase_config.dart';
import 'controllers/auth_controller.dart';
import 'controllers/loading_controller.dart';
import 'utils/theme.dart';
import 'views/common/register.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseConfig.init();
  
  Get.put(AuthController());
  Get.put(LoadingController());
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: '/login',
      getPages: [
        GetPage(
          name: '/login', 
          page: () => LoginScreen(),
          transition: Transition.fadeIn
        ),
        GetPage(name: '/register', page: () => RegisterScreen()),
        GetPage(name: '/user-dashboard', page: () => UserDashboard()),
        GetPage(name: '/maintenance', page: () => MaintenanceRequests()),
        GetPage(name: '/events', page: () => EventCalendar()),
        GetPage(name: '/facilities', page: () => FacilityBooking()),
        GetPage(name: '/notices', page: () => NoticeBoard()),
        GetPage(name: '/emergency', page: () => EmergencyContacts()),
        GetPage(name: '/directory', page: () => StaffDirectory()),
      ],
    );
  }
}