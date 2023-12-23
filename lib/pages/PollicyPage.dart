import 'package:autoprocfinal/pages/SettingPage.dart';
import 'package:flutter/material.dart';

class PolicyPage extends StatelessWidget {
  const PolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Policies"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 17.0, right: 17),
                child: RichText(
                    text: TextSpan(
                        text: '1- Privacy Policy:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16),
                        children: [
                      TextSpan(
                        text:
                            ' This policy outlines how the app collects, uses, and protects user data. It typically covers the type of information collected, how its used, and what measures are taken to ensure user privacy.',
                        style: TextStyle(
                   fontSize: 12.5
                        ),
                      ),
                    ])),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17.0, right: 17),
                child: RichText(
                    text: TextSpan(
                        text: '2- Terms of Service',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16),
                        children: [
                      TextSpan(
                        text:
                            ' These are the rules and regulations that users must agree to when using the app. They typically cover acceptable use, prohibited activities, and user responsibilities.',
                        style: TextStyle(
                           fontSize: 12.5
                        ),
                      ),
                    ])),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17.0, right: 17),
                child: RichText(
                    text: TextSpan(
                        text: '3- Refund and Return Policy:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16),
                        children: [
                      TextSpan(
                        text:
                            'This policy details the process for returning or requesting refunds for purchased car accessories. It typically covers conditions for returns, warranty information, and the procedure for making a return or claiming a refund.',
                        style: TextStyle(
                           fontSize: 12.5
                        ),
                      ),
                    ])),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17.0, right: 17),
                child: RichText(
                    text: TextSpan(
                        text: '4- Shipping and Delivery Policy:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16),
                        children: [
                      TextSpan(
                        text:
                            'This policy provides information about the apps shipping and delivery procedures. It typically covers shipping methods, delivery times, and any associated costs.',
                        style: TextStyle(
                           fontSize: 12.5
                        ),
                      ),
                    ])),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17.0, right: 17),
                child: RichText(
                    text: TextSpan(
                        text: '5- Payment and Billing Policy',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16),
                        children: [
                      TextSpan(
                        text:
                            ': This policy explains how payments are processed within the app. It often includes details about accepted payment methods, billing cycles, and payment security measures.',
                        style: TextStyle(
                         fontSize: 12.5
                        ),
                      ),
                    ])),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17.0, right: 17),
                child: RichText(
                    text: TextSpan(
                        text: '6- User Review and Comment Policy:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16),
                        children: [
                      TextSpan(
                        text:
                            ' This outlines guidelines for users leaving reviews and comments on the app, including rules against offensive or inappropriate content.',
                        style: TextStyle(
                           fontSize: 12.5
                        ),
                      ),
                    ])),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17.0, right: 17),
                child: RichText(
                    text: TextSpan(
                        text: '7- Safety and Installation Guidelines:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16),
                        children: [
                      TextSpan(
                        text:
                            'If the app offers products that require installation, this policy provides safety guidelines and instructions for installation. It may also include disclaimers about any potential risks involved.',
                        style: TextStyle(
                         fontSize: 12.5
                        ),
                      ),
                    ])),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17.0, right: 17),
                child: RichText(
                    text: TextSpan(
                        text: '8- Copyright and Intellectual Property Policy:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16),
                        children: [
                      TextSpan(
                        text:
                            'This policy informs users about the intellectual property rights of the app and its content. It typically covers copyright, trademarks, and the acceptable use of the apps materials.',
                        style: TextStyle(
                           fontSize: 12.5
                        ),
                      ),
                    ])),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17.0, right: 17),
                child: RichText(
                    text: TextSpan(
                        text: '9- Dispute Resolution and Arbitration:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16),
                        children: [
                      TextSpan(
                        text:
                            'This policy outlines the procedure for resolving disputes between users and the app, often including provisions for arbitration or mediation..',
                        style: TextStyle(
                          fontSize: 12.5
                        ),
                      ),
                    ])),
              ),
              SizedBox(height: 6,),
              Padding(
                padding: const EdgeInsets.only(left: 17.0, right: 17),
                child: RichText(
                    text: TextSpan(
                        text: '10- Accessibility Policy:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16),
                        children: [
                      TextSpan(
                        text:
                            'TThis policy ensures that the app is accessible to users with disabilities and may include information on features for accessibility',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ])),
              ),
              Text(
                'Its important for users to read and understand these policies before using the app. Additionally, these policies should be regularly updated to reflect any changes in the apps operations or services.'
                'Regenerate',
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Container(
                child: TextButton(onPressed: (){
 
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingPage()));

                },child: Text("Close",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),),),
                width: 333,
                height: 43,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xff4537DD)),
              ),
              SizedBox(
                height: 12,
              )
            ],
          ),
        ),
      ),
    );
  }
}
