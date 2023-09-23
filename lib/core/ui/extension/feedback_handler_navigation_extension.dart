import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:partners/core/network/response_handler/auth_failure.dart';
import 'package:partners/core/routing/routes.gr.dart';
import 'package:partners/core/shared/failure.dart';

extension FeedbackHandlerNavigation on BuildContext {
  void handleFailure(FailureResponse? failureResponse) {
    if (failureResponse is ServerFailure) {
      navigateTo(const FeedbackServerFailureRoute());
    }
    if (failureResponse is AuthFailure) {
      replaceRoute(const FeedbackAuthFailureRoute());
    }
    if (failureResponse is NetworkConnectionFailure) {
      navigateTo(const FeedbackNetworkConnectionFailureRoute());
    }
    if (failureResponse is Error) {
      navigateTo(const FeedbackGenericFailureRoute());
    }
  }
}