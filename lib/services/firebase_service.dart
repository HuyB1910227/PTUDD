import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../models/auth_token.dart';

abstract class FirebaseService {
  String? _token;
  String? _userId;
  late final String? databaseUrl;

  FirebaseService([AuthToken? authToken]) 
    : _token = authToken?.token, 
    _userId = authToken?.userId {
      databaseUrl = dotenv.env['FIREBASE_URL'];
  }

  set authToken(AuthToken? authToken) {
    _token = authToken?.token;
    _userId = authToken?.userId;
  }

  @protected
  String? get token => _token;
  // String? get token => 'eyJhbGciOiJSUzI1NiIsImtpZCI6Ijg3YzFlN2Y4MDAzNGJiYzgxYjhmMmRiODM3OTIxZjRiZDI4N2YxZGYiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL3NlY3VyZXRva2VuLmdvb2dsZS5jb20vaHVrby10cmF2ZWwiLCJhdWQiOiJodWtvLXRyYXZlbCIsImF1dGhfdGltZSI6MTY4MDg1NzE1NCwidXNlcl9pZCI6IndPUkpZQzkzenFPb2NFRThJYnNRYWRKWFpCczIiLCJzdWIiOiJ3T1JKWUM5M3pxT29jRUU4SWJzUWFkSlhaQnMyIiwiaWF0IjoxNjgwODU3MTU0LCJleHAiOjE2ODA4NjA3NTQsImVtYWlsIjoiZ2lhaHV5ZG8xOEBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsImZpcmViYXNlIjp7ImlkZW50aXRpZXMiOnsiZW1haWwiOlsiZ2lhaHV5ZG8xOEBnbWFpbC5jb20iXX0sInNpZ25faW5fcHJvdmlkZXIiOiJwYXNzd29yZCJ9fQ.JT5LGdvxvI6eqqutcKSPLK0qw4Pl8ffUwaXfWeXYYdX5NchYRmtFefVCmglllRVrW5e__oe2kUadXOGJPZkcwmEAJSEvxgDCRybCIpgtzlLh0TvcGp6hXxxpR9gclKnOj1inPc6YB_JAoCdMcwv2vUbuDvM1SwIVCamoumGmuF0cLyq9RK6W7WWSw6iHOrRMd6Zq-OHsf5yvVykqjs0mV8GcaFKSSRlKId3yBVYqq8ArzOgD16gNRjeIX3_k5jneD8mVmfRXbVYLlbLV9LkeiiD2db4Y61-0EQilTksPVgcXPDy0nu7r_ndKNg_2QOp2HA38B6Ue-fKvb_e3v34Lww';

  @protected
  String? get userId => _userId;
}