import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'create_workout_profile_new_widget.dart' show CreateworkoutProfileNewWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateworkoutProfileNewModel
    extends FlutterFlowModel<CreateworkoutProfileNewWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for workoutName widget.
  FocusNode? workoutNameFocusNode;
  TextEditingController? workoutNameController;
  String? Function(BuildContext, String?)? workoutNameControllerValidator;
  // State field(s) for workoutReps widget.
  FocusNode? workoutRepsFocusNode;
  TextEditingController? workoutRepsController;
  String? Function(BuildContext, String?)? workoutRepsControllerValidator;
  // State field(s) for workoutSets widget.
  FocusNode? workoutSetsFocusNode;
  TextEditingController? workoutSetsController;
  String? Function(BuildContext, String?)? workoutSetsControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    workoutNameFocusNode?.dispose();
    workoutNameController?.dispose();

    workoutRepsFocusNode?.dispose();
    workoutRepsController?.dispose();

    workoutSetsFocusNode?.dispose();
    workoutSetsController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
