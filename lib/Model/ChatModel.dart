class ChatModel {
  String ?name;
  String ?icon;
  bool ?isgroup;
  String ?time;
  String ?currentMessage;
  String ?status;
  bool select=false;
  ChatModel({this.name, this.icon, this.isgroup, this.time, this.currentMessage,this.status, this.select=false});
}