
import 'package:g60_app_flutter_final/app/data/models/floors.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    //_initialized();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }


  //instancias
//final _customerRepository = Get.find<CustomerRepository>();

//final _localStorage = Get.find<LocalStorage>();

//ResponseAuthModel _responseAuthModel= ResponseAuthModel();


  /*RxString name = RxString("");
  RxString address = RxString("");
  RxInt isSelectedIndex = RxInt(0);
  RxList<ResponseHouseModel> houses = RxList<ResponseHouseModel>([]);*/

  //Functions

/*  _initialized() async {
    _responseAuthModel = await _localStorage.getAuth();
    _loadInformation();
   // _loadHouses();
  }*/
/*
  selectedIndex(int index) {
    isSelectedIndex.value = index;
  }

  _loadInformation() async {
    try {
      final response = await _customerRepository.getInformation(
        token: _responseAuthModel.requestToken,
        idUser: _responseAuthModel.idUser,
      );

      name.value = "${response.name}";
      address.value = "${response.address}";
    } catch (e) {
      print("_loadInformation ---> $e");
    }
  }
*/
  /*_loadHouses() async {
    try {
      houses.value = await _houseRepository.getAllHouses(
        token: _responseAuthModel.requestToken,
        page: "1",
      );
    } catch (e) {}
  }*/


  List<Floors> loadPlantTree(){
     return Floors.typesFloors;
  }


  /*Floors getPlantTree(int index){
     return Floors.typesFloors.first((element) => false);
  }*/
}
