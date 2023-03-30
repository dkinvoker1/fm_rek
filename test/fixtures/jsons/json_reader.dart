import 'dart:io';

String jsonFixture(String name) =>
    File('test/fixtures/jsons/$name').readAsStringSync();
