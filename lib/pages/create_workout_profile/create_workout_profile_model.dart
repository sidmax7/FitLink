import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'create_workout_profile_widget.dart' show CreateworkoutProfileWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateworkoutProfileModel extends FlutterFlowModel<CreateworkoutProfileWidget> {

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  FocusNode? workoutNameFocusNode;
  TextEditingController? workoutNameController;
  String? Function(BuildContext, String?)? workoutNameControllerValidator;
  FocusNode? workoutrepsFocusNode;
  TextEditingController? workoutrepsController;
  String? Function(BuildContext, String?)? workoutrepsControllerValidator;
  FocusNode? workoutSetsFocusNode;
  TextEditingController? workoutSetsController;
  String? Function(BuildContext, String?)? workoutSetsControllerValidator;


  void initState(BuildContext context) {}

  void dispose() {
    workoutNameFocusNode?.dispose();
    workoutNameController?.dispose();

    workoutrepsFocusNode?.dispose();
    workoutrepsController?.dispose();

    workoutSetsFocusNode?.dispose();
    workoutSetsController?.dispose();
  }

}
