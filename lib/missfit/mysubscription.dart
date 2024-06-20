import 'package:flutter/material.dart';

class MySubscription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'My Subscription',
            style: TextStyle(
              color: Color(0xFF1E293B),
              fontSize: 18,
              fontFamily: 'Kanit',
              fontWeight: FontWeight.w500,
              height: 1.07, // Adjusted height to fix text height
            ),
          ),
          toolbarHeight: 97.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _SubscriptionDetailsContainer(),
              SizedBox(height: 20),
              _BillingInfoContainer(),
              SizedBox(height: 20),
              _PaymentDetailsContainer(), // Added new container here
              // Add more widgets here as needed
            ],
          ),
        ),
      ),
    );
  }
}

class _SubscriptionDetailsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: 380,
        height: 345,
        padding: const EdgeInsets.all(20),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          clipBehavior: Clip.none, // Allows the icons to overflow the container
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 56), // Placeholder height for icons
                _SubscriptionInfo(),
                SizedBox(height: 20),
                _SubscriptionOptions(),
              ],
            ),
            Positioned(
              top: -4, // Adjust position as needed
              right: -38,
              child: _NewIcon(),
            ),
            Positioned(
              top: -44, // Adjust position as needed
              right: -39,
              child: _SubscriptionIcon(),
            ),
          ],
        ),
      ),
    );
  }
}

class _BillingInfoContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: 390,
        height: 314,
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 16),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Billing Information',
              style: TextStyle(
                color: Color(0xFF334155),
                fontSize: 16,
                fontFamily: 'Archivo',
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 12),
            Container(
              width: 360,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: Color(0xFFE5E7EB),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Tom Hank',
              style: TextStyle(
                color: Color(0xFF66758C),
                fontSize: 16,
                fontFamily: 'Archivo',
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 280,
              child: Text(
                'Netstal, 1920, 10A Thornidge Street, Glarus Flat - 13B, House - 23',
                style: TextStyle(
                  color: Color(0xFF66758C),
                  fontSize: 16,
                  fontFamily: 'Archivo',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'tommy1265@gmail.com',
              style: TextStyle(
                color: Color(0xFF66758C),
                fontSize: 16,
                fontFamily: 'Archivo',
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '+243 555-0108',
              style: TextStyle(
                color: Color(0xFF66758C),
                fontSize: 16,
                fontFamily: 'Archivo',
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 28),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 40,
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 17),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlutterLogo(size: 20),
                        const SizedBox(width: 11),
                        Flexible(
                          child: Text(
                            'History',
                            style: TextStyle(
                              color: Color(0xFFFF4343),
                              fontSize: 14,
                              fontFamily: 'Archivo',
                              fontWeight: FontWeight.w600,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 40,
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 17),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlutterLogo(size: 20),
                        const SizedBox(width: 6),
                        Flexible(
                          child: Text(
                            'Modify Info',
                            style: TextStyle(
                              color: Color(0xFFFF4343),
                              fontSize: 14,
                              fontFamily: 'Archivo',
                              fontWeight: FontWeight.w600,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _PaymentDetailsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: 370,
        height: 145,
        padding: const EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
          bottom: 24,
        ),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 333,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 135,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Text(
                              'Payment Details',
                              style: TextStyle(
                                color: Color(0xFF334155),
                                fontSize: 16,
                                fontFamily: 'Archivo',
                                fontWeight: FontWeight.w600,
                                height: 0.09,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 25),
                        Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(),
                                child: Image.asset('assets/missfit/pen.png'), // Use your asset image here
                              ),
                              const SizedBox(width: 6),
                              Text(
                                'Change',
                                style: TextStyle(
                                  color: Color(0xFFFF4343),
                                  fontSize: 14,
                                  fontFamily: 'Archivo',
                                  fontWeight: FontWeight.w600,
                                  height: 0.10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    width: 365,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFE5E7EB),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 14),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF3F4F6),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 42,
                          height: 20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/missfit/strip.png'), // Replace with your asset image path
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 52,
                          child: Text(
                            'Stripe',
                            style: TextStyle(
                              color: Color(0xFF66758C),
                              fontSize: 16,
                              fontFamily: 'Archivo',
                              fontWeight: FontWeight.w400,
                              height: 0.08,
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Text(
                          '•••• •••• •••• 87652',
                          style: TextStyle(
                            color: Color(0xFF66758C),
                            fontSize: 16,
                            fontFamily: 'Archivo',
                            fontWeight: FontWeight.w400,
                            height: 0.09,
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

class _SubscriptionIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        color: Color(0xFFFFCBD0),
        shape: BoxShape.circle,
      ),
    );
  }
}

class _NewIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: ShapeDecoration(
        color: Color(0xFFFB9694),
        shape: OvalBorder(),
      ),
    );
  }
}

class _SubscriptionInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 56,
            height: 56,
            padding: const EdgeInsets.all(14),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Color(0xFFF9FAFB),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            child: Container(
              width: 28,
              height: 28,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Image.asset(
                'assets/missfit/img_9.png', // Replace with your asset image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 12), // Space between image and text
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Premium Plan',
                style: TextStyle(
                  color: Color(0xFF334155),
                  fontSize: 20,
                  fontFamily: 'Archivo',
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 6),
              Text(
                'Monthly Subscription',
                style: TextStyle(
                  color: Color(0xFF66758C),
                  fontSize: 14,
                  fontFamily: 'Archivo',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SubscriptionOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _OptionItem(title: 'Locket Rental', value: 'Yes'),
        _OptionItem(title: 'Duration', value: '06 months'),
        _OptionItem(title: 'Start Date', value: '09-05-24'),
        _OptionItem(title: 'Expire Date', value: '09-11-25', valueColor: Color(0xFFE88E32)),
        SizedBox(height: 20),
        _RenewSubscriptionButton(),
      ],
    );
  }
}

class _OptionItem extends StatelessWidget {
  final String title;
  final String value;
  final Color valueColor;

  const _OptionItem({
    Key? key,
    required this.title,
    required this.value,
    this.valueColor = const Color(0xFF334155),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Color(0xFF66758C),
            fontSize: 16,
            fontFamily: 'Archivo',
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          value,
          textAlign: TextAlign.right,
          style: TextStyle(
            color: valueColor,
            fontSize: 16,
            fontFamily: 'Archivo',
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class _RenewSubscriptionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 44,
      decoration: BoxDecoration(
        color: Color(0xFFFF4343),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          'Renew Subscription',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: 'Archivo',
            fontWeight: FontWeight.w600,
            height: 1.2, // Adjusted height
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}

