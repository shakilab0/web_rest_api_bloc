
import 'package:http/http.dart' as http;
class WebService{

  callprofileApi() async {
    var url = Uri.parse('https://api-maker-4742c-default-rtdb.asia-southeast1.firebasedatabase.app/-NOsQd6Kn8t9PLRDO5ND.json');
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    if(response.statusCode == 200){
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
      return response;
    }
    return null;

  }
}