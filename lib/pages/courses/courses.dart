import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tknp/pages/courses/courses_help_page.dart';
import 'package:tknp/widgets/custom_app_bar.dart';

import 'details.dart';

class TknpCourses extends StatefulWidget {
  @override
  _TknpCoursesState createState() => _TknpCoursesState();
}

class _TknpCoursesState extends State<TknpCourses> {
  String query = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 0),
        child: ListView(
          children: <Widget>[
            CustomAppBar(
              title: '',
              actions: [
                IconButton(
                  splashRadius: 10,
                  icon: Icon(Icons.info),
                  onPressed: () => Get.to(() => CoursesHelpPage(title: 'Courses Help',)),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(
                "Pursue your desired Career with us",
                textAlign: TextAlign.center,
                style: textTheme.subtitle1!.copyWith(
                  letterSpacing: 2,
                  fontSize: 25,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 520,
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: OpenContainerWrapper(
                            closedBuilder: (context, openContainer) =>
                                DetailsCard(
                                  openContainer: openContainer,
                                  title: 'ELECTRICAL ENGINEERING DEPARTMENT',
                                ),
                            title: 'ELECTRICAL ENGINEERING DEPARTMENT',
                            data: [
                              CourseCard(
                                  'Diploma In Electrical & Electronic Technology(Power Option)\n',
                                  "KCSE Mean Grade C-; D+ in Maths and Physics OR KNEC Craft Cert for module ⅠⅠ\n",
                                  "January & Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  'Diploma In Electrical & Electronic Technology(Telecommunication Option)\n',
                                  "KCSE Mean Grade C-; D+ in Maths and Physics OR KNEC Craft Cert for module ⅠⅠ\n",
                                  "January & Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  'Cert In Electrical & Electronic Technology\n',
                                  "KCSE Mean Grade D+ D in Maths and Physics\n",
                                  "January & Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  'Electrical Installation & maintenance\n',
                                  "KCSE Mean grade of D (Plain)\n",
                                  "2 Terms. Intake in Jan/May/Sept \nExam: TKNP"),
                              SizedBox(height: 8),
                              CourseCard(
                                  'Basic Computer repair & Maintenance\n',
                                  "KCSE Mean grade of D+ Must be Computer Literate\n",
                                  "1 Term Jan/May/Sept \nExam: TKNP"),
                              SizedBox(height: 8),
                              CourseCard(
                                  'Advance Computer repair & Maintenance\n',
                                  "Basic Computer repair & Maintenance\n",
                                  "2 Terms Jan/May/Sept \nExam: TKNP"),
                              SizedBox(height: 8),
                              CourseCard(
                                  'Cert in Electronic Technology\n',
                                  "KCSE D (Plain)\n",
                                  "1 yr Exam:City & Guilds"),
                              SizedBox(height: 8),
                              CourseCard(
                                  'Diploma in Electronic Technology\n',
                                  "Cert in Electronic Technology\n",
                                  "1 yr Exam:City & Guilds"),
                              SizedBox(height: 10),
                            ],
                            careerG: [
                              Text(
                                'The department has courses and modular skill training offered by qualified Staff in response to changing technology, job market and career needs.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'This is done through harmoniously imparting technology (theory), practice, research skills and Hands-On-The-Art practicum training to the learner in an interactive environment.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'We are here to shape the learners destiny and to be a change in the world for the better, keeping abreast with the changing technological trends towards the service to humanity.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'Starting as a section of the Electrical Education Course, the Department has grown with the institution. From its inception in 1967 to a fully fledged department in 1996 when the then Kisumu Technical Institute was inaugurated as a Polytechnic and finally',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'to The Kisumu National Polytechnic in 2015.\nIn year 2013, the African Development Bank sponsored the construction of the Electrical Engineering Department complex and in February 2015 donated equipment for the workshops and the laboratories.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'The Department has:\n\nComputer Laboratory.\nSmart Laboratory for the state of the art simulation and training.\nThe department enjoys the brand of highly trained staff from the experienced industrialists as well as ',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'the vigor of the fresh graduates, which make learning and training enthusiastic and solution oriented.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Center(
                                child: Text(
                                  'Electrical Engineering Department – The Game Changer in the Engineering Trade',
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: OpenContainerWrapper(
                            closedBuilder: (context, openContainer) =>
                                DetailsCard(
                                  openContainer: openContainer,
                                  title: 'MECHANICAL ENGINEERING DEPARTMENT',
                                ),
                            title: 'MECHANICAL ENGINEERING DEPARTMENT',
                            data: [
                              CourseCard(
                                  'Diploma In Mechanical Engineering (Production Option)\n',
                                  "KCSE Mean Grade C-; D+ in Maths and Physics OR KNEC Craft Cert for module ⅠⅠ\n",
                                  "January & Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  'Diploma In Mechanical Engineering (Plant Option)\n',
                                  "KCSE Mean Grade C-; D+ in Maths and Physics OR KNEC Craft Cert for module ⅠⅠ\n",
                                  "Module II and III May and Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  'Diploma In Mechatronics Engineering\n',
                                  "KCSE Mean Grade C-; D+ in Maths and Physics\n",
                                  "Module II and III May and Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  'Certificate in Mechanical Engineering (Production Option)\n',
                                  "KCSE Mean Grade of D (Plain)\n",
                                  "Intake in May/Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  'Refrigeration and air conditioning\n',
                                  "KCSE Mean grade of D Level 5 (CBET)\n",
                                  "May/Sept \nExam: CDACC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  'Mechanical Engineering Technician (Production Option)\n',
                                  "Level 3 (CBET) Trade Test\n",
                                  "May/Sept \nExam: CDACC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  'Manual metal arc Welding (CBET)\n',
                                  "KCSE D- (Minus)\n",
                                  "May/Sept \nExam: CDACC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  'Mechanical Plant KCSE Mean Grade C- May and engineering (CBET)\n',
                                  "KCSE Mean Grade C- (Minus)\n",
                                  "May/Sept \nExam: CDACC"),
                              SizedBox(height: 10),
                            ],
                            careerG: [
                              Text(
                                'The Mechanical Engineering department is one of flagship departments at The Kisumu National Polytechnic. It is among the few departments that are as old as the institution that started as Technical Secondary School in 1967.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'The department has undergone several transformations in its life as a technical training provider. The department started operations in 1967 while hosted at Sigalagala Technical School.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'When the school transferred to its current site in 1971, being Kisumu Technical High School, the department continued to offer subjects in mechanical engineering to high school students.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'In 1986 when the govt transformed all technical High Schools into Institutes of technology, the department launched its first certificate of Craft in Mechanical Trades. In 1997, the govt further upgraded the institution to become Kisumu Polytechnic',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'As a result, the department further improved its programs to offer diploma courses. Based on this series of transition, the dept has had to adjust its management of service delivery due to the ever-expanding student population and courses, but so far, it is coping',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'The department has improved it training facilities over the years, especially in Mechanical Engineering production, by introducing state of the art training machines i.e. Computer Numerical Control(CNC) machinery.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'This has enhanced the trainings to conform to the dynamic technology experienced by most industries in Kenya',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: OpenContainerWrapper(
                            closedBuilder: (context, openContainer) =>
                                DetailsCard(
                                  openContainer: openContainer,
                                  title: 'AUTOMOTIVE ENGINEERING DEPARTMENT',
                                ),
                            title: 'AUTOMOTIVE ENGINEERING DEPARTMENT',
                            data: [
                              CourseCard(
                                  'Diploma In Automotive Engineering (Production Option)\n',
                                  "KCSE Mean Grade C-; D+ in Maths and Physics OR KNEC Craft Cert for module ⅠⅠ\n",
                                  "January & Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  'Diploma In Construction Plant Engineering\n',
                                  "KCSE Mean Grade C-; D+ in Maths and Physics OR KNEC Craft Cert for module ⅠⅠ\n",
                                  "Module II and III May and Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  'Certificate in Automotive Engineering\n',
                                  "KCSE Mean Grade D+(Plus) D in Maths & Physics\n",
                                  "January & Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  'Automotive Engineering Level 6\n',
                                  "KCSE Mean Grade of D (Plain)\n",
                                  "Intake in May/Sept \nExam: CDACC"),
                            ],
                            careerG: [
                              Text(
                                'The Automotive Engineering Department is as old as the institution, when it started as Technical Secondary School in 1967. The department then trained students in the Basic Engineering Trades in which Motor Vehicle Mechanics was offered as a subject ',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'leading to the award of O-level certificates i.e. EACE from 1967 to 1976 and KCE between 1977 and 1987. Many students opted for the subject and passed in the twenty years (i.e. between 1967 and 1987) and many are well placed in society today',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'In 1986, the Kisumu Technical High school became Kisumu Technical Training Institute. With the change in status it was also necessary to re-organize and the dept started offering Craft Cert in Motor Vehicle Mechanics. This continued up to 1996.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'The institute was elevated to polytechnic status in 1996 and given a mandate to start offering Diploma courses. The dept thus upgraded and started offering Diploma in Automotive Eng. in addition to the earlier sanctioned Craft Cert in Motor Vehicle Mechanics.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                ' Between 1996 and 2013 the department was also offering the Technical Education Project (TEP) program for both Craft Certificate in Motor Vehicle Mechanics and Diploma in Automotive Engineering courses.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'In the TEP program, courses ran for a specific duration ending with a national examination administered by the KNEC e.g. Craft Cert in Motor Vehicle Mechanics and Diploma in Automotive Engineering used to take two and three years respectively.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'The courses in the department are offered on the basis of the broad objectives of education in Kenya.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: OpenContainerWrapper(
                            closedBuilder: (context, openContainer) =>
                                DetailsCard(
                                  openContainer: openContainer,
                                  title: 'APPLIED SCIENCE DEPARTMENT',
                                ),
                            title: 'APPLIED SCIENCE DEPARTMENT',
                            data: [
                              CourseCard(
                                  'Diploma in Pharmaceutical Technology(Pharmacy)\n',
                                  "KCSE Mean Grade C; C in Maths and Physics\n",
                                  "January & Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  'Diploma in Medical Laboratory Sciences\n',
                                  "KCSE Mean Grade C; C in Maths and Physics\n",
                                  "May & Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Environmental Science and Technology\n",
                                  "KCSE Mean Grade C-\n",
                                  "May & Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Diploma in Analytical Chemistry\n",
                                  "KCSE Mean Grade C-\n",
                                  "May & Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Diploma in Analytical Biology\n",
                                  "KCSE Mean Grade C-\n",
                                  "May & Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Diploma in Petroleum and Geosciences\n",
                                  "KCSE Mean Grade C- OR a relevant KNEC craft certificate who join at Module II\n",
                                  "Jan & Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Diploma in Food Science And Processing Technology\n",
                                  "KCSE Mean Grade C- OR a relevant KNEC craft certificate who join at Module II\n",
                                  "Jan & Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Diploma in Sustainable Agriculture And Rural Development\n",
                                  "KCSE Mean Grade C- OR a relevant KNEC craft certificate who join at Module II\n",
                                  "Jan & Sept \nExam: KNEC"),
                              SizedBox(height: 10),
                              CourseCard(
                                  "Craft Certificate in Science Laboratory Technology\n",
                                  "KCSE Mean Grade D Plain with D- (minus) in mathematics/physics/chemistry\n",
                                  "Jan & Sept \nExam: KNEC"),
                              SizedBox(height: 10),
                            ],
                            careerG: [
                              Text(
                                'The Applied Sciences department in Kisumu National Polytechnic works with internal and external collaborators such as industry and consumer groups to deliver quality education while providing a favorable environment for staff to thrive.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'The courses are heavily lab-based with a focus on experimentation and methodical analysis of findings designed to give an excellent platform for future careers in preferred professions either in academic research or in the commercial sphere.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'The educational philosophy of the department centers on experience-based learning or learning by doing. The programs include fieldwork, industry visits and internships outside the polytechnic.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'Practicality and employability are at the forefront of what the Applied Sciences department does; its students bring together scientific techniques with social, ethical and professional dimensions of science.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'State-of-the–art laboratory facilities support teaching and applied research. The scientific skills lecturers teach are in high demand in industries and its courses carry professional accreditation from leading bodies (K M T T B, Pharmacy and Poisons Board).',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'The Applied Sciences department is business focused, seeking to develop sustainable partnerships with industry. Businesses also access its excellent and ready-for-the-lab students through placements and graduate recruitment.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'The department has grown progressively – in terms of the number of courses, student population and staffing – since its establishment. It currently has a student population of over 500 and offers six courses, five at the diploma level and one at certificate level.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Center(
                                child: Text(
                                  'Training highly qualified technicians able to handle the challenges of modern research and practice in science is our Mission',
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: OpenContainerWrapper(
                            closedBuilder: (context, openContainer) =>
                                DetailsCard(
                                  openContainer: openContainer,
                                  title: 'INSTITUTIONAL MANAGEMENT DEPARTMENT',
                                ),
                            title: 'INSTITUTIONAL MANAGEMENT DEPARTMENT',
                            data: [
                              CourseCard(
                                  "Diploma in Food and Beverage Management\n",
                                  "KCSE Mean Grade C-\n",
                                  "May & Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Diploma in House Keeping and Laundry Management\n",
                                  "KCSE Mean Grade C-\n",
                                  "May & Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Diploma in Nutrition and Dietetics\n",
                                  "KCSE Mean Grade C-\n",
                                  "May & Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Diploma in Food and Beverage Management\n",
                                  "KCSE Mean Grade C-\n",
                                  "May & Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Craft Certificate in Food and Beverage, Service and Sales\n",
                                  "KCSE Mean Grade D+\n",
                                  "May & Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Food and Beverage Production, Sales\n",
                                  "KCSE Mean Grade D+\n",
                                  "September Intake only \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "CERTIFICATE IN Hotel and Catering Supervision (ICM)\n",
                                  "KCSE Mean Grade D\n",
                                  "3 terms Jan/May/Sept \nExam: ICM"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Diploma in Food Preparation (City & Guilds)\n",
                                  "KCSE Mean Grade C-\n",
                                  "3 terms Jan/May/Sept \nExam: City & Guilds"),
                              SizedBox(height: 10),
                            ],
                            careerG: [
                              Text(
                                'The Hotel and Hospitality Industry is one of the fastest growing sectors of the economy in Kenya, Africa and the world over. The food and beverage managers run hotels, restaurant facilities, hospitality sections of schools and other forms of hospitality enterprises.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'The professionally trained cooks and waiters also provide excellent services in various sections of the hospitality and tourism sector.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'Objectives\n\nTo equip trainees with skills and knowledge relevant for the management of commercial and welfare food and beverage outlets efficiently.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'To train kitchen and restaurant staff who are capable of producing and serving different types of food products for the local and international market.\nTo enable trainees plan, select and organize kitchen and restaurant equipment as required in different outlets.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: OpenContainerWrapper(
                            closedBuilder: (context, openContainer) =>
                                DetailsCard(
                                  openContainer: openContainer,
                                  title:
                                  'COMPUTER SCIENCE AND MATHEMATICS DEPARTMENT',
                                ),
                            title:
                            'COMPUTER SCIENCE AND MATHEMATICS  DEPARTMENT',
                            data: [
                              CourseCard(
                                  "Diploma in Information Technology\n",
                                  "KCSE Mean Grade C-\n",
                                  "May & Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Diploma in Computer Studies\n",
                                  "KCSE Mean Grade C-\n",
                                  "May & Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Diploma in Information Communication Technology\n",
                                  "KCSE Mean Grade C-\n",
                                  "January & Sept Module II and III \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Certificate in Information Communication Technology\n",
                                  "KCSE Mean Grade D+\n",
                                  "May/Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Computer Applications to Engineering Diploma Students\n",
                                  "KCSE Mean Grade C-\n",
                                  "May/Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Advance Computer repair & Maintenance\n",
                                  "Basic Computer repair & Maintenance",
                                  "2 Terms Jan/May/Sept \nExam: TKNP"),
                              SizedBox(height: 8),
                              CourseCard(
                                'Diploma in Electronic Technology\n',
                                'Cert in Electronic Technology\n',
                                '1 yr City & Guilds',
                              ),
                              SizedBox(height: 10),
                              CourseCard(
                                'CISCO IT Essentials\n',
                                'KCSE mean grade D+ (Plus)\n',
                                '3 Months Jan/May/sep \nExam: CISCO',
                              ),
                              SizedBox(height: 10),
                            ],
                            careerG: [
                              Text(
                                "The department of Computer Studies and Mathematics has been mandated to effectively conceive, develop, implement, utilize and manage appropriate information communication technology solution systems in order to provide integrated quality",
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                "services to Kisumu Polytechnic in line with vision, mission, core values and objectives besides offering teaching and learning services.",
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'Every year graduates of our diploma and certificate programmes find employment in various government departments, parastatals, disciplines forces like the armed forces and police, NGOs, FBOs, CBOs, private sectors',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'Many others opt for self employment in most parts of the country as \nProgrammers, System Analysts, System Administrators, Computer Technicians, Tutors and Teachers, Network Administrators, Web Designers etc',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'Welcome to Computer Science and Mathematics Department',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: OpenContainerWrapper(
                            closedBuilder: (context, openContainer) =>
                                DetailsCard(
                                  openContainer: openContainer,
                                  title:
                                  'BUILDING AND CIVIL ENGINEERING DEPARTMENT',
                                ),
                            title: 'BUILDING AND CIVIL ENGINEERING DEPARTMENT',
                            data: [
                              CourseCard(
                                  "Diploma in Building Technology\n",
                                  "KCSE Mean Grade C-\n",
                                  "May & Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Diploma in Architecture\n",
                                  "KCSE Mean Grade C-\n",
                                  "May & Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Diploma in Civil Engineering\n",
                                  "KCSE Mean Grade C-\n",
                                  "May & Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Masonry\n",
                                  "KCSE mean grade D+ (Plus). D (Plain) in Maths, Physics & English\n",
                                  "May Intake Only \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Plumbing (TEP)\n",
                                  "KCSE mean grade D+ (Plus). D (Plain) in Maths, Physics & English\n",
                                  "May Intake Only \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Road Construction\n",
                                  "KCSE mean grade D+ (Plus). D (Plain) in Maths, Physics & English\n",
                                  "May Intake Only \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Certificate in Architecture\n",
                                  "KCSE mean grade D (Plain)\n",
                                  "May Intake Only \nExam: KISUMU POLY"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Construction Technician part I, II & III (TIVET)\n",
                                  "KCSE mean grade D (Plain)\n",
                                  "May Intake Only \nExam: KISUMU POLY"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Certificate in Civil Engineering\n",
                                  "KCSE mean grade D (Plain)\n",
                                  "May Intake Only \nExam: KISUMU POLY"),
                              SizedBox(height: 8),
                            ],
                            careerG: [
                              Text(
                                'The Building and Civil Engineering department started operations in 1996 with Wenceslaus Were as Head of Department, eight students, two full-time lecturers in the employ of TSC and several part time lecturers.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'The department has grown gradually with the introduction of new courses, 826 students, 18 members of staff of whom two are council employees and two are qualified technicians.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'The female student population has risen from two students in 1999 to 142 today with most pursuing the Diploma in Civil Engineering. The student’s performance has been exemplary and they have maintained a pass rate of 76 per cent.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'Our Partners\nOther than Crown Paints Ltd, we also work with the National industrial Training Authority (NITA) that has been sponsoring female students from across the country for the Diploma in Civil Engineering course over the last 10 years.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'The Ministry of Roads and Public Works through the Regional Materials office helps the department’s students conduct laboratory works under the guidance of qualified staff who oversee laboratory testing for civil engineering materials',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'Sony Sugar Company also works with the department and has donated engineering textbooks on several occasions. The company also awards the best female student in the department each year.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: OpenContainerWrapper(
                            closedBuilder: (context, openContainer) =>
                                DetailsCard(
                                  openContainer: openContainer,
                                  title: 'BUSINESS STUDIES DEPARTMENT',
                                ),
                            title: 'BUSINESS STUDIES DEPARTMENT',
                            data: [
                              CourseCard(
                                  "Diploma in Accountancy\n",
                                  "KCSE Mean Grade C-\n",
                                  "May & Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Diploma in Business Management\n",
                                  "KCSE Mean Grade C-\n",
                                  "May & Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Diploma in Human Resource Management\n",
                                  "KCSE Mean Grade C-\n",
                                  "May & Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Diploma in Sales and Marketing\n",
                                  "KCSE Mean Grade C-\n",
                                  "May & Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Diploma in Secretarial Studies\n",
                                  "KCSE Mean Grade C-\n",
                                  "May & Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Supply Chain Management Module (TIVET)\n",
                                  "KCSE Mean Grade C- (Minus). OR a relevant KNEC Craft Certificate\n",
                                  "Jan & Sept. (Regular) May (Part time) \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Transport Management\n",
                                  "KCSE mean grade D (Plain). D (Plain) in Maths & English\n",
                                  "Jan & Sept. (Regular) May (Part time) \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Certified Securities and Investment Analyst (KASNEB)\n",
                                  "KCSE mean grade D+ (Plus). D+ (Plus) in Maths & English\n",
                                  "6 months Jan/May/Sept \nExam: KASNEB"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Credit Management Technician (KASNEB)\n",
                                  "KCSE mean grade D+ (Plus)\n",
                                  "6 months Jan/May/Sept \nExam: KASNEB"),
                              SizedBox(height: 8),
                            ],
                            careerG: [
                              Center(
                                child: Text(
                                  'Business studies is a department with student population of 800 on both regular and part time courses',
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                              Text(
                                'The dept train cert courses, diplomas, higher diploma in Secretarial Studies and Human Resource Management and launched 1 CBET course in Accountancy. The dept also offers professional courses in Accounting by kasneb and Supply Chain Management by KISM',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'It has 42 lecturers who are highly qualified, hardworking, experienced in various fields and very committed to give the best to the learners.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'The team of lecturers work tirelessly to ensure that the polytechnic realizes its Vision and Mission by producing qualified and skilled graduates who are competitive in the labour market.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'The department has embraced ISO standards and works hard for continual improvement to ensure that the institution maintains the certification',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Center(
                                child: Text(
                                  'We thank God for the for far He has bought us and thank the Council and the entire management of The Kisumu National Polytechnic for continued support to the department',
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: OpenContainerWrapper(
                            closedBuilder: (context, openContainer) =>
                                DetailsCard(
                                  openContainer: openContainer,
                                  title: 'LIBERAL STUDIES DEPARTMENT',
                                ),
                            title: 'LIBERAL STUDIES DEPARTMENT',
                            data: [
                              CourseCard(
                                  "Diploma in Information Studies\n",
                                  "KCSE mean grade C- (Plus)\n",
                                  "May/Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Social Work and Community Development\n",
                                  "KCSE mean grade C- (Plus)\n",
                                  "May/Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Diploma In Counseling \n",
                                  "KCSE mean grade C- (Plus)\n",
                                  "May/Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Diploma In Social work and Community Development\n",
                                  "KCSE mean grade C- (Plus)\n",
                                  "May/Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Craft Social Community Development\n",
                                  "KCSE mean grade D+ (Plus)\n",
                                  "May/Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                            ],
                            careerG: [
                              Text(
                                'The Department of Liberal Studies was established in 1986 when the then Kisumu Technical School turned into a middle level College in 1986. ',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'It is a service department offering services in Communication skills, English, Social studies and Life skills to technical and business departments.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'The department introduced the Social Development course in the year 2005. The course was being offered at Craft level. In 2008, it opened its doors to Diploma in Social Work and Community Development course. The Diploma courses are offered at module I, II and III levels',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'The department has continued to churn out highly qualified and competent graduates as social and community development workers, Counselors and Library and Information professionals.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'The department is equipped with well-trained committed focused and disciplined staff who will stop at nothing to ensure that the national polytechnic realizes its mission and vision.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'Since the ISO Certification of the Kisumu National Polytechnic, the department has strived to maintain the ISO Standards',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: OpenContainerWrapper(
                            closedBuilder: (context, openContainer) =>
                                DetailsCard(
                                  openContainer: openContainer,
                                  title: 'ENTREPRENEURSHIP STUDIES DEPARTMENT',
                                ),
                            title: 'ENTREPRENEURSHIP STUDIES DEPARTMENT',
                            data: [
                              CourseCard(
                                  'Diploma In Cooperative Management\n',
                                  "KCSE Mean Grade C-\n",
                                  "May and Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  'Diploma In Entrepreneurship Development \n',
                                  "KCSE Mean Grade C-\n",
                                  "May and Sept \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  'Diploma in Project Management\n',
                                  "KCSE Mean Grade C-\n",
                                  "January & Sept Module II and III \nExam: KNEC"),
                              SizedBox(height: 8),
                              CourseCard(
                                  "Certificate in Cooperative Management\n",
                                  "KCSE Mean grade of D\n",
                                  "May/Sept \nExam: KNEC"),
                            ],
                            careerG: [
                              Text(
                                'The Future is here.\nWelcome to ENTREPRENEURSHIP',
                                style: Theme.of(context).textTheme.headline6,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String subTitle1;

  const CourseCard(this.title, this.subTitle, this.subTitle1, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Text(title),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(subTitle, style: theme.bodyText1),
              Text(subTitle1, style: theme.bodyText1),
            ],
          ),
        ),
      ),
    );
  }
}
