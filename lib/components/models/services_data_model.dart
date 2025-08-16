// components/models/services_data_model.dart
import 'package:saifalmirgab/components/assetsimage.dart';
import 'package:saifalmirgab/components/data.dart';

class ServicesDataModel {
  final DataApp data = DataApp();

  final List<Map<String, dynamic>> servicesdata = [
    {
      'image': Assets.assetsImages3ndbab2zaz,
      'text': DataApp().data['Reception']['en'],
    },
    {
      'image': Assets.assetsImagesPolicecar,
      'text': DataApp().data['Protocol']['en'],
    },
    {
      'image': Assets.assetsImagesM3raglbyglbya,
      'text': DataApp().data['Corporate']['en'],
    },
    {
      'image': Assets.assetsImagesBdahro,
      'text': DataApp().data['Security']['en'],
    },
    {
      'image': Assets.assetsImagesBodyGuardServices,
      'text': DataApp().data['Body']['en'],
    },
    {
      'image': Assets.assetsImagesCloseProtectionServices,
      'text': DataApp().data['Close']['en'],
    },
  ];
}
