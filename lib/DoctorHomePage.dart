import 'package:datatransfer/DoctorPageModule.dart';
import 'package:flutter/material.dart';

class DoctorHomePage extends StatelessWidget {
  DoctorHomePage({super.key});
  DoctorPageModule _doctorPageModule = DoctorPageModule();
  ParagraphModel _paragraphModel = ParagraphModel();
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: const Text("Doctors details"),
        ),
        floatingActionButton: FloatingActionButton.extended(
            onPressed: () {}, label: const Icon(Icons.add)),
        // floatingActionButton: FloatingActionButton.large(
        //   onPressed: () {},
        //   child: Icon(Icons.add),
        // ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: _doctorPageModule.doctorData.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return (ListTile(
                      title:
                          Text(_doctorPageModule.doctorData[index].doctorName),
                      subtitle: Text(_doctorPageModule.doctorData[index].feild),
                      trailing: Text(
                          _doctorPageModule.doctorData[index].hospitalName),
                    ));
                  },
                ),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Load more data")),
                ),
                const SizedBox(height: 20,),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _paragraphModel.paragraphList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: (Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(_paragraphModel.paragraphList[index].title),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                              _paragraphModel.paragraphList[index].description),
                        ],
                      )),
                    );
                  },
                )
              ],
            ),
          ),
        )));
  }
}
