import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

final firestore = FirebaseFirestore.instance;
final questionPaperRef = firestore.collection("QuestionPapers");

DocumentReference questionRef({
  required String paperId,
  required String questionId,
}) =>
    questionPaperRef.doc(paperId).collection("questions").doc(questionId);

Reference get firebaseStorage => FirebaseStorage.instance.ref();
