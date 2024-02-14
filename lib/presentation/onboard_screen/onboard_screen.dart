import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:tulips/core/app_export.dart';
import 'package:tulips/widgets/custom_elevated_button.dart';
import 'package:tulips/widgets/custom_phone_number.dart';

class OnboardScreen extends StatelessWidget {
  OnboardScreen({Key? key})
      : super(
          key: key,
        );

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91');

  TextEditingController phoneNumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 668    ,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Opacity(
                          opacity: 0.43,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgGetpaidstock1,
                            height: 472    ,
                            width: 360    ,
                            alignment: Alignment.topCenter,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16    ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Opacity(
                                  opacity: 0.3,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgLogo,
                                    height: 40    ,
                                    width: 47    ,
                                  ),
                                ),
                                SizedBox(height: 345    ),
                                Container(
                                  width: 284    ,
                                  margin: EdgeInsets.only(right: 43    ),
                                  child: Text(
                                    "Where Beauty Meets Convenience – Your Next Appointment Awaits",
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                                SizedBox(height: 9    ),
                                Container(
                                  width: 321    ,
                                  margin: EdgeInsets.only(right: 7    ),
                                  child: Text(
                                    "Step into a world of seamless elegance and effortless scheduling as you embark on a journey to pamper yourself with our beautician booking application.",
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        CustomTextStyles.bodySmallBluegray900,
                                  ),
                                ),
                                SizedBox(height: 52    ),
                                CustomElevatedButton(
                                  text: "Next",
                                  onPressed: (){
                                    Navigator.pushNamed(context, AppRoutes.signInScreen);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
