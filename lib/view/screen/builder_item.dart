
import 'package:flutter/material.dart';
import 'package:news_api_52/model/articles_model.dart';

import '../widgets/default_text.dart';

class BuilderIem extends StatelessWidget {
  Articles data;
   BuilderIem({super.key,required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[200],
        // image: DecorationImage(
        //     image: data["urlToImage"]!= null ? NetworkImage(data["urlToImage"]):
        //           NetworkImage("https://nbcsports.brightspotcdn.com/dims4/default/119e5cf/2147483647/strip/true/crop/5008x2817+0+0/resize/1440x810!/quality/90/?url=https%3A%2F%2Fnbc-sports-production-nbc-sports.s3.us-east-1.amazonaws.com%2Fbrightspot%2F4b%2Fc3%2Fb0bd6fe84e2091f1426261643411%2Fhttps-api-imagn.com%2Frest%2Fdownload%2FimageID%3D21390600")
        // ),
      ),
      child:
      ListTile(
        leading: data.urlToImage !=null ? Image.network("${data.urlToImage}"): CircularProgressIndicator(),
        title: Text(data.title ?? " null"),
        subtitle: Text(data.description ??" no Data "),

        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //  children: [
        //    Text("hi"),
        //    SizedBox(height: 10,),
        //    Text("oo")
        //  ],

      ),
    );
  }
}


Widget ListItem (List listData){
  return  ListView.separated(
      separatorBuilder: (context,index)=> SizedBox(height: 20,),
      itemCount: listData.length,
    itemBuilder: (context,index){
    return  BuilderIem(data: listData[index],);
    },

  );
}