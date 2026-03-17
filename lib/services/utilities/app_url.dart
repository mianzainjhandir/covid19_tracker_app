class AppUrl{

  // ✅ correct base
  static const String baseUrl = 'https://disease.sh/v3/covid-19/';

  // ✅ endpoints
  static const String worldStateApi = baseUrl + 'all';
  static const String countriesList = baseUrl + 'countries';

}