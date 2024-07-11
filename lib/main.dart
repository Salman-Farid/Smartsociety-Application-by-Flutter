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

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/user-dashboard',
      getPages: [
        GetPage(name: '/login', page: () => LoginScreen()),
        GetPage(name: '/admin-dashboard', page: () => AdminDashboard()),
        GetPage(name: '/user-dashboard', page: () => UserDashboard()),
        GetPage(name: '/committee-directory', page: () => CommitteeDirectory()),
        GetPage(name: '/resident-directory', page: () => ResidentDirectory()),
        GetPage(name: '/login', page: () => LoginScreen()),
        GetPage(name: '/staff-directory', page: () => StaffDirectory()),
        GetPage(name: '/notice-board', page: () => NoticeBoard()),
        GetPage(name: '/event-calendar', page: () => EventCalendar()),
        GetPage(name: '/emergency-contacts', page: () => EmergencyContacts()),
        GetPage(name: '/maintenance-requests', page: () => MaintenanceRequests()),
        GetPage(name: '/bill-payments', page: () => BillPayments()),
        GetPage(name: '/facility-booking', page: () => FacilityBooking()),
        GetPage(name: '/recruitment', page: () => Recruitment()),
        GetPage(name: '/lost-found', page: () => LostFound()),
        GetPage(name: '/house-rent', page: () => HouseRent()),
        GetPage(name: '/community-services', page: () => CommunityServices()),
        GetPage(name: '/study-groups', page: () => StudyGroups()),
        GetPage(name: '/skill-sharing', page: () => SkillSharing()),
        //GetPage(name: '/blood-donation', page: () => BloodDonation()),
        GetPage(name: '/travel-group', page: () => TravelGroup()),
        GetPage(name: '/mental-health-support', page: () => MentalHealthSupport()),
        GetPage(name: '/feedback-suggestions', page: () => FeedbackSuggestions()),
      ],
    );
  }
}