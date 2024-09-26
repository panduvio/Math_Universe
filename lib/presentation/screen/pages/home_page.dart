import 'package:flutter/material.dart';
import 'package:math_universe/presentation/providers/page_provider.dart';
import 'package:math_universe/presentation/screen/pages/certificate_page.dart';
import 'package:math_universe/presentation/screen/pages/competition_information_page.dart';
import 'package:math_universe/presentation/screen/pages/discussion_room_feedback_page.dart';
import 'package:math_universe/presentation/screen/pages/discussion_room_page.dart';
import 'package:math_universe/presentation/screen/pages/explore_page.dart';
import 'package:math_universe/presentation/screen/pages/modul_page.dart';
import 'package:math_universe/presentation/screen/pages/profile_page.dart';
import 'package:math_universe/presentation/screen/pages/question_bank_page.dart';
import 'package:math_universe/presentation/screen/pages/ranking_page.dart';
import 'package:math_universe/presentation/screen/pages/search_page.dart';
import 'package:math_universe/presentation/screen/pages/video_page.dart';
import 'package:math_universe/presentation/widgets/baris_deret_widget.dart';
import 'package:math_universe/presentation/widgets/home_page_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int kategoriIndex = 0;
  int pageIndex = 0;
  late Widget page;

  @override
  void initState() {
    page = _homePageWidget();
    pageIndex = Provider.of<PageProvider>(context, listen: false).pageIndex;
    // Provider.of(context, )
    // TODO: implement initState
    super.initState();
  }

  // void changePage(int pageIndex) {
  //   setState(() {
  //     if (pageIndex == 0) {
  //       page = _homePageWidget();
  //     } else if (pageIndex == 1) {
  //       page = _competitionInformationPage();
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    setState(() {
      pageIndex = Provider.of<PageProvider>(context, listen: true).pageIndex;

      if (pageIndex == 0) {
        page = _homePageWidget();
      } else if (pageIndex == 1) {
        page = _competitionInformationPage();
      } else if (pageIndex == 2) {
        page = _modulPage();
      } else if (pageIndex == 3) {
        page = _barisDeretWidget();
      } else if (pageIndex == 4) {
        page = _questionBankPage();
      } else if (pageIndex == 5) {
        page = _videoPage();
      } else if (pageIndex == 6) {
        page = _certificatePage();
      } else if (pageIndex == 7) {
        page = _rankingPage();
      } else if (pageIndex == 8) {
        page = _discussionRoomPage();
      } else if (pageIndex == 9) {
        page = _discussionRoomFeedbackPage();
      } else if (pageIndex == 10) {
        page = _explorePage();
      } else if (pageIndex == 11) {
        page = _searchPage();
      } else if (pageIndex == 12) {
        page = _profilePage();
      }
    });
    return page;
  }

  Widget _homePageWidget() {
    return const HomePageWidget();
  }

  Widget _competitionInformationPage() {
    return const CompetitionInformationPage();
  }

  Widget _modulPage() {
    return const ModulPage();
  }

  Widget _barisDeretWidget() {
    return const BarisDeretWidget();
  }

  Widget _questionBankPage() {
    return const QuestionBankPage();
  }

  Widget _videoPage() {
    return const VideoPage();
  }

  Widget _certificatePage() {
    return const CertificatePage();
  }

  Widget _rankingPage() {
    return const RankingPage();
  }

  Widget _discussionRoomPage() {
    return const DiscussionRoomPage();
  }

  Widget _discussionRoomFeedbackPage() {
    return const DiscussionRoomFeedbackPage();
  }

  Widget _explorePage() {
    return const ExplorePage();
  }

  Widget _searchPage() {
    return const SearchPage();
  }

  Widget _profilePage() {
    return const ProfilePage();
  }
}
