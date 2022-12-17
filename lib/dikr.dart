
class Dikr {
  String ? section;
  int? count;
  String ? content;
  Dikr ({this.section,this.count,this.content});
  Dikr.fromJson(Map<String,dynamic>json){
    section=json["section"];
    count=json["count"];
    content=json["content"];
  }

}