import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:tulips/core/app_export.dart';
import 'package:tulips/widgets/custom_elevated_button.dart';
import 'package:tulips/widgets/custom_phone_number.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key})
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
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: SizedBox(
                  height: SizeUtils.height,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          height: 472    ,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              Opacity(
                                opacity: 0.43,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgGetpaidstock1,
                                  height: 472    ,
                                  width: 360    ,
                                  alignment: Alignment.center,
                                ),
                              ),
                              Opacity(
                                opacity: 0.3,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgLogo,
                                  height: 40    ,
                                  width: 47    ,
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.only(
                                    left: 16    ,
                                    top: 24    ,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 16    ,
                            right: 16    ,
                            bottom: 132    ,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 321    ,
                                margin: EdgeInsets.only(right: 7    ),
                                child: Text(
                                  "Step into a world of seamless elegance and effortless scheduling as you embark on a journey to pamper yourself with our beautician booking application.",
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.bodySmallBluegray900,
                                ),
                              ),
                              SizedBox(height: 52    ),
                              CustomElevatedButton(
                                text: "Next",
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          width: 284    ,
                          margin: EdgeInsets.only(
                            left: 16    ,
                            bottom: 289    ,
                          ),
                          child: Text(
                            "Where Beauty Meets Convenience – Your Next Appointment Awaits",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.only(right: 3    ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 13    ,
                            vertical: 53    ,
                          ),
                          decoration: AppDecoration.outlineBlack900.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL50,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 3    ),
                                child: Text(
                                  "Effortless Glam Starts Here",
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              SizedBox(height: 8    ),
                              Container(
                                width: 308    ,
                                margin: EdgeInsets.only(
                                  left: 3    ,
                                  right: 19    ,
                                ),
                                child: Text(
                                  "Log in with your email, authenticate with the golden key (OTP), and enter a realm where beauty meets simplicity",
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.bodySmallBluegray900,
                                ),
                              ),
                              SizedBox(height: 51    ),
                              Padding(
                                padding: EdgeInsets.only(left: 3    ),
                                child: CustomPhoneNumber(
                                  country: selectedCountry,
                                  controller: phoneNumberController,
                                  onTap: (Country value) {
                                    selectedCountry = value;
                                  },
                                ),
                              ),
                              SizedBox(height: 51    ),
                              CustomElevatedButton(
                                text: "Get the code",
                                margin: EdgeInsets.only(left: 3    ),
                                onPressed: (){
                                  Navigator.pushNamed(context, AppRoutes.otpScreen);
                                },
                              ),
                              SizedBox(height: 51    ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(bottom: 768    ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 17    ,
                            vertical: 6    ,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgUser,
                                height: 8    ,
                                width: 30    ,
                                margin: EdgeInsets.symmetric(vertical: 4    ),
                              ),
                              Spacer(),
                              CustomImageView(
                                imagePath: ImageConstant.imgWifiBlack900,
                                height: 18.adaptSize,
                                width: 18.adaptSize,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgSettingsBlack900,
                                height: 18.adaptSize,
                                width: 18.adaptSize,
                                margin: EdgeInsets.only(left: 3    ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgBatteryBlack900,
                                height: 18.adaptSize,
                                width: 18.adaptSize,
                                margin: EdgeInsets.only(left: 3    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
